require 'artfactory'



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


__END__

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