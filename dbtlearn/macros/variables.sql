{% macro learn_variables() %}

    {% set your_name_jinja = "Nick" %}
    {{ log("Hello " ~ your_name_jinja, info=True) }}

    {{ log("Hello dbt user " ~ var("user_name", "No username is set!") ~ "!", info=True) }}

{% endmacro %}