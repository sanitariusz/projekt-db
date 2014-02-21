ActiveAdmin.register_page "Panel" do

 menu :priority => 1, :label => 'System Panel'

 content do
    para "Witaj w systemie inwentaryzacyjnym #{current_admin_user.name} #{current_admin_user.surname}."
  end
end
