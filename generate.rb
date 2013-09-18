require 'fech'
  
# This will spit out a rendered mappings file, but will not be loaded by
# the gem by default. To use the new file, move it into the lib/fech
# folder of your active Fech gem.
source = 'sources/'
destination = Dir.pwd
    
if File.directory?(destination)
  destination = File.join(destination, 'rendered_maps.rb')
end

print "source" + source  + "\n"
print "dest" + destination + "\n"
    
Fech::MapGenerator.convert_header_file_to_row_files(source)
Fech::MapGenerator.dump_row_maps_to_ruby(source, destination)
    
puts "Successfully wrote out mappings to #{destination}"

