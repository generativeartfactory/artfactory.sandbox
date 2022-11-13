############
# convert / export json metadata to collection.csv or such

require 'cocos'


# basedir = "./chichis"
# basedir = "./marcs"
# basedir = "./punkinspicies"
basedir = "./madcamels"


tokens = Dir.glob( "#{basedir}/token/*.json" )
puts "   #{tokens.size} token record(s)"

## note: sort by ids (e.g. 0,1,2,3,4,5,6,7,8,9,10,11,etc.)
tokens = tokens.sort do |l,r|
                      l_id = File.basename( l, File.extname( l )).to_i(10)
                      r_id = File.basename( r, File.extname( r )).to_i(10)
                      l_id <=> r_id
                     end


headers = nil
recs    = []

tokens.each_with_index do |path,i|
  basename = File.basename( path, File.extname( path ))
  id = basename.to_i(10)  ## always use base10

  puts "==> reading ##{id} #{path}..."
  data = read_json( path )
  attributes =

  attributes = []
  data['attributes'].each do |attrib|
     ##    "trait_type": "headwear&1/1s",
     ##   "value": "Bald"
     attributes << [
                     attrib['trait_type'].strip,
                     attrib['value'].strip
                   ]
  end

  keys    = attributes.map { |attrib| attrib[0] }
  values  = attributes.map { |attrib| attrib[1] }

  if i==0
    ## setup headers
    headers = keys
  else
    ## double check for matching headers
    if headers != keys
      puts "!! ERROR - sorry headers NOT matching in token record:"
      pp headers
      pp keys
      pp attributes
      exit 1
    end
  end

  recs << [id.to_s] + values
  pp attributes
end


buf = String.new('')
buf << (['id'] + headers).join( ', ' )
buf << "\n"
recs.each do |rec|
  buf << rec.join( ', ' )
  buf << "\n"
end

puts "tokens:"
puts buf


basename = File.basename( basedir )
write_text( "./#{basedir}/#{basename}.csv", buf )

puts "bye"

