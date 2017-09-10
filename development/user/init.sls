generic_user:
  user.present:
    - name: {{ pillar['noc_user']['name'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['noc_user']['name'] }}
    - uid: {{ pillar['noc_user']['uid'] }}
    - password: {{ pillar['noc_user']['password'] }}
