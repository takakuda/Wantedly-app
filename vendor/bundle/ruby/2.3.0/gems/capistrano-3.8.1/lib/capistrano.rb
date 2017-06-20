set :default_env, {
  rbenv_root: "/usr/local/rbenv",
  path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH",
  aws_access_key_id: ENV['ACCESS_KEY_ID'],
  aws_secret_access_key: ENV['SECRET_ACCESS_KEY']
}
