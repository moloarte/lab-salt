location:
  grains.present:
    {% if grains['domain'] == "oslo.ch" %}
    - value: Kiev
    {% elif grains['domain'] == "example.com" %}
    - value: Amsterdam 
    {% endif %}

server_type:
  grains.present:
    {% if 'ipa' in grains['host'] %}
    - value: ipa_server
    {% elif 'dbs' in grains['host'] %}
    - value: db_server
    {% elif 'web' in grains['host'] %}
    - value: web_server
    {% endif %}

