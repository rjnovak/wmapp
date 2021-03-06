ActiveAdmin.register User do
    
    controller { with_role :admin }

    form do |f|
      f.inputs "User Details" do
        f.input :name
        f.input :email
        f.input :phone
        f.input :bannerID
        f.input :dorm, :collection => Buildings.order("name ASC").all.map{ |building| [building.name] } 
        f.input :room
        f.input :password
        f.input :password_confirmation
      end
      f.buttons
    end

    #form :partial => "form"
end
