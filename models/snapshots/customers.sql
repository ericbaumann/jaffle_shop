{# {% snapshot customers_snapshot %}

select * from {{ ref('customers') }}

{% endsnapshot %} #}