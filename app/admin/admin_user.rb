ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :Name, :Surname

  index do
    column :email
    column :Name
    column :Surname
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :email
  filter :Name
  filter :Surname

  form do |f|
    f.inputs "Admin Details" do
      f.input :Name
      f.input :Surname
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
