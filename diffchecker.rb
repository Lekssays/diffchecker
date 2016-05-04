#!usr/bin/ruby
# Coded with <3 by Ahmed Lekssays

require 'fileutils'
require 'colorize' # To install it : sudo gem install colorize

original = ARGV[0]
generated = ARGV[1]

oriFile = File.open(original,"r")
genFile = File.open(generated,"r")

if(!File.zero?(oriFile) && File.zero?(genFile))
	puts "The program did not generate any output".colorize(:blue)
elsif (File.zero?(oriFile)) 
	puts "Input file is empty".colorize(:blue)
elsif 
	if(FileUtils.identical?(oriFile, genFile)) 
		puts "Accepted".colorize(:green)
	else 
		puts ("Difference in : (Check diff.txt for multiple cases)")
		inf = IO.readlines(oriFile).map(&:chomp)
		outf = IO.readlines(genFile).map(&:chomp)
		File.open("diff.txt","w"){ |f| 
			puts (inf-outf).join("\n")
			f.write((inf-outf).join("\n")) 
		}
		puts "Wrong Answer".colorize(:red)
	end
end
