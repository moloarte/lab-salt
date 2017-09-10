noc_user:
  luigi:
    password: "$1$342gwsf$gWwrjGIded98z9SJtd9HT1"
    uid: 1001
    comment: "Its not 'me'"

generic_user:
  user.present:
    - name: {{ pillar['noc_user']['name'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['noc_user']['name'] }}
    - uid: {{ pillar['noc_user']['uid'] }}
    - password: {{ pillar['noc_user']['password'] }}
