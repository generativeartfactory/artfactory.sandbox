require 'artfactory'




chichis = Artfactory.read( './chichis/spritesheet-32x32.png',
                           './chichis/spritesheet-32x32.csv',
                             width: 32,
                             height: 32)

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
