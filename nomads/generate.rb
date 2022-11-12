require 'artfactory'

nomads = Artfactory.read( './nomads/spritesheet-24x24.png',
                         './nomads/spritesheet-24x24.csv',
                                      width: 24,
                                      height: 24)

specs = parse_data( <<TXT )
  # No.1022
  Plain, Male 6, Laser, No Really No Mad, Mohawkin
  # No.259
  Dark Plain, Male 2, Purple, No Really No Mad, Basement Dwellin
  # No.4358
  Over The Rainbow Bridge For Nomad Bridge, Male 4, Purple, I AM NOT F ING MAD, Mohawkin
TXT


specs.each_with_index do |attributes, i|
  img = nomads.generate( *attributes )
  img.save( "./tmp/nomads#{i}.png" )
  img.zoom(4).save( "./tmp/nomads#{i}@4x.png" )
end
