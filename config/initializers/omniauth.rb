Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, ENV['41392fff292a4bfea6f3'], ENV['408fcec472e68d3b91e1e4e797a7f6d79b376244']
  end