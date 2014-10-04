#Launch a throwaway XST run to trick xtclsh into letting us jump straight to Translate
process run "Synthesize - XST"

#Launch our real XST - I know of no way to make xtclsh use OUR xst script and not some auto-generated one which causes translate to fail
puts "\n\nRunning actual synthesis - output is squelched\n\n"
exec xst -ifn ../src/parallella/scripts/run_synthesis.xst -ofn parallella_z7_top.srp -intstyle ise
puts "\n\nDone\n\n"

#Jump in again at Translate, then through to generating a bitstream
