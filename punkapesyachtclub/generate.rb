require 'artfactory'



punkapesyachtclub = Artfactory.read( './punkapesyachtclub/spritesheet-24x24.png',
                                     './punkapesyachtclub/spritesheet-24x24.csv',
                                      width: 24,
                                      height: 24)

specs = parse_data( <<TXT )
  # no.3388
  Solid Gray, Black, Prison Jumpsuit, Top Hat, Green Eye Shadow, Cigarette With Hot Lipstick, Silver Loop
  # no.1688
  Solid Orange, Trippy, Biker Vest, Silver Chain, Pink With Hat, Clown Eyes Green, Frown, Silver Stud
  # no.1655
  Solid Purple, Zombie, Tanktop, Orange Side, 3D Glasses, Frown
TXT

specs.each_with_index do |attributes, i|
  img = punkapesyachtclub.generate( *attributes )
  img.save( "./tmp/punkapesyachtclub#{i}.png" )
  img.zoom(4).save( "./tmp/punkapesyachtclub#{i}@4x.png" )
end


