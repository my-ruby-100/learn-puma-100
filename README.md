# learn-puma-100


[Deploying Rails Applications with the Puma Web Server | Heroku Dev Center](https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server)


**`Procfile `**

><https://github.com/ddollar/foreman>

```bash
web: bin/rails s -b 0.0.0.0 -p 3000
```


## [capistrano-puma](https://github.com/seuros/capistrano-puma/tree/v6.0.0.beta.1)


> `Capfile`

```ruby
require 'capistrano/puma'

install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Systemd
```

> `deploy.rb`

```ruby
set :puma_service_unit_name, 'yuncang-api'
set :puma_service_unit_env_file, '/etc/environment'
```

```
bundle exec cap production puma:install
```

```bash
# yuncang-api.service、yuncang-api.socket
/home/equestia/.config/systemd/user

/bin/systemctl --user daemon-reload
/bin/systemctl --user enable equestia-api
/bin/systemctl --user enable equestia-api.socket
```

```
bundle exec puma --help
```

```bash
# config/puma.rb
bundle exec puma -C config/puma.rb
```

```
bundle exec puma -b unix:///var/www/equestia-api/shared/tmp/sockets/puma.sock
```


## Ref


* <https://github.com/puma/puma>
* <https://puma.io/>、**<https://puma.io/puma/>**
* <https://github.com/puma/puma/blob/master/docs/systemd.md>
* <https://github.com/puma/puma/blob/master/docs/nginx.md>
