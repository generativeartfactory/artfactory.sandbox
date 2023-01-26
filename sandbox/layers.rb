###
#  generate README page
#    for "raw" (on-chain) layers


require 'cocos'


##
## note: fix csv format:
##    in death/layers.csv  (comma requires quotes!!)
##   - 0/30, "I Scream, You Scream", image/png, false
##   - 0/37, "Who, Me?"", image/png, false
##    in  smiley/layers.csv  (hash-mark requires quotes!!!)
##   - 5/0, "#1", image/png, false
##   - 5/1, "#2", image/png, false
##    in women/layers.csv
##   - 0/0, Designer Frane #3, image/png, false
##   - 0/1, Designer Frame #2, image/png, false
##   - 0/2, Designer Frame #1, image/png, false
##   - 7/15, Designer outfit #1, image/png, false
##   - 7/16, Designer outfit #2, image/png, false


class LayersCache    ## todo: find a different name - why? why not?

  attr_reader :layers

  def initialize( basedir )
    @basedir = basedir
    _read_meta
  end

  def _read_meta
    recs = read_csv( "#{@basedir}/layers.csv" )
    puts "  #{recs.size} record(s) in layers"

    ## use integer-keyed hashes for now - why? why not?
    @formats = Hash.new( 0 )
    ## e.g. image/png
    ##      image/gif
    ##      image/jpeg
    ##      image/svg+xml

    ## todo/check - change to nested array (from nested hash) - why? why not?
    @layers = {}

    recs.each do |rec|
      name = rec['name']
      type = rec['type']
      n,m  = rec['index'].split('/').map { |str| str.strip.to_i }

      extension = case type
                  when 'image/png'     then 'png'
                  when 'image/gif'     then 'gif'
                  when 'image/jpeg'    then 'jpg'
                  when 'image/svg+xml' then 'svg'
                  else
                     pp rec
                     raise ArgumentError, "unsupported image type:  #{type} in >#{@basedir}<"
                  end

      @formats[ type ] += 1

      layer = @layers[n] ||= {}

      ### quick & dirty hack - find a better way!!!
      path = "#{@basedir}/#{n}_#{m}.#{extension}"
      unless File.exist?( path )
        puts "!! ERRROR - image for #{n}/#{m} not found; tried >#{path}<"
        exit 1
      end
      puts " #{n} / #{m} - >#{name}< - #{path}"
      ## note: add relative path (basename+extname only)
      layer[m] = { name: name,
                   path: File.basename( path ) }
    end
  end


  def build_summary( title: 'Layers')
    buf = "# #{title}\n\n"

    buf << "By image format (mime type):\n"
    @formats.each do |format,count|
      buf << "- #{format} _(#{count})_\n"
    end
    buf << "\n\n"


    @layers.each do |n, layer|
      buf << "**#{n}** -  "
      buf <<  layer.map {|m,rec| rec[:name] }.join( ' · ' )
      buf << "  _(#{layer.size})_ "
      buf << "<br>\n"
      layer.each do |m,rec|
         buf << %Q<![](#{rec[:path]} "#{m} - #{rec[:name]}")>
         buf <<" \n"
      end
      buf << "\n\n"
    end
    buf
  end
end  # class LayersCache




collections = %w[
  aliensvspunks
  chichis
  chopper
  dankpunks
  edgepunks
  fuks
  inversepunks
  madcamels
  marcs
  nfl
  nomads
  phunkapeorigins
  proofofpepe
  punkapesyachtclub
  punkinspicies
]


## update january 2023
collections = %w[
   shiba
   ecc0s
   cutekevin
   deathofkevin
   gmkevin
   frogcentral
   pepeblocks
   pepeburbpunks
   novo
]


collections.each do |collection|
  puts "==> #{collection}..."

  basedir = "more/#{collection}/cache"
  cache = LayersCache.new( basedir )

  buf = cache.build_summary( title: "Layers in /#{collection}" )
  write_text( "#{basedir}/README.md", buf )
end

__END__

more_collections = %w[
  3dphunks
  3dskulls
  cherrynouns
  chimps
  death
  dickbutts
  dosphunks
  gatekeepers
  grimmers
  kevin
  madmasks
  people
  pepes
  pepitos
  skulls
  smiley
  teddies
  women]


more_collections.each do |collection|
  puts "==> #{collection}..."

  basedir = "more/#{collection}/cache"
  cache = LayersCache.new( basedir )

  buf = cache.build_summary( title: "Layers in /#{collection}" )
  write_text( "#{basedir}/README.md", buf )
end


puts "bye"