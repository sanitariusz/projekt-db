ActiveAdmin.register Hardware do
  menu :priority => 3
  permit_params :name, :serial, :type, :worker_id, :hardware_type_id
  actions :all, except: (:show)
  index do
    column :name
    column :serial
    column :worker do |hard|
      begin
        hard.worker.name
      rescue
        ""
      end
    end
    column :hardware_type do |type|
      type.hardware_type.name
    end
    actions
  end

filter :name
filter :serial
filter :worker

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :serial

      f.input :worker
      #     if current_admin_user.is_admin?
      #     f.input :password
      #    f.input :password_confirmation
      #    end
    end
    f.actions
  end

  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
