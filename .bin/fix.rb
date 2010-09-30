#!/usr/bin/env ruby
#Script Fixes common mistakes like common typos, comments and so on

puts "FIXXER SCRIPT ;)"

puts ARGV.inspect


if (ARGV[0] == nil)
   puts "\nNo file specified.\n"
   exit
end

pretend = false
if (ARGV[1] != nil)
   pretend = (ARGV[1] == "-p")
end



puts "Reading " + ARGV[0]
puts "pretending" if pretend


output = Array.new
lineToBeModified = false
i=0
File.open(ARGV[0], 'r') do |f1|  
   while line = f1.gets  
      i+=1
      lineToBeModified = false

      # check if there is // comment
      if line.match(/^([^\*]*)\/\/(.*)/)
         if (!lineToBeModified) 
            lineToBeModified = true
            puts "#{i} 0 before: " + line 
         end

         line =  $1 + "/*" + $2 + "*/"
      end

      # check if there is *\ without a space before it
      if line.match(/(.*[^ \*-])(\*\/.*)/)
         if (!lineToBeModified) 
            lineToBeModified = true
            puts "#{i} 1 before: " + line 
         end

         line =  $1 + " " + $2
      end

      # check if there is /* without a space after it
      if line.match(/(.*\/\*)([^ \*-].*)/)
         if (!lineToBeModified) 
            lineToBeModified = true
            puts "#{i} 2 before: " + line 
         end
         line =  $1 + " " + $2
      end

      # check if there is a trailing space in the line.
      if line.match(/\([^\ ]*\) \+$/)
         puts "#{i} 2 before: " + line 
         line =  $1
      end

      if (lineToBeModified) then puts "after : " + line end

      output << line
   end
end


if !pretend
   File.open(ARGV[0], 'w') do |f2|  
      output.each do |line|
         f2.puts line
      end
   end  
end  

