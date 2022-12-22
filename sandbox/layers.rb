###
#  generate README page
#    for "raw" (on-chain) layers


require 'cocos'


collections = ['3dphunks', 'teddies']

collections.each do |collection|
  puts "==> #{collection}..."


  basedir = "more/#{collection}/cache"
  recs = read_csv( "#{basedir}/layers.csv" )
  puts "  #{recs.size} record(s) in layers"

  ## use integer-keyed hashes for now - why? why not?
  layers = {}

  recs.each do |rec|
      name = rec['name']
      n,m  = rec['index'].split('/').map { |str| str.strip.to_i }

      layer = layers[n] ||= {}


      ### quick & dirty hack - find a better way!!!
      paths = Dir.glob( "#{basedir}/#{n}_#{m}.*" )
      if paths.size != 1
        puts "!! ERRROR - image for #{n}/#{m} not found (or unique); got:"
        pp paths
        exit 1
      end
      puts " #{n} / #{m} - >#{name}< - #{paths[0]}"
      ## note: add relative path (basename+extname only)
      layer[m] = { name: name,
                   path: File.basename( paths[0] ) }
  end


  pp layers

  buf = "# Layers in /#{collection}\n\n"
  layers.each do |n, layer|
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

  puts buf

  write_text( "#{basedir}/README.md", buf )
end


puts "bye"