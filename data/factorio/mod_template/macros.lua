{% macro dict_to_lua(dict) -%}
{
{%- for key, value in dict.items() -%}
    ["{{ key }}"] = {{ value | safe }}{% if not loop.last %},{% endif %}
{% endfor -%}
}
{%- endmacro %}
{% macro dict_to_recipe(dict) -%}
{
{%- for key, value in dict.items() -%}
    {"{{ key }}", {{ value | safe }}}{% if not loop.last %},{% endif %}
{% endfor -%}
}
{%- endmacro %}