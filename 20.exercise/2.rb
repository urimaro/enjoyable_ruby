def ls_t(dir_path)
  children = Dir.each_child(dir_path).map {|path| File.new(path)}
  sorted = children.sort_by {|file| file.mtime}
  sorted.each do |file|
    mtime = File.stat(file).mtime
    mtime_str = mtime.strftime("%Y-%m-%d %H:%M:%S")
    printf("%s %s\n", mtime_str, file.path)
  end
end

ls_t(ARGV[0])
