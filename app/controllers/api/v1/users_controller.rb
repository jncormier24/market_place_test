module Api
    module V1
        class UsersController < ApplicationController
            before_action :authorize_access_request!

            def index
                @users = Users.all
                return json @users
            end
        end
    end
end