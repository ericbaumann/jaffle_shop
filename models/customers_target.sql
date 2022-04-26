with customers_target as 
(
  select * from {{ ref('customers') }}
)

select * from customers_target
{% if target.name == 'prod' %}
where first_name == 'Eric'
{% endif %}
