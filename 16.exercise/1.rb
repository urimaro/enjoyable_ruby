email1 = "john_doe@example.com"
email2 = "jane.doe@example.co.jp"

email_pattern = /([\w\-_][\w\.\-_]*[\w\-_]*)@([\w]+([\.][\w]+)*)/

email1.match(email_pattern)
puts "$1: #{$1}"
puts "$2: #{$2}"

email2.match(email_pattern)
puts "$1: #{$1}"
puts "$2: #{$2}"
