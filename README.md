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

[226 Attributes (incl. Nones) in 10 Categories](aliensvspunks/spritesheet-24x24.csv):

![](aliensvspunks/spritesheet-24x24.png)


### Chi Chis (in 32×32px)

[94 Attributes (incl. Blanks) in 7 Categories (incl. 1/1s)](chichis/spritesheet-32x32.csv):

![](chichis/spritesheet-32x32.png)


### Chopper (in 24×24px)

[62 Attributes in 6 Categories](chopper/spritesheet-24x24.csv):

![](chopper/spritesheet-24x24.png)


### Dank Punks (in 24×24px)

[77 Attributes (incl. Nones) in 7 Categories (plus 1/1s)](dankpunks/spritesheet-24x24.csv):

![](dankpunks/spritesheet-24x24.png)




### Edge Punks (in 24×24px)

[120 Attributes (incl. Nones/Blanks) in 5 Categories (plus 1/1s)](edgepunks/spritesheet-24x24.csv):

![](edgepunks/spritesheet-24x24.png)


### Fuks (in 24×24px)

[69 Attributes in 8 Categories](fuks/spritesheet-24x24.csv):

![](fuks/spritesheet-24x24.png)






## Questions? Comments?

Post them on the [D.I.Y. Punk (Pixel) Art reddit](https://old.reddit.com/r/DIYPunkArt). Thanks.




