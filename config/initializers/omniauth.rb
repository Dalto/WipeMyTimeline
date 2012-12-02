Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '411433865597156', 'd54e163077ab402b76913244f6e34690'
end
