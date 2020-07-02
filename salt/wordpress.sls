install packages:


  pkg.installed:


    - pkgs:


      - apache2

      - mysql-server

      - mysql-client

      - mysql-common

      - php7.2

      - nagios-plugins

      - nagios-nrpe-server

      - munin-node

      - syslog-ng 

      - wordpress


copy-syslog-file:


  file.managed:

    

    - source: salt://syslog-ng.conf

    - name: /etc/syslog-ng/syslog-ng.conf


  

syslog-ng:


  service.running:


    - reload: True
