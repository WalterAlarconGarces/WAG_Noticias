class ApplicationController < ActionController::Base
    Pagy::DEFAULT[:items] = 5 
    
    include Pagy::Backend
end
