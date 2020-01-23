require "cgi/util"

htmlfile = "22.1/akage.html"
textfile = "22.1/akage.txt"

html = File.read(htmlfile, encoding: "UTF-8")

File.open(textfile, "w:UTF-8") do |f|
  in_header = true
  html.each_line do |line|
    if in_header && /<div class="main_text">/ !~ line
      next
    else
      in_header = false
    end
    break if /<div class="after_text">/ =~ line
    line.gsub!(/<[^>]+>/, "")
    esc_line = CGI.unescapeHTML(line)
    f.write esc_line
  end
end
