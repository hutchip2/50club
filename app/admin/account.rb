ActiveAdmin.register Account do

  controller { with_role :admin }
  menu :priority => 2
  menu :parent => "Accounts"

  index do
    column :email
    column :role
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :email
  filter :role

  form do |f|
    f.inputs "Account Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
