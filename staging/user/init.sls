ploy_user:
  user.present:
    - name: {{ pillar['users']['staging_user'] }}
    - password: {{ pillar['users']['staging_user_password'] }}
