with customers_target as 
(
  select * from {{ ref('stg_customers') }}
),

select * from customers_target
{% if target.name == 'prod' %}
limit 5
{% endif %}
