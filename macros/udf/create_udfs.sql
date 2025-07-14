{% macro create_udfs() %}
    {% do run_query(create_cast_timestamp_udf()) %}
{% endmacro %}