connection: "mc_looker_redshift"

# include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

include: "/views/dept.view.lkml"
include: "/views/empsal.view.lkml"
include: "/views/expence.view.lkml"
include: "/mc_multiconn_model_dashboard.dashboard.lookml"

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: dept {
  join: empsal {
    type: left_outer
    relationship: many_to_one
    sql_on: ${empsal.id} = ${dept.empid} ;;
  }

  join: expence {
    type: left_outer
    relationship: many_to_one
    sql_on: ${expence.expid} = ${dept.empid};;
  }

}
