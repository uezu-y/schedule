class User < ApplicationRecord
  validates :title, presence: true
  validates :startdate, presence: true
  validates :enddate, presence: true
  
  validate :after_startdate
  def after_startdate
    if enddate < startdate
      errors.add(:enddate,"は開始日以降の日付を選択して下さい")
    end
  end
  
  validate :after_today
  def after_today
    unless enddate == nil
      if enddate < Date.today
        errors.add(:enddate, 'は、本日以降の日付を入力して下さい') 
      end
    end
  end
end