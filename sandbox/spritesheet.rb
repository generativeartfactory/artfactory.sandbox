
require 'cocos'
require 'pixelart'
require 'spritesheet'



## e.g. convert dimension (width x height) "24x24" or "24 x 24" to  [24,24]
def parse_dimension( str )
  str.split( %r{x}i ).map { |str| str.strip.to_i }
end



# basedir = './aliensvspunks'
# basedir = './edgepunks'
# basedir = './chichis'
# basedir = './chopper'
# basedir = './dankpunks'
# basedir = './fuks'
# basedir = './inversepunks'
# basedir = './madcamels'
basedir = './marcs'


config = read_yaml( "#{basedir}/collection.yml" )
puts
puts "config:"
## pp config

width, height = parse_dimension( config['format'] )
puts
puts "   width x height in px:  #{width}x#{height}"


sheet = Spritesheet.pack( "#{basedir}/attributes/attributes.csv",
                           dir: "#{basedir}/attributes",
                           width: width, height: height )


sheet.image.save( "#{basedir}/tmp/spritesheet-#{width}x#{height}.png" )
sheet.image.zoom(2).save( "#{basedir}/tmp/spritesheet-#{width}x#{height}@2x.png" )


sheet.export( "#{basedir}/tmp/spritesheet-#{width}x#{height}.csv" )


puts "bye"
