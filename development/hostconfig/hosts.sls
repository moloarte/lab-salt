saltmaster:
  host.present:
    - ip: 192.168.2.136

ntp-server:
  host.absent:
    - ip: 192.168.2.130
