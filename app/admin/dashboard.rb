ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span 'Bienvenido, el balance de sus inversiones es'
        small ''
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    
     columns do
   

       column do
         panel "Patrominio" do
           para number_to_currency BalanceService.new(current_admin_user).total_balance.to_s
         end
       end

       column do
        panel "Rentabilidad Cartera" do
          para '27%'
        end
      end

     end
  end
end
