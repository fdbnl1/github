install packages:


  pkg.installed:


    - pkgs:


      - apache2

      - mysql-server

      - mysql-client

      - mysql-common

      - php7.2

      - munin-node

      - syslog-ng 

      - wordpress


copy-syslog-file:


  file.managed:

    

    - source: salt://wordpress-server/syslog-ng.conf

    - name: /etc/syslog-ng/syslog-ng.conf

copy-munin-node.conf:

  file.managed:

    - source: salt://monitor-node/munin-node.conf

    - name: /etc/munin/munin-node.conf
  

syslog-ng:


  service.running:


    - reload: True
    - restart: True
    - reset: True
