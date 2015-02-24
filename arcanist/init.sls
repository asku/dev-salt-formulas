include:
  - php

git clone https://github.com/phacility/arcanist.git "$HOME/arcanist":
  cmd.run:
    - unless: test -d "$HOME/arcanist"

cd "$HOME/arcanist" && git pull:
  cmd.run:
    - onlyif: test -d "$HOME/arcanist"

git clone https://github.com/phacility/libphutil.git "$HOME/libphutil":
  cmd.run:
    - unless: test -d "$HOME/libphutil"

cd "$HOME/libphutil" && git pull:
  cmd.run:
    - onlyif: test -d "$HOME/libphutil"

arcanist-in-path:
  file.append:
    - name: /home/vagrant/.bashrc
    - text: PATH=$PATH:$HOME/arcanist/bin
