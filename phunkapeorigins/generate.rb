require 'artfactory'



phunkapeorigins = Artfactory.read( './phunkapeorigins/spritesheet-24x24.png',
                                   './phunkapeorigins/spritesheet-24x24.csv',
                                      width: 24,
                                      height: 24)

specs = parse_data( <<TXT )
  # no.2668
  Blue 3, Chimpanzee 1, Arrow, Snow Visor, Tooth Plug, Diamond Chain
  # no.481
  Blue 5, Silver Back, Wild Monkey Hair, Focused, Silver Dangle, Gold Chain, Cigar
  # no.219
  Blue 1,  Yeti, Royal Crown, Matrix Shades, Silver Stud, Tooth Necklace, Tooth
TXT

specs.each_with_index do |attributes, i|
  img = phunkapeorigins.generate( *attributes )
  img.save( "./tmp/phunkapeorigins#{i}.png" )
  img.zoom(4).save( "./tmp/phunkapeorigins#{i}@4x.png" )
end
