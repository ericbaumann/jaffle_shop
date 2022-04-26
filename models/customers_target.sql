with customers_target as 
(
  select * from {{ ref('stg_customers') }}
),

{% if target.name == 'prod' %}
select * from customers_target
{% endif %}