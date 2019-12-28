require 'find'

def print_libraries
  $:.each do |d|
    Find.find(d) do |path|
      next if File.directory?(path)
      puts path if /\.rb$/ =~ path
    end
  end
end

print_libraries
