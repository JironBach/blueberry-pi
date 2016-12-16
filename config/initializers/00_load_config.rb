APP_CONFIG = YAML.load_file("#{Rails.root}/config/settings.yml")[Rails.env]
SECURE = APP_CONFIG['encrypt']['secure']
CIPHER = APP_CONFIG['encrypt']['cipher']
