install packages:


  pkg.installed:


    - pkgs:


      - apache2

      - apache2-utils     

      - mysql-server

      - mysql-client

      - mysql-common

      - php7.2

      - munin

      - munin-node

      - libcgi-fast-perl

      - libapache2-mod-fcgid  

fcgid:

  apache_module.enabled:

    - name: fcgid


/var/www/munin:

  file.directory

copy-munin.conf:

  file.managed:

    - source: salt://monitorserver/munin.conf

    - name: /etc/munin/munin.conf

copy-apache.conf:

  file.managed:

    - source: salt://monitorserver/apache.conf

    - name: /etc/munin/apache.conf

copy-apache24.conf:

  file.managed:

    - source: salt://monitorserver/apache24.conf

    - name: /etc/munin/apache24.conf

copy-apache2.conf:

  file.managed:

    - source: salt://monitorserver/apache2.conf

    - name: /etc/apache2/apache2.conf
