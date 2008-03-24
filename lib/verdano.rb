module ActionController::Rescue
  def rescues_path_with_no_verdana(template_name)
    if template_name == 'layout'
      "#{File.dirname(__FILE__)}/templates/#{template_name}.erb"
    else
      rescues_path_without_no_verdana(template_name)
    end
  end
  alias_method_chain :rescues_path, :no_verdana
end
