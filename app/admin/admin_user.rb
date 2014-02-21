ActiveAdmin.register AdminUser do
  menu :priority => 7, :label => 'Admin Accounts'
  permit_params :email, :password, :password_confirmation, :name, :surname
  actions :all, except: (:destroy)

  index do
    column :email
    column :name
    column :surname
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    actions
  end

  filter :email
  filter :name
  filter :surname

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :surname
      f.input :email
 #     if current_admin_user.is_admin?
  #     f.input :password
   #    f.input :password_confirmation
#    end
    end
    f.actions
  end

end
