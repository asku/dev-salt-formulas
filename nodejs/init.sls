nodejs:
  pkg.installed:
    - names:
      - npm
      - nodejs
      - libfontconfig
  file.symlink:
    - name: /usr/bin/node
    - target: /usr/bin/nodejs
