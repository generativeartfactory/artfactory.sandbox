require 'artfactory'



madcamels = Artfactory.read( './madcamels/spritesheet-32x32.png',
                             './madcamels/spritesheet-32x32.csv',
                              width: 32,
                              height: 32)

specs = parse_data( <<TXT )
  # no.115
  Cream, Zombie, Purple Cap, Earring : Gold, Cool Glasses, Bubble Gum
  # no.133
  Purple,  Default, Thief Hat, Green Glasses, Bowtie, Pipe
  # no.128
  Green, Alien, Red Cap, Earring : Gold, Laser Eye
TXT

specs.each_with_index do |attributes, i|
  img = madcamels.generate( *attributes )
  img.save( "./tmp/madcamels#{i}.png" )
  img.zoom(4).save( "./tmp/madcamels#{i}@4x.png" )
end


## try (re)generate via (token) metadata / attributes

specs = read_csv( './madcamels/madcamels.csv' )

specs.each_with_index do |rec, i|

  attributes = rec.to_a
  ## cut-off first id column and reverse order
  attributes = attributes[1..-1].reverse
  attributes = attributes.map {|k,v| "#{k} : #{v}"}

  img = madcamels.generate( *attributes )
  img.save( "./madcamels/32x32/#{i}.png" )
  img.zoom(4).save( "./madcamels/tmp/madcamels#{i}@4x.png" )
end


puts "bye"
