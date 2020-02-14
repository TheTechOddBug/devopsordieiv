#!/usr/bin/env bash
sudo docker exec dood-gitlab gitlab-rails runner -e production "  \
  user = User.find_by(username: 'root');                  \
  user.password = user.password_confirmation = 'newPW'; \
  user.save!"
