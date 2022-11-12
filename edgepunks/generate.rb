require 'artfactory'



edgepunks = Artfactory.read( './edgepunks/spritesheet-24x24.png',
                             './edgepunks/spritesheet-24x24.csv',
                             width: 24,
                             height: 24)

specs = parse_data( <<TXT )
  # no.282
  Pink, Dark Green Lizard, Dark Robe, Monster Mouth, Bat, Laser Eyes
  # no.468
  Pink, Purple Body, Dark Suit, Smile, Dark Hair, Dark Shades
  # no.678
  Anatomy Of An Icon
TXT


specs.each_with_index do |attributes, i|
   img = edgepunks.generate( *attributes )
   img.save( "./tmp/edgepunks#{i}.png" )
   img.zoom(4).save( "./tmp/edgepunks#{i}@4x.png" )
end
