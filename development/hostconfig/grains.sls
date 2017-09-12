location:
  grains.present:
    {% if grains['domain'] == "oslo.ch" %}
    - value: Kiew
    {% elif grains['domain'] == "example.com" %}
    - value: Kansas
    {% endif %}

server_type:
  grains.present:
    {% if 'ipa' in grains['host'] %}
    - value: ipa
    {% elif 'dbs' in grains['host'] %}
    - value: db
    {% endif %}

