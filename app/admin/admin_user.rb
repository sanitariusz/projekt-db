ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :name, :surname

  index do
    column :email
    column :name
    column :surname
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :email
  filter :name
  filter :surname

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :surname
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
