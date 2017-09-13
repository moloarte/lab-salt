{{ pillar['jenkins_group']['group_name'] }}:
  group.present:
    - gid: {{ pillar['jenkins_group']['group_id'] }}

