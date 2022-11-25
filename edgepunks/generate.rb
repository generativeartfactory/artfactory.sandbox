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


## try (re)generate via (token) metadata / attributes

specs = read_csv( './edgepunks/edgepunks.csv' )

specs.each_with_index do |rec, i|

  ## cut-off first id column and reverse order
  attributes = rec.to_a[1..-1].reverse
  ## remove empty attrbutes
  attributes = attributes.filter {|attrib| !attrib[1].empty? }
  attributes = attributes.map {|k,v| "#{k} : #{v}"}

  img = edgepunks.generate( *attributes )
  img.save( "./edgepunks/24x24/#{i}.png" )
  img.zoom(4).save( "./edgepunks/tmp/edgepunks#{i}@4x.png" )
end


puts "bye"
