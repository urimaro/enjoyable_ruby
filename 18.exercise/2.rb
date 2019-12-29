require 'find'

def du(basedir)
  raise "This path isn't a directory." unless File.directory?(basedir)

  hash = {}
  hash[basedir] = count(basedir, hash)
  print_like_du(hash)
end

def count(basedir, hash)
  total = 0
  Dir.open(basedir) do |dir|
    dir.each do |path|
      next if path == "."
      next if path == ".."

      filepath = "#{basedir}/#{path}"

      if File.directory?(filepath)
        size = count(filepath, hash)
      else
        size = File.size(filepath)
      end

      hash[filepath] = size
      total += size
    end
  end
  total
end

def print_like_du(hash)
  hash.each do |k, v|
    printf("%-7d %s\n", v, k)
  end
end

du(ARGV[0])
