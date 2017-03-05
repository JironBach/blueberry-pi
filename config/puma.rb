require 'active_support'
require 'active_support/core_ext'
rails_root = Dir.pwd
unless ENV['RACK_ENV'] == 'production'
  environment ENV['RACK_ENV'] || 'development'
  daemonize true  # デーモン化
  workers 0  # 1以上を指定するとCluster化する
  threads 0,2  # スレッド数（最小, 最大）
  bind 'unix://' + File.join(rails_root, 'tmp', 'sockets', 'blueberry-pi.sock')  # /PATH/TO/MYAPP/tmp/sockets/puma.sock
  port 9293  # Port番号
  pidfile File.join(rails_root, 'tmp', 'pids', 'puma.pid')  # /PATH/TO/MYAPP/tmp/pids/puma.pid
  state_path File.join(rails_root, 'tmp', 'puma.state')  # /PATH/TO/MYAPP/tmp/puma.state
  stdout_redirect(  # pumaのログをlog/以下に出力する。trueは追記モード。
    File.join(rails_root, 'log', 'puma.log'),
    File.join(rails_root, 'log', 'puma-error.log'),
    true
  )
  # pumactlのトークンを指定 via. http://qiita.com/takkkun/items/ecdee7e7dec1bcc9a5b5
  activate_control_app('auto', auth_token: rails_root.camelize.parameterize)
end

