@.showPopup = (popup_id) ->
  $(popup_id).show()
  WW = $(window).width()
  WH = $(window).height()
  top = (WH - $(popup_id + " .overlay").height()) / 2
  left = (WW - $(popup_id + " .overlay").width()) / 2

  top = 30
  $(popup_id+ " .content_area").css
    maxHeight: WH - 200
    overflow: "auto"
    padding:"15px"
    margin: "10px 10px 25px 0"

  switch popup_id
    when "#add_tag_popup"
      $(popup_id+ " #fields_entry_area").css
        maxHeight: WH - 415
        overflow: "auto"
        paddingRight:"10px"
      $(popup_id+ " #fields_box").css
        overflow: "auto"
    when "#add_trigger_popup"
      $(popup_id+ " #trigger_area").css
        minHeight: 10
        overflow: "auto"
    when "#send_email_popup", "#lcm_program_popup"
      left = 30
      $(popup_id+ " #map_row_area").css
        maxHeight: WH - 340
        overflow: "auto"

  $(popup_id+" .overlay").css
    top: top + window.pageYOffset || document.documentElement.scrollTop
    left: left + window.pageXOffset || document.documentElement.scrollLeft
    maxHeight: WH - 75
    overflow: "hidden"
