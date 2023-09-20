view: inventory {
  sql_table_name: mc_orders.INVENTORY ;;

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }
  dimension: pid {
    type: string
    sql: ${TABLE}.PID ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.QUANTITY ;;
  }
  measure: count {
    type: count
  }
}
