require 'artfactory'



chopper = Artfactory.read( './chopper/spritesheet-24x24.png',
                             './chopper/spritesheet-24x24.csv',
                                  width: 24,
                                  height: 24)


specs = parse_data( <<TXT )
  # no.267
  SOLID BLUE,  AQUA, HAT 22, SMOKER, 3D, BANANA
  # no.176
  SOLID GOLD, AP3, HAT : CHOPPER, NON-SMOKER, BIG SHADES, GOLDEN
  # no.181
  SOLID BLACK, MIDNIGHT, HAT 10, SMOKER, CLASSIC SHADES, DIAMOND CROSS
TXT


specs.each_with_index do |attributes, i|
  img = chopper.generate( *attributes )
  img.save( "./tmp/chopper#{i}.png" )
  img.zoom(4).save( "./tmp/chopper#{i}@4x.png" )
end


## try (re)generate via (token) metadata / attributes

specs = read_csv( './chopper/chopper.csv' )

specs.each_with_index do |rec, i|

  ## cut-off first id column and reverse order
  attributes = rec.to_a[1..-1].reverse
  attributes = attributes.map {|k,v| "#{k} : #{v}"}

  img = chopper.generate( *attributes )
  img.save( "./chopper/24x24/#{i}.png" )
  img.zoom(4).save( "./chopper/tmp/chopper#{i}@4x.png" )
end


puts "bye"

