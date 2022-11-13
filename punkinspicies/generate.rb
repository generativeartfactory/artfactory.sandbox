require 'artfactory'




punkinspicies = Artfactory.read( './punkinspicies/spritesheet-24x24.png',
                                 './punkinspicies/spritesheet-24x24.csv',
                                  width: 24,
                                  height: 24)

specs = parse_data( <<TXT )
  # no.1001
  Wine Soaked Sky, Frankensteins Monster, Bride, Choker, Vape, Bloodtears, Mole, Hoopearring
  # no.1142
  Wine Soaked Sky, Demon, Darkhair, Goldchain, Knife, Hoopearring
  # no.937
  Wine Soaked Sky, Jack O Lantern, Bride, Bloodtears
TXT



specs.each_with_index do |attributes, i|
  img = punkinspicies.generate( *attributes )
  img.save( "./tmp/punkinspicies#{i}.png" )
  img.zoom(4).save( "./tmp/punkinspicies#{i}@4x.png" )
end



## try (re)generate via (token) metadata / attributes

specs = read_csv( './punkinspicies/punkinspicies.csv' )

specs.each_with_index do |rec, i|

  attributes = rec.to_a
  ## cut-off first id column and reverse order
  attributes = attributes[1..-1].reverse
  attributes = attributes.map {|k,v| "#{k} : #{v}"}

  img = punkinspicies.generate( *attributes )
  img.save( "./punkinspicies/24x24/#{i}.png" )
  img.zoom(4).save( "./punkinspicies/tmp/punkinspicies#{i}@4x.png" )
end


puts "bye"
