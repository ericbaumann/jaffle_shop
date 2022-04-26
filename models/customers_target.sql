with customers_target as 
(
  select * from {{ ref('stg_customers') }}
),

select * from customers_target
{% if target.name == 'prod' %}
where first_name == 'Eric'
{% endif %}
