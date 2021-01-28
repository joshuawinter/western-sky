view: shit {
  derived_table: {
    sql: SELECT * FROM `jwp-one.00_LandingZone.clickstream` LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: userid {
    type: number
    sql: ${TABLE}.userid ;;
  }

  dimension: remote_user {
    type: string
    sql: ${TABLE}.remote_user ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: _time {
    type: number
    sql: ${TABLE}._time ;;
  }

  dimension: request {
    type: string
    sql: ${TABLE}.request ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: bytes {
    type: string
    sql: ${TABLE}.bytes ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: agent {
    type: string
    sql: ${TABLE}.agent ;;
  }

  set: detail {
    fields: [
      ip,
      userid,
      remote_user,
      time,
      _time,
      request,
      status,
      bytes,
      referrer,
      agent
    ]
  }
}
