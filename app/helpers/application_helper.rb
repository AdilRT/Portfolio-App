module ApplicationHelper

  def login_register_button_toggle_helper
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path) +
        "<br>".html_safe +
        (link_to 'Login', new_user_session_path)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, data: { turbo_method: :delete }
    end
  end

  def source_tracker_helper
    if session[:source]
      content_tag(:div, "Thanks for visiting me from #{session[:source]}", class: "source-greeting")
    end
  end
  
  def generate_copyright
    AadilViewTool::Renderer.cppyright 'Aadil RT', 'All rights reserved.'
  end
end
