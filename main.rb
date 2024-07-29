
require 'date'

def calculate_day_of_week(year, month, day)
  # Dateオブジェクトを作成
  date = Date.new(year, month, day)
  
  # 曜日を取得 (0: 日曜、1: 月曜、...、6: 土曜)
  day_of_week = date.wday
  
  # 曜日の日本語表現を取得
  day_names = %w(日 月 火 水 木 金 土)
  day_name = day_names[day_of_week]
  
  return day_name
end

# 年月日を入力
print "生年月日を入力（YYYY-MM-DD）:"
birthday_str = gets.chomp
begin
    birthday = Date.parse(birthday_str)
end

year = birthday.year
month = birthday.month
day = birthday.day

# 曜日を計算
result = calculate_day_of_week(year, month, day)

# 結果を出力
puts "#{year}年#{month}月#{day}日は#{result}曜日です。"