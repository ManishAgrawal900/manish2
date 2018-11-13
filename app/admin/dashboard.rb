ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end
    columns do
      column do
        panel "All User" do
          table_for User.order("id desc").limit(10) do
            column("Name") { |user| user.name }
            column("Email") { |user| user.email}
           
            column("Date & Time") { |user| user.created_at.to_datetime.localtime.strftime("%d-%m-%Y at %T")}
            column("Service") { |user| user.services.pluck(:name).flatten.join(' , ') }
           column("vendor name") { |user| Vendor.find(user.services.pluck(:Vendor_id)).pluck(:name).flatten.join(' , ') }
           

            
          end
        end
      end
  end


columns do
      column do
        panel "request" do
          table_for Join.where(status:0) do
            column("user name") {|user| User.find(user.user.id).name}
            column("service") {|user| Service.find(user.service.id).name}
            column ("allow") {|user| link_to 'yes', allow_path(a: user.id)}
            column ("reject") {|user| link_to 'no', reject_path(a: user.id)}
            

          end
        end
      end
  end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
