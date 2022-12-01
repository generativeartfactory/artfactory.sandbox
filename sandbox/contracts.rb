###
#   check-up on contracts (in collections); to run use:
#  $ ruby sandbox/contracts.rb


$LOAD_PATH.unshift( "../artbase/artbase-cocos/lib" )
$LOAD_PATH.unshift( "../artbase/artbase-linters/lib" )
require 'artbase-linters'



report = LintContractsReport.new


buf = report.build
write_text( "./CONTRACTS.md", buf )


puts
puts "  #{report.warns.size} warning(s):"
pp report.warns

puts
puts "  #{report.contracts.size} contracts(s):"
puts report.export_contracts


puts "bye"
