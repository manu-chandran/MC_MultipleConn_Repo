view: products {
  sql_table_name: mc_orders.Products ;;

  dimension: model {
    type: string
    sql: ${TABLE}.MODEL ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }
  dimension: pid {
    type: string
    sql: ${TABLE}.PID ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
