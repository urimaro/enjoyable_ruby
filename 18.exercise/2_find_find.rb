require 'find'

def du(path)
  result = 0
  Find.find(path) do |f|
    if File.file?(f)
      result += File.size(f)
    end
  end
  printf("%d %s\n", result, path)
  return result
end

du(ARGV[0] || ".")
