require 'artfactory'




nfl = Artfactory.read( './nfl/spritesheet-23x23.png',
                       './nfl/spritesheet-23x23.csv',
                         width: 23,
                         height: 23)

specs = parse_data( <<TXT )
  # no.2419
  Justin Fields
  # no.1594
  Turf, Bot, Oakland, 13, Full Beard Light
  # no.803
  Goal Line, Base 5, Atlanta, 7, Full Beard Black
TXT



specs.each_with_index do |attributes, i|
  img = nfl.generate( *attributes )
  img.save( "./tmp/nfl#{i}.png" )
  img.zoom(4).save( "./tmp/nfl#{i}@4x.png" )
end
