class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern  
    protected
    def after_sign_in_path_for(resource)
      '/direcao.html' # Caminho para a página HTML na pasta public
  
    end
end
