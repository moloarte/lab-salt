{{ pillar['jenkins_group']['group_name'] }}:
  group.present:
    - gid: {{ pillar['jenkins_group']['group_id'] }}

{{ pillar['zabbix_group']['group_name'] }}:
  group.present:
    - gid: {{ pillar['zabbix_group']['group_id'] }}
