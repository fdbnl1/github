install packages:

  pkg.installed:

    - pkgs:

      - apache2
      - mysql-server
      - mysql-client
      - mysql-common
      - php7.2
      - nagios-plugins
      - syslog-ng 
      - docker

/etc/syslog-ng/syslog-ng.conf:
 
  file.append:

    - text: |

        @version: 3.5
        @include "scl.conf"
        @include "`scl-root`/system/tty10.conf"
        source s_local { system(); internal(); };
        destination d_syslog_tcp {
                      syslog("10.0.7.95" transport("tcp") port(514)); };
        log { source(s_local);destination(d_syslog_tcp); };
   
