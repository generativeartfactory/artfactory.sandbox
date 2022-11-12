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



inversepunks = Artfactory.read( './inversepunks/spritesheet-24x24.png',
                                './inversepunks/spritesheet-24x24.csv',
                                      width: 24,
                                      height: 24)

specs = parse_data( <<TXT )
  # No.856
  Inverted V2, Alien, Pimple, Cap Forward, Eyes, Bubble Gum, White Gold Chain, Gold Earring
  # No.390
  Inverted V2, Alien, Clear, Knitted Cap, VR, White Gold Chain, Gold Earring
  # No.223
  Inverted V2, Ape, Clear, Bandana, Classic Shades, Blue Medical Mask, Pink Sapphire Necklace
TXT


specs.each_with_index do |attributes, i|
  img = inversepunks.generate( *attributes )
  img.save( "./tmp/inversepunks#{i}.png" )
  img.zoom(4).save( "./tmp/inversepunks#{i}@4x.png" )
end


proofofpepe = Artfactory.read( './proofofpepe/spritesheet-48x48.png',
                               './proofofpepe/spritesheet-48x48.csv',
                                  width: 48,
                                  height: 48)

specs = parse_data( <<TXT )
  Creature Pepe
  # No.3032
  Pale Green, Sonoran Desert Toad 10, Lips: Happy, Enjoyoor Hoodie, Cry, Clown Nose, Pipe
  # No.1
  Pale Pink, Beeping Froglet 11, Lips: Smug, Enjoyoor Hoodie, Happy, Aviators Cap, Clown Nose, Sunglasses
TXT


specs.each_with_index do |attributes, i|
  img = proofofpepe.generate( *attributes )
  img.save( "./tmp/proofofpepe#{i}.png" )
  img.zoom(4).save( "./tmp/proofofpepe#{i}@4x.png" )
end




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



fuks = Artfactory.read( './fuks/spritesheet-24x24.png',
                        './fuks/spritesheet-24x24.csv',
                                  width: 24,
                                  height: 24)

specs = parse_data( <<TXT )
  # no.976
  Robot Fuk, Shaved, Purple Hair, Nose, Vape, VR, No Earrings, Diamond Chain
  # no.1229
  Undead Fuk, Shaved, Messy Hair, Nose, Smile, Laser, Diamond Stud, Silver Chain
  # no.7134
  Human Fuk, Chin Strap, Fast Food Cap, Nose, Grin, Nerd Glasses, No Earrings, No Chains
TXT



specs.each_with_index do |attributes, i|
  img = fuks.generate( *attributes )
  img.save( "./tmp/fuks#{i}.png" )
  img.zoom(4).save( "./tmp/fuks#{i}@4x.png" )
end



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



dankpunks = Artfactory.read( './dankpunks/spritesheet-24x24.png',
                             './dankpunks/spritesheet-24x24.csv',
                                  width: 24,
                                  height: 24)


specs = parse_data( <<TXT )
  # no.35
  Night Vibe, Pale, Clown Nose, Red Punk, Green Clown
  # no.21
  Contrast, Tan, Black Hair, 3D Glasses
  # 1/1s
  Golden Phunk
TXT


specs.each_with_index do |attributes, i|
  img = dankpunks.generate( *attributes )
  img.save( "./tmp/dankpunks#{i}.png" )
  img.zoom(4).save( "./tmp/dankpunks#{i}@4x.png" )
end




chichis = Artfactory.read( './chichis/spritesheet-32x32.png',
                           './chichis/spritesheet-32x32.csv',
                             width: 32,
                             height: 32)

specs = parse_data( <<TXT )
  ## no.15
  Wave, Magenta, Jersey,  Lightning Bolt Earrings, Cbd Cig, Aviators, Beanie
  ## no.8
  Palms, Silver, Suit, Simple Day, Smile, Xx, Rainbow
  Chichi Phunk
TXT

specs.each_with_index do |attributes, i|
   img = chichis.generate( *attributes )
   img.save( "./tmp/chichis#{i}.png" )
   img.zoom(4).save( "./tmp/chichis#{i}@4x.png" )
end


# step 1 - setup the art factory;
#    pass-in the spritesheet image & (meta) dataset and
#    the format (e.g. 24x24px)

aliensvsspunks = Artfactory.read( './aliensvspunks/spritesheet-24x24.png',
                                  './aliensvspunks/spritesheet-24x24.csv',
                                  width: 24,
                                  height: 24)


# step 2 - generate images via text (prompts)

specs = parse_data( <<TXT )
  ## no.37
  Solid Pink, Jacket : Grey, Blue Alien Girl, Red Kerchief, Blue Buzz Cut, Brown, Pink Tiara
  ## no.28
  Solid Blue, Olive Guy, Orange Collar, Face Mask, Yellow Ponytail, Green, Long Green
  ## no.21
  Solid Green, Jacket : White, Purple Alien Girl, Pink Collar, Neutral, Pink Bob, Sunset Shades
TXT


specs.each_with_index do |attributes, i|
   img = aliensvsspunks.generate( *attributes )
   img.save( "./tmp/aliensvspunks#{i}.png" )
   img.zoom(4).save( "./tmp/aliensvspunks#{i}@4x.png" )
end



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


puts "bye"