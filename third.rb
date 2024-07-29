# 入力した数字を日付に変換して画面に表示する (third.rb)
# 使い方: ruby third.rb 20240125
# -> 
require 'date'
puts Date.parse(ARGV[0])