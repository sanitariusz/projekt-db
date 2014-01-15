class Footer < ActiveAdmin::Component

  def build
    super :id => "footer"

    span "Dzisiaj jest: #{Date.today}, godzina: #{Time.now.strftime("%k:%M:%S")} !"
  end
end
