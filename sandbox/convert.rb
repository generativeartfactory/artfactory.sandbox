############
# convert / export json metadata to collection.csv or such

require 'cocos'



def fill_row( attributes, headers: )

  # map attributes to (lookup) hash
  h = {}
  attributes.each do |attrib|
     key   = attrib[0].downcase
     value = attrib[1]

     if h.has_key?( key )
       puts "!! WARN - duplicate key >#{key}< in rec:"
       pp attributes
       h[key] << value
     else
       h[key] = [value]
     end
  end

  values = []
  ## fill-up values in order of headers

  headers.each do |header|
    value = h.delete( header.downcase ) || []
    values <<     value.join( ' | ' )   ## auto-support multiple values for now - why? why not?
  end

  if h.size > 0
    puts "!! ERRROR - unknown keys (left-over) in rec:"
    pp h
    exit 1
  end

  values
end




def convert( basedir, headers: nil )

   tokens = Dir.glob( "#{basedir}/token/*.json" )
   puts "   #{tokens.size} token record(s)"

  ## note: sort by ids (e.g. 0,1,2,3,4,5,6,7,8,9,10,11,etc.)
  tokens = tokens.sort do |l,r|
                      l_id = File.basename( l, File.extname( l )).to_i(10)
                      r_id = File.basename( r, File.extname( r )).to_i(10)
                      l_id <=> r_id
                     end


  recs    = []

  tokens.each_with_index do |path,i|
    basename = File.basename( path, File.extname( path ))
    id = basename.to_i(10)  ## always use base10

    puts "==> reading ##{id} #{path}..."
    data = read_json( path )

    attributes = []
    data['attributes'].each do |attrib|
       ##    "trait_type": "headwear&1/1s",
       ##   "value": "Bald"
       attributes << [
                     attrib['trait_type'].strip,
                     attrib['value'].strip
                   ]
    end


    if i==0 && headers.nil?
       ## setup auto-header headers
       headers = attributes.map { |attrib| attrib[0] }
    end

    values = fill_row( attributes, headers: headers )

    recs << [id.to_s] + values
    pp attributes
  end

  ##
  ## downcase all headers to lowercase for now) - why? why not?

  buf = String.new('')
  buf << (['id'] + headers.map { |header| header.downcase }).join( ', ' )
  buf << "\n"
  recs.each do |rec|
    buf << rec.join( ', ' )
    buf << "\n"
  end

  puts "tokens:"
  puts buf


  basename = File.basename( basedir )
  write_text( "./#{basedir}/#{basename}.csv", buf )
end


# basedir = "./aliensvspunks"
# basedir = "./chichis"
# basedir = "./chopper"
# basedir = "./dankpunks"
# basedir = "./edgepunks"
#  ++  headers = ['1/1','Eyes','Hat','Mouth','Clothes','Body','Background' ]
basedir = "fuks"

# basedir = "./marcs"
# basedir = "./punkinspicies"
# basedir = "./madcamels"

convert( basedir, headers: nil )


puts "bye"

