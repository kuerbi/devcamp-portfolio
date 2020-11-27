module ApplicationHelper
    def login_helper style
        unless current_user.is_a?(GuestUser) 
            link_to "Logout", destroy_user_session_path, class: style, method: :delete 
        else 
            (link_to "Register", new_user_registration_path,class: style) +
            (link_to "Login", new_user_session_path, class: style)
        end 
    end

    def source_helper(layout_name)
        if session[:source]
          content_tag(:p, "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout", class: "source-greeting")
        end
    end
end
 