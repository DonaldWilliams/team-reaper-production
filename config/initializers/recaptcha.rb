# config/initializers/recaptcha.rb
Recaptcha.configure do |config|
  config.site_key  = '6LeQpzIUAAAAAIa6WmTYSxUDZILqgVoqly9DIhsP'
  config.secret_key = '6LeQpzIUAAAAAJGHpfS2L2HfDG__vvSritdnMPOA'
  # Uncomment the following line if you are using a proxy server:
  # config.proxy = 'http://myproxy.com.au:8080'
end
