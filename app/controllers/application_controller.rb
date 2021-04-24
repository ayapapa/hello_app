class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "¡Hola! Hi, ladies and gentlemen. This is a tutorial pages by Masanori Onda."
  end

  def goodbye
    @res = {'name' => 'Masanori Onda', 'old' => 28, 'message' => 'Goodbye'}
    respond_to do |format|
      format.html {render html: "So long!"}
      format.json {render :json => @res   }
      format.xml {render :xmli => @res   }
    end
  end
end
