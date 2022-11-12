require 'artfactory'



proofofpepe = Artfactory.read( './proofofpepe/spritesheet-48x48.png',
                               './proofofpepe/spritesheet-48x48.csv',
                                  width: 48,
                                  height: 48)

specs = parse_data( <<TXT )
  Creature Pepe
  # No.3032
  Pale Green, Sonoran Desert Toad 10, Lips: Happy, Enjoyoor Hoodie, Cry, Clown Nose, Pipe
  # No.1
  Pale Pink, Beeping Froglet 11, Lips: Smug, Enjoyoor Hoodie, Happy, Aviators Cap, Clown Nose, Sunglasses
TXT


specs.each_with_index do |attributes, i|
  img = proofofpepe.generate( *attributes )
  img.save( "./tmp/proofofpepe#{i}.png" )
  img.zoom(4).save( "./tmp/proofofpepe#{i}@4x.png" )
end

