# Artfactory Sandbox (& Cache)  - Quick & Dirty "One-Off" Scripts To Download Complete Artwork Layers for ("On-Blockchain") Collections for Easy (Re)use ("Off-Blockchain")


Yes, you can!  (Re)use the "off-blockchain" (pixel) artwork
spritesheets to generate any combination using text-to-image prompts.


Example - Let's try the Aliens vs Punks using the [**Art Factory machinery »**](https://github.com/learnpixelart/pixelart/tree/master/artfactory)

``` ruby
require 'artfactory'

# step 1 - setup the art factory;
#    pass-in the spritesheet image & (meta) dataset and
#    the format (e.g. 24x24px)

aliensvsspunks = Artfactory.read( 'aliensvspunks/spritesheet-24x24.png',
                                  'aliensvspunks/spritesheet-24x24.csv',
                                  width: 24,
                                  height: 24)


# step 2 - generate images via text (prompts)

specs = [
  ## no.37
  ['Solid Pink', 'Jacket : Grey', 'Blue Alien Girl', 'Red Kerchief',
   'Blue Buzz Cut', 'Brown', 'Pink Tiara'],
  ## no.28
  ['Solid Blue', 'Olive Guy', 'Orange Collar', 'Face Mask',
   'Yellow Ponytail', 'Green', 'Long Green'],
  ## no.21
  ['Solid Green', 'Jacket : White', 'Purple Alien Girl', 'Pink Collar', 'Neutral',
   'Pink Bob', 'Sunset Shades'],
]


specs.each_with_index do |attributes, i|
   img = aliensvsspunks.generate( *attributes )
   img.save( "aliensvspunks#{i}.png" )
   img.zoom(4).save( "aliensvspunks#{i}@4x.png" )
end
```

Voila!

![](i/aliensvspunks0.png)
![](i/aliensvspunks1.png)
![](i/aliensvspunks2.png)

4x:

![](i/aliensvspunks0@4x.png)
![](i/aliensvspunks1@4x.png)
![](i/aliensvspunks2@4x.png)


Let's try the Edge Punks:

``` ruby
edgepunks = Artfactory.read( 'edgepunks/spritesheet-24x24.png',
                             'edgepunks/spritesheet-24x24.csv',
                             width: 24,
                             height: 24)

specs = [
# no.282
  ['Pink', 'Dark Green Lizard', 'Dark Robe', 'Monster Mouth', 'Bat', 'Laser Eyes'],
# no.468
  ['Pink', 'Purple Body', 'Dark Suit', 'Smile', 'Dark Hair', 'Dark Shades'],
# no.678 (1/1)
  ['Anatomy Of An Icon'],
]


specs.each_with_index do |attributes, i|
   img = edgepunks.generate( *attributes )
   img.save( "edgepunks#{i}.png" )
   img.zoom(4).save( "edgepunks#{i}@4x.png" )
end
```

Voila!

![](i/edgepunks0.png)
![](i/edgepunks1.png)
![](i/edgepunks2.png)

4x:

![](i/edgepunks0@4x.png)
![](i/edgepunks1@4x.png)
![](i/edgepunks2@4x.png)


Let's try the Chi Chis:

``` ruby
chichis = Artfactory.read( 'chichis/spritesheet-32x32.png',
                           'chichis/spritesheet-32x32.csv',
                             width: 32,
                             height: 32)

specs = [
  ## no.15
  ['Wave', 'Magenta', 'Jersey',  'Lightning Bolt Earrings',
    'Cbd Cig', 'Aviators', 'Beanie'],
  ## no.8
  ['Palms', 'Silver', 'Suit', 'Simple Day', 'Smile', 'Xx', 'Rainbow'],
  ## 1/1
  ['Chichi Phunk'],
]

specs.each_with_index do |attributes, i|
   img = chichis.generate( *attributes )
   img.save( "chichis#{i}.png" )
   img.zoom(4).save( "chichis#{i}@4x.png" )
end
```

Voila!

![](i/chichis0.png)
![](i/chichis1.png)
![](i/chichis2.png)

4x:

![](i/chichis0@4x.png)
![](i/chichis1@4x.png)
![](i/chichis2@4x.png)



## "Right-Click & Save This" Spritesheets  - What's News?


### Aliens vs Punks (in 24×24px)

Samples:

- Solid Pink, Jacket Grey, Blue Alien Girl, Red Kerchief, Blue Buzz Cut, Brown, Pink Tiara
- Solid Blue, Olive Guy, Orange Collar, Face Mask, Yellow Ponytail, Green, Long Green
- Solid Green, Jacket  White, Purple Alien Girl, Pink Collar, Neutral, Pink Bob, Sunset Shades

![](i/aliensvspunks0.png)
![](i/aliensvspunks1.png)
![](i/aliensvspunks2.png)

4x:

![](i/aliensvspunks0@4x.png)
![](i/aliensvspunks1@4x.png)
![](i/aliensvspunks2@4x.png)




[226 Attributes (incl. Nones) in 10 Categories](aliensvspunks/spritesheet-24x24.csv):

![](aliensvspunks/spritesheet-24x24.png)


### Chi Chis (in 32×32px)

Samples:
- Wave, Magenta, Jersey,  Lightning Bolt Earrings, Cbd Cig, Aviators, Beanie
- Palms, Silver, Suit, Simple Day, Smile, Xx, Rainbow
- Chichi Phunk

![](i/chichis0.png)
![](i/chichis1.png)
![](i/chichis2.png)

4x:

![](i/chichis0@4x.png)
![](i/chichis1@4x.png)
![](i/chichis2@4x.png)




[94 Attributes (incl. Blanks) in 7 Categories (incl. 1/1s)](chichis/spritesheet-32x32.csv):

![](chichis/spritesheet-32x32.png)


### Chopper (in 24×24px)

Samples:

- SOLID BLUE,  AQUA, HAT 22, SMOKER, 3D, BANANA
- SOLID GOLD, AP3, HAT CHOPPER, NON-SMOKER, BIG SHADES, GOLDEN
- SOLID BLACK, MIDNIGHT, HAT 10, SMOKER, CLASSIC SHADES, DIAMOND CROSS

![](i/chopper0.png)
![](i/chopper1.png)
![](i/chopper2.png)

4x:

![](i/chopper0@4x.png)
![](i/chopper1@4x.png)
![](i/chopper2@4x.png)



[62 Attributes in 6 Categories](chopper/spritesheet-24x24.csv):

![](chopper/spritesheet-24x24.png)




### Dank Punks (in 24×24px)

Samples:

- Night Vibe, Pale, Clown Nose, Red Punk, Green Clown
- Contrast, Tan, Black Hair, 3D Glasses
- Golden Phunk


![](i/dankpunks0.png)
![](i/dankpunks1.png)
![](i/dankpunks2.png)

4x:

![](i/dankpunks0@4x.png)
![](i/dankpunks1@4x.png)
![](i/dankpunks2@4x.png)


[77 Attributes (incl. Nones) in 7 Categories (plus 1/1s)](dankpunks/spritesheet-24x24.csv):

![](dankpunks/spritesheet-24x24.png)

Note:  Some attributes are animations in gifs
in the "on-blockchain" version  - this "off-blockchain" remake uses
the first animation frame in gifs
to convert to a "static" attribute in the .png format.



### Edge Punks (in 24×24px)

Samples:

- Pink, Dark Green Lizard, Dark Robe, Monster Mouth, Bat, Laser Eyes
- Pink, Purple Body, Dark Suit, Smile, Dark Hair, Dark Shades
- Anatomy Of An Icon

![](i/edgepunks0.png)
![](i/edgepunks1.png)
![](i/edgepunks2.png)

4x:

![](i/edgepunks0@4x.png)
![](i/edgepunks1@4x.png)
![](i/edgepunks2@4x.png)





[120 Attributes (incl. Nones/Blanks) in 5 Categories (plus 1/1s)](edgepunks/spritesheet-24x24.csv):

![](edgepunks/spritesheet-24x24.png)



### Fuks (in 24×24px)


Samples:

- Robot Fuk, Shaved, Purple Hair, Nose, Vape, VR, No Earrings, Diamond Chain
- Undead Fuk, Shaved, Messy Hair, Nose, Smile, Laser, Diamond Stud, Silver Chain
- Human Fuk, Chin Strap, Fast Food Cap, Nose, Grin, Nerd Glasses, No Earrings, No Chains

![](i/fuks0.png)
![](i/fuks1.png)
![](i/fuks2.png)

4x:

![](i/fuks0@4x.png)
![](i/fuks1@4x.png)
![](i/fuks2@4x.png)


[69 Attributes in 8 Categories](fuks/spritesheet-24x24.csv):

![](fuks/spritesheet-24x24.png)



### Inverse Punks (in 24×24px)

[99 Attributes in 8 Categories](inversepunks/spritesheet-24x24.csv):

![](inversepunks/spritesheet-24x24.png)


### Mad Camels (in 32×32px)

[78 Attributes (incl. Nones) in 8 Categories](madcamels/spritesheet-32x32.csv):

![](madcamels/spritesheet-32x32.png)


### Marcs (in 24×24px)

[171 Attributes (incl. Nones) in 11 Categories (plus 1/1s)](marcs/spritesheet-24x24.csv):

![](marcs/spritesheet-24x24.png)

### NFL (in 23×23px)

[136 Attributes (incl. Nones) in 6 Categories (plus 1/1s)](nfl/spritesheet-23x23.csv):

![](nfl/spritesheet-23x23.png)


### Nomads (in 24×24px)

[65 Attributes (incl. Nones) in 5 Categories (plus 1/1s)](nomads/spritesheet-24x24.csv):

![](nomads/spritesheet-24x24.png)

Note:  Some backgrounds (from chain runners) are in 32×32px - CANNOT
 "downsampled" loss-free to 24×24px  - that's a "classic faux-pixel art" bug.


### Phunk Ape Origins (in 24×24px)

[114 Attributes (incl. Nones) in 8 Categories](phunkapeorigins/spritesheet-24x24.csv):

![](phunkapeorigins/spritesheet-24x24.png)


### Proof of Pepe (in 48×48px)

[227 Attributes (incl. Nones) in 10 Categories (plus 1/1s)](proofofpepe/spritesheet-48x48.csv):

![](proofofpepe/spritesheet-48x48.png)



### Punk Apes Yacht Club (in 24×24px)


Samples:

- Solid Gray, Black, Prison Jumpsuit, Top Hat, Green Eye Shadow, Cigarette With Hot Lipstick, Silver Loop
- Solid Orange, Trippy, Biker Vest, Silver Chain, Pink With Hat, Clown Eyes Green, Frown, Silver Stud
- Solid Purple, Zombie, Tanktop, Orange Side, 3D Glasses, Frown

![](i/punkapesyachtclub0.png)
![](i/punkapesyachtclub1.png)
![](i/punkapesyachtclub2.png)

4x:

![](i/punkapesyachtclub0@4x.png)
![](i/punkapesyachtclub1@4x.png)
![](i/punkapesyachtclub2@4x.png)


[170 Attributes (incl. Nones) in 14 Categories](punkapesyachtclub/spritesheet-24x24.csv):

![](punkapesyachtclub/spritesheet-24x24.png)



### Punkin Spicies (in 24×24px)


Samples:

- Wine Soaked Sky, Frankensteins Monster, Bride, Choker, Vape, Bloodtears, Mole, Hoopearring
- Wine Soaked Sky, Demon, Darkhair, Goldchain, Knife, Hoopearring
- Wine Soaked Sky, Jack O Lantern, Bride, Bloodtears

![](i/punkinspicies0.png)
![](i/punkinspicies1.png)
![](i/punkinspicies2.png)

4x:

![](i/punkinspicies0@4x.png)
![](i/punkinspicies1@4x.png)
![](i/punkinspicies2@4x.png)


[113 Attributes (incl. Nones) in 9 Categories](punkinspicies/spritesheet-24x24.csv):

![](punkinspicies/spritesheet-24x24.png)





## Questions? Comments?

Post them on the [D.I.Y. Punk (Pixel) Art reddit](https://old.reddit.com/r/DIYPunkArt). Thanks.




