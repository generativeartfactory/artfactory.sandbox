$LOAD_PATH.unshift( "../artbase/artq/lib" )


require 'artq'


###########
# start up tool if run via script (e.g. ruby artq.rb)

ArtQ::Tool.main   if __FILE__ == $0