require 'artfactory'


## setup generator

chichis = Artfactory.read( './chichis/spritesheet-32x32.png',
                           './chichis/spritesheet-32x32.csv',
                             width: 32,
                             height: 32)


## try some "random" samples

specs = parse_data( <<TXT )
  ## no.15
  Wave, Magenta, Jersey,  Lightning Bolt Earrings, Cbd Cig, Aviators, Beanie
  ## no.8
  Palms, Silver, Suit, Simple Day, Smile, Xx, Rainbow
  Chichi Phunk
TXT

specs.each_with_index do |attributes, i|
   img = chichis.generate( *attributes )
   img.save( "./tmp/chichis#{i}.png" )
   img.zoom(4).save( "./tmp/chichis#{i}@4x.png" )
end



## try (re)generate via (token) metadata / attributes

specs = read_csv( './chichis/chichis.csv' )

specs.each_with_index do |rec, i|

  attributes = rec.to_a
  ## cut-off first id column and reverse order
  attributes = attributes[1..-1].reverse
  attributes = attributes.map {|k,v| "#{k} : #{v}"}

  img = chichis.generate( *attributes )
  img.save( "./chichis/32x32/#{i}.png" )
  img.zoom(4).save( "./chichis/tmp/chichis#{i}@4x.png" )
end


puts "bye"