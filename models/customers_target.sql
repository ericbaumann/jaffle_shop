with customers_target as 
(
  select * from {{ ref('customers') }}
),

select * from customers_target
{% if target.name == 'prod' %}
limit 5
{% endif %}
