/etc/ssmtp/ssmtp.conf:
  file:
    - managed
    - source:
      - salt://ssmtp/templates/conf.jinja
    - user: root
    - group: mail
    - mode: 640
    - template: jinja
    - require:
      - pkg: ssmtp
