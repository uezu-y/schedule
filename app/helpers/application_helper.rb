module ApplicationHelper
  def times
    date2 = Date.current.strftime("%Y年 %m月 %d日")
    date2
  end
  
  def recode
   rec = User.count
   rec
  end
end
