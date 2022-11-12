require 'artfactory'


marcs = Artfactory.read( './marcs/spritesheet-24x24.png',
                         './marcs/spritesheet-24x24.csv',
                                      width: 24,
                                      height: 24)

specs = parse_data( <<TXT )
  Deal With It Devil
  # No.4582
  Marc 4, Frumpy Hair, Green Shirt, Lasers, Cigarette
  # No.2898
  Zombie, Green Eyes, Wild Hair, Mustache, Polarized
TXT


specs.each_with_index do |attributes, i|
  img = marcs.generate( *attributes )
  img.save( "./tmp/marcs#{i}.png" )
  img.zoom(4).save( "./tmp/marcs#{i}@4x.png" )
end

