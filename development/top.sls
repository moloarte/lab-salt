development:
  '*':
    - user
    - groups
    - sshauth.pubkey
  'server_type: saltmaster':
    - match: grain
    - sshauth.known_hosts
  
