require 'artfactory'


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

