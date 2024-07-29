def weekday?(time)
    # dateが平日かどうかを検知する
    time.wday >= 1 && time.wday <= 5
  end
  
  def ontime?(time)
    # 16:55かどうかの検知
    time.hour == 16 && time.min ==55
    false
  end
  
  require 'time'
  time = Time.new(2024,7,29, 16, 17, 0)
  puts weekday?(time) == true
  puts ontime?(time) == false

  time = Time.new(2024,7,28, 16, 55, 0)
  puts weekday?(time) == false
  puts ontime?(time) == true