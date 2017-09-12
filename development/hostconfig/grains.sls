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
    - value: ipa
    {% elif 'dbs' in grains['host'] %}
    - value: db
    {% endif %}

