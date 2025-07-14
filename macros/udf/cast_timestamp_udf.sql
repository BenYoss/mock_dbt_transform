{% macro create_cast_timestamp_udf() %}
    {% if target.type == 'duckdb' %}
        {{ return('') }}
    {% endif %}
    {{ config(materialized='statement') }}
    CREATE FUNCTION cast_timestamp_udf(input VARCHAR) 
    RETURNS TIMESTAMP AS CAST(input AS TIMESTAMP)
    LANGUAGE sql AS $$;
{% endmacro %}