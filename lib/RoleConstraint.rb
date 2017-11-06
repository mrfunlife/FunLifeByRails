class RoleConstraint
  def initialize(*roles)
    @roles = roles #load available roles
  end

  def matches?(request)
    @roles.include? request.env['warden'].user.try(:role) #does the role in request match an available role?
  end
end

#config/routes.rb
# root :to => 'admin#index', :constraints => RoleConstraint.new(:admin) #matches this route when the current user is an admin
# root :to => 'home#home', :constraints => RoleConstraint.new(:user) #matches this route when the current user is an user
# root :to => 'sessions#new' #matches this route when the above two matches don't pass