{% if grains['location'] == "Kiev" %}
Europe/Kiev:
{% elif grains['location'] == "Amsterdam" %}
Europe/Amsterdam:
{% endif %}
  timezone.system

