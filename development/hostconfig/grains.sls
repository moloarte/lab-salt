location:
  grains.present:
    {% if grains['domain'] == "oslo.ch" %}
    - value: Kiev
    {% elif grains['domain'] == "example.com" %}
    - value: Amsterdam 
    {% else %}
    - value: null
    {% endif %}

server_type:
  grains.present:
    {% if 'ipa' in grains['host'] %}
    - value: ipa_server
    {% elif 'dbs' in grains['host'] %}
    - value: db_server
    {% elif 'web' in grains['host'] %}
    - value: web_server
    {% elif 'saltmaster' in grains['host'] %}
    - value: saltmaster
    {% else %}
    - value: unknown
    {% endif %}

environment:
  grains.present:
    - value: development
