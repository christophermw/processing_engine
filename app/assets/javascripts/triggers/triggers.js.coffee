#= require chosen-jquery

activateChosen = () ->
  $('select.chosen-select').attr("data-placeholder"," ").chosen
    no_results_text: 'No results found'
    width: ''
    inherit_select_classes: true
    disable_search_threshold: 6

$('.popup_opener').click ->
  $.ajax
    url: window.new_trigger_url
    dataType: "json"
    async: false
    success: (data, status, xhr) ->
      $('#add_trigger_popup_container').html(data.html)
      activateChosen()
  id = $(this).attr('id')
  popup_id = '#'+id+"_popup"
  showPopup(popup_id)

$('body').on 'click', '.popup_closer', ->
  $(this).closest('.popup').hide()

$('body').on 'click', '#enable_trigger_delay', ->
  if $(this).prop('checked')
    $('#trigger_delay_wrapper').show()
  else
    $('#trigger_delay_wrapper').hide()

$('body').on 'click', '#enable_reset_timer', ->
  if $(this).prop('checked')
    $('#reset_timer_condition_wrapper').show()
  else
    $('#reset_timer_condition_wrapper').hide()

addCondition = () ->
  template = Handlebars.compile($("#condition_box_template").html())
  idx = $("#add_trigger_popup #trigger_condition_area .sub_condition").length + 1
  $("#add_trigger_popup #trigger_condition_area").append template({idx: idx})
  activateChosen()

  total_conditions = $('#add_trigger_popup #trigger_condition_area .condition:visible').length
  if total_conditions < 2
    $("div.and_or_dropdown:visible:first").hide()
  total_conditions = $('#add_trigger_popup #trigger_condition_area .condition').length
  $('#trigger_condition').html total_conditions

removeCondition = (event) ->
  target = $(event.target)
  parent_box = $(event.target).closest('.condition_box')
  if target.is(".remove_condition:visible:first")
   $(parent_box).next('.condition_box').find('.and_or_dropdown').hide()
  $(parent_box).hide()
  $(parent_box).find('.destroy_condition').val(true)
  total_conditions = $('#add_trigger_popup #trigger_condition_area .condition:visible').length
  $('#trigger_condition').html total_conditions
  if total_conditions < 2
    $("div.and_or_dropdown:visible:first").hide()

addSubCondition = (event) ->
  parent_condition_box = $(event.target).closest('.condition').find('.condition_area')
  template = Handlebars.compile($("#sub_condition_template").html())
  idx = $("#add_trigger_popup #trigger_condition_area .sub_condition").length + 1
  field1_id = parent_condition_box.find('.field1_id').val()
  parent_condition_box.append template({idx: idx, field1_id: field1_id})
  activateChosen()

addWaitForTrigger = () ->
  template = Handlebars.compile($("#wait_for_trigger_template").html())
  dt_idx = $("#wait_for_triggers_area .wait_for_trigger").length + 1
  $("#wait_for_triggers_area").append template({dt_idx: dt_idx})

addWaitForCondition = (parent_box) ->
  template = Handlebars.compile($("#wait_for_condition_template").html())
  idx = parent_box.find(".wait_for_condition_box .wait_for_condition_area .wait_for_condition").length + 1
  dt_idx = parent_box.find(".trigger_index").val()
  parent_box.find(".wait_for_condition_box .wait_for_condition_area").append template({idx: idx, dt_idx: dt_idx})
  activateChosen()
  parent_box.find("div.wait_for_add_or_dropdown:first").hide()

addResetTimerTrigger = () ->
  template = Handlebars.compile($("#reset_timer_trigger_template").html())
  rt_idx = $("#reset_timer_triggers_area .reset_timer_trigger").length + 1
  $("#reset_timer_triggers_area").append template({rt_idx: rt_idx})

addResetTimerCondition = (parent_box) ->
  template = Handlebars.compile($("#reset_timer_condition_template").html())
  idx = $("#reset_timer_box .reset_timer_condition_area .reset_timer_condition").length + 1
  rt_idx = parent_box.find(".trigger_index").val()
  parent_box.find(".reset_timer_condition_area").append template({idx: idx, rt_idx: rt_idx})
  activateChosen()
  parent_box.find("div.reset_timer_add_or_dropdown:first").hide()

removeWaitForCondition = (event) ->
  target = $(event.target)
  parent_box = $(event.target).closest('.wait_for_condition')
  if target.is(".remove_wait_for_condition:first")
    $(parent_box).next('.wait_for_condition').find('.wait_for_add_or_dropdown').hide()
  $(parent_box).hide()
  $(parent_box).find('.destroy_wait_for_condition').val(true)
  total_conditions = $('#add_trigger_popup #wait_for_condition_box .wait_for_condition').length
  if total_conditions < 2
    $('.wait_for_add_or_dropdown:first').hide()

removeResetTimerCondition = (event) ->
  target = $(event.target)
  parent_box = $(event.target).closest('.reset_timer_condition')
  if target.is(".remove_reset_timer_condition:first")
    $(parent_box).next('.reset_timer_condition').find('.reset_timer_add_or_dropdown').hide()
  $(parent_box).hide()
  $(parent_box).find('.destroy_reset_timer_condition').val(true)
  total_conditions = $('#add_trigger_popup #reset_timer_box .reset_timer_condition').length
  if total_conditions < 2
    $('.reset_timer_add_or_dropdown:first').hide()

waitForConditionType = (event) ->
  type = $(event.target).val()
  parent_box = $(event.target).closest('.trigger_sub_condition')
  $(parent_box).find('.sub_attr').hide()
  switch type
    when "event"
      $(parent_box).find('.event_box').show()
    when "field"
      $(parent_box).find('.field_box').show()

$('body').on 'click','#add_condition', ->
  addCondition()

$('body').on 'click', '.remove_condition',(event) ->
  removeCondition(event)

$('body').on 'click','.add_sub_condition',(event) ->
  addSubCondition(event)

$('body').on 'click','.remove_sub_condition',(event) ->
  $(this).closest('.sub_condition').remove()

$('body').on 'click','#add_wait_for_trigger',(event) ->
  addWaitForTrigger()

$('body').on 'click','.add_wait_for_condition', () ->
  parent_box = $(this).closest('.wait_for_trigger')
  addWaitForCondition(parent_box)

$('body').on 'click','#add_reset_timer_trigger', () ->
  addResetTimerTrigger()

$('body').on 'click','.add_reset_timer_condition', () ->
  parent_box = $(this).closest('.reset_timer_trigger')
  addResetTimerCondition(parent_box)

$('body').on 'click','.remove_wait_for_condition', (event) ->
  removeWaitForCondition(event)

$('body').on 'click','.remove_reset_timer_condition', (event) ->
  removeResetTimerCondition(event)

$('body').on 'change','.trigger_condition_type', (event) ->
  waitForConditionType(event)

$('#enable_trigger_delay').click ->
  if $(this).prop('checked')
    $('#trigger_delay_wrapper').show()
    $('#enable_trigger_delay_label').addClass 'strong'
  else
    $('#trigger_delay_wrapper').hide()
    $('#enable_trigger_delay_label').removeClass 'strong'


$('#enable_reset_timer').click ->
  if $(this).prop('checked')
    $('#reset_timer_condition_wrapper').show()
    $('#enable_reset_timer_label').addClass 'strong'
  else
    $('#reset_timer_condition_wrapper').hide()
    $('#enable_reset_timer_label').removeClass 'strong'

$('body').on 'click','#add_trigger_popup .execution_option', ->
  sub_box = $(this).closest('.execution_option_box')
  if $(this).is(":checked")
    $(sub_box).find('.execution_option_label').addClass 'strong'
    $(sub_box).find('.execution_option_dropdown').show()
    if $(sub_box).find('.execution_option_dropdown').val() != ''
      $(sub_box).find('.contentBox').show()
  else
    $(sub_box).find('.execution_option_label').removeClass 'strong'
    $(sub_box).find('.execution_option_dropdown').hide()
    $(sub_box).find('.contentBox').hide()

$('body').on 'change','.execution_option_dropdown', ->
  sub_box = $(this).closest('.execution_option_box')
  dropdown_value = $(this).val()
  if dropdown_value != ''
    $(sub_box).find('.contentBox').show()
  else
    $(sub_box).find('.contentBox').hide()

$('body').on 'change','#send_email', ->
  mapping_area = $("#send_email_popup #map_row_area")
  mapping_area.empty()
  mailing_fields = $("#send_email_mapping_entry .mailing_fields")
  mailing_fields.empty()
  mailing_fields.append("<option>Select a field</option>")
  dropdown_value = $(this).val()
  for field in window.transactional_mailing_fields[dropdown_value]
    mailing_fields.append("<option value="+field+">"+field+"</option>")
  addEmailMapping()

$('body').on 'change','.lcm_source_option_dropdown', ->
  mapping_area = $("#lcm_program_popup #map_row_area")
  mapping_area.empty()
  mailing_fields = $("#lcm_email_mapping_entry .lcm_fields")
  mailing_fields.empty()
  mailing_fields.append("<option>Select a field</option>")
  dropdown_value = $(this).val()
  for field in window.data_source_fields[dropdown_value]
    mailing_fields.append("<option value="+field+">"+field+"</option>")
  addLcmMapping()

$('body').on 'click','.lcm_source_option', ->
  $('.execution_option_box .lcm_source_option_dropdown').hide()
  $(this).closest('.lcm_source_option_box').find('.lcm_source_option_dropdown').show()

$('body').on 'change','.lcm_source_option_dropdown', ->
  if $(this).val() != ''
    $('#lcm_mapping_box').show()
  else
    $('#lcm_mapping_box').hide()

$('body').on "click","#mapped_email_field", ->
  showPopup('#send_email_popup')

$('body').on "click","#add_email_mapping", ->
  addEmailMapping()

addEmailMapping = () ->
  template = Handlebars.compile($("#send_email_mapping_entry").html())
  idx = $("#send_email_popup #map_row_area .mapping_entry").length + 1
  $('#send_email_popup #map_row_area').append template({idx: idx})
  $('#send_email_popup .mapping_label').show()

$('body').on 'click','.remove_email_mapping', ->
  $(this).closest('.mapping_entry').remove()
  if $('#send_email_popup .mapping_entry').length < 1
    $('#send_email_popup .mapping_label').hide()

$('body').on 'click',"#mapped_lcm_field", ->
  showPopup('#lcm_program_popup')

$('body').on "click","#add_lcm_mapping", ->
  addLcmMapping()

addLcmMapping = () ->
  template = Handlebars.compile($('#lcm_email_mapping_entry').html())
  idx = $("#lcm_program_popup #map_row_area .mapping_entry").length + 1
  $('#lcm_program_popup #map_row_area').append template({idx: idx})
  $('#lcm_program_popup .mapping_label').show()

$('body').on 'click','.remove_lcm_mapping', ->
  $(this).closest('.mapping_entry').remove()
  if $('#lcm_program_popup .mapping_entry').length < 1
    $('#lcm_program_popup .mapping_label').hide()

$('body').on 'change','.lcm_tag_field', ->
  new_value = $(this).val()
  primary_key_radio_button = $(this).closest('.mapping_entry').find('.primary_key')
  primary_key_radio_button.val(new_value)


$('body').on 'click','.exp_col_button',(event) ->
  if $(this).hasClass('icon_collapse')
    $(this).parent().find('.collapsible_box').hide()
    $(this).removeClass('icon_collapse').addClass('icon_expand')
  else
    $(this).parent().find('.collapsible_box').show()
    $(this).removeClass('icon_expand').addClass('icon_collapse')


$(window).resize ->
  showPopup('#add_trigger_popup')

$('body').on 'click', '#save_trigger', ->
  $("#add_trigger_popup #trigger_condition_area .position ").each (index) ->
    $(this).val(index)
  $.ajax
    url: window.update_triggers_url
    dataType: "json"
    data: $('#trigger_form').serialize()
    type: "POST"
    success: (data, status, xhr) ->
      window.location.reload()

$('.edit_trigger_entry').click ->
  id = $(this).attr('id')
  $.ajax
    url: window.base_trigger_url + id + '/edit'
    dataType: "json"
    async: false
    success: (data, status, xhr) ->
      $('#add_trigger_popup_container').html(data.html)
      activateChosen()
      $('.chosen-select.hidden').hide()
      showPopup('#add_trigger_popup')

$('body').on 'click', '#save_email_mapping', ->
  $(this).closest('.popup').hide()

$('body').on 'click', '.close_send_email_popup', ->
  $('#send_email_popup #map_row_area').empty()
  $(this).closest('.popup').hide()


$('body').on 'change','.condition_row .operand_option', ->
  parent_box = $(this).closest('.condition_row')
  $(parent_box).find('.cond_end').hide()
  selected_option = $(this).val()
  if selected_option == '1'
    $(parent_box).find('div.field2_id').show()
  else
    $(parent_box).find('.alternate_value').show()

