class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
end
scp my_db1.sql deploy@62.109.8.144:/home/deploy/apps/berkana/current/