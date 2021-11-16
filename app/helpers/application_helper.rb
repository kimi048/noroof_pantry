module ApplicationHelper
  def whichfood(which)
    case which
      when "breakfast" then
        "朝食"
      when "lunch" then
        "昼食"
      when "dinner" then
        "夕食"
      end
  end
  def novdate(date)
    num = date %7
    if num== 0 then
      "(日)"
    elsif num==1 then
      "(月)"
    elsif num==2 then
      "(火)"
    elsif num==3 then
      "(水)"
    elsif num==4 then
      "(木)"
    elsif num==5 then
      "(金)"
    elsif num==6 then
      "(土)"
    end
  end
  def userstatus(user)
    if user.admin? then
      "管理者"
    elsif user.nut? then
      "管理栄養士"
    else
      "ユーザー"
    end
  end
end
