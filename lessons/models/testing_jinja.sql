{#- Jinja comment -#}

{#-
	Jinja comment; can span multiple lines.
	WON'T appear in compiled SQL.
-#}

-- SQL comment that will appear in the SQL

{# Jinja statment #}
{# It's DOING something #}

{% set my_long_variable %}
	SELECT 1 AS my_col
{% endset %}

{# Jinja expression #}
{{ my_long_variable }}


{# Setting inline #}
{% set my_list = ['user_id', 'created_at'] %}

SELECT
{%- for item in my_list %}
	{{ item }}{% if not loop.last %},{% endif %}
{%- endfor %}

{{ my_list }}


