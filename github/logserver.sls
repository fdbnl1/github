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

    

    - source: salt://logserver/syslog-ng.conf

    - name: /etc/syslog-ng/syslog-ng.conf


/var/log/syslog-ng:
 
  file.directory

/var/log/syslog-ng/logs.txt:

  file.touch

syslog-ng:

  service.running:

    - reload: True
    - reset: True
    - restart: True
