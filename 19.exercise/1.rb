def to_utf8(str_euc, str_sjis)
  str_euc.encode("UTF-8")  + str_sjis.encode("UTF-8")
end
