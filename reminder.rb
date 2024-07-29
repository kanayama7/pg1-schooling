
def run_by_1min
    # 一分に一度だけ動くプログラム
    # loopもここに入るかな
    loop do
        now = Time.now
        if weekday?(now) && ontime?(now)
            puts "平日16:55です!"
        end
        sleep 60
    end
end
  
def weekday?(time)
    # dateが平日かどうかを検知する
    time.wday >= 1 && time.wday <= 5
end
  
def ontime?(time)
    # 16:55かどうかの検知
    time.hour == 16 && time.min ==55
    false
end
  
def send_email
end
  
run_by_1min:
    if weekday? && ontime?
      send_email
    end