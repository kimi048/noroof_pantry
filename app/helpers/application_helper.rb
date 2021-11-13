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
end
