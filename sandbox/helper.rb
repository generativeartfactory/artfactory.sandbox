###
#  todo:  upstream
#    add read_yml alias to read_yaml!!!


require 'cocos'
require 'pixelart'


## e.g. convert dimension (width x height) "24x24" or "24 x 24" to  [24,24]
def parse_dimension( str )
  str.split( %r{x}i ).map { |str| str.strip.to_i }
end

def parse_index( str )
  str.split( %r{/}i ).map { |str| str.strip.to_i }
end

def slugify( name )
  name.downcase.gsub( /[^a-z0-9 ()$_-]/ ) do |_|
     puts " !! WARN: asciify - found (and removing) non-ascii char >#{Regexp.last_match}<"
     ''  ## remove - use empty string
  end.gsub( ' ', '_')
end



class Layers   ##  rename to LayersCache or such - why? why not?

def initialize( basedir )
  @basedir = basedir

  @recs = read_csv( "#{basedir}/cache/layers.csv" )
  puts  "  #{@recs.size} record(s)"

  config = read_yaml( "#{basedir}/collection.yml" )
  puts
  puts "config:"
  ## pp config

  @width, @height = parse_dimension( config['format'] )
  puts
  puts "   width x height in px:  #{@width}x#{@height}"

  @layer_names = config['token']['layers']['names']
  puts
  puts "  layers.names:"
  pp @layer_names
end



def build   ## rename to prepare - why? why not?
  meta = []

  @recs.each_with_index do |rec,i|
    print "."
    print "#{i}"  if i % 10 == 0

    n, m = parse_index( rec['index'] )  ## e.g. split "0/1" to [0,1] etc.
    name   = rec['name']
    type   = rec['type']


    path = "#{@basedir}/cache/#{n}_#{m}.png"

    category = @layer_names[ n ]

    category_slug = slugify( category )
    name_slug     = slugify( name )

    outpath = "#{@basedir}/attributes/#{n}_#{category_slug}/#{m}_#{name_slug}.png"


    ## note: for now only save if exits not already
    if !File.exist?( outpath )

      if type != 'image/png'
        puts "!! WARN - non-png image; make sure there's a png conversion"
        pp rec
      end

      img = Image.read( path )

      if [img.width,img.height] != [@width,@height]
        if img.width  > @width &&  img.height > @height
          ## try to downscale
          puts "==>  #{path} - try to downscale from #{img.width}x#{img.height} to #{@width}x#{@height}...."
          steps_x = Image.calc_sample_steps( img.width, @width )
          steps_y = Image.calc_sample_steps( img.height, @height )
          img = img.pixelate( steps_x, steps_y )
        else
          puts "!! ERROR - expected image in #{@width}x#{@height}px; got #{img.width}x#{img.height}"
          pp rec
          exit 1
        end
      end

      puts "saving #{outpath}..."
      img.save( outpath )
     end

     ##
     # note:   for name now use always catetory+name (!!)
     #             to assure unique name and only
     #              use name only as an alternate (more) name

     meta << ["#{n}_#{category_slug}/#{m}_#{name_slug}.png",
              category,
              "#{category} : #{name}",
              name
             ]
  end

  ##
  ## save attributes.csv  meta records

  headers = ['path', 'category', 'name', 'more_names']

  buf = String.new('')
  buf <<  headers.join( ', ')
  buf << "\n"
  meta.each do |rec|
    buf << rec.join( ', ')
    buf << "\n"
  end

  write_text( "#{@basedir}/tmp/attributes.csv", buf )
end

end  # class Layers


