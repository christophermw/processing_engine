#= require chosen-jquery

activateChosen = () ->
  $('select.chosen-select').attr("data-placeholder"," ").chosen
    allow_single_deselect: false
    no_results_text: 'No results found'
    width: ''
    inherit_select_classes: true
    disable_search_threshold: 5

$('body').on 'click','#add_profile_field', ->
  $.ajax
    url: window.new_field_url
    dataType: "json"
    async: false
    success: (data, status, xhr) ->
      $('#add_profile_field_popup_container').html(data.html)
      activateChosen()
      showPopup('#profile_field_popup')
      window.new_field = true

$('body').on 'click', '.popup_closer', ->
  $(this).closest('.popup').hide()


$('body').on 'change','#field_type_box .field_type', ->
  selected = $(this).val()
  $('#field_type_box .up_field_option').hide()
  if selected == 'CalculatedField'
    $('#calculated_field_box').show()
  else if selected == 'ConditionalField'
    $('#conditional_field_box').show()

$('body').on 'click','#add_calculated_cond', ->
  template = Handlebars.compile($('#calculated_field_cond_template').html())
  idx = $('#cal_field_def_area .cal_def_entry').length + 1
  $('#cal_field_def_area').append template({idx: idx})
  $('.remove_cal_def_entry').show()
  activateChosen()

$('body').on 'click','.remove_cal_def_entry', (event) ->
    parent_box = $(this).closest('.cal_def_entry')
    $(parent_box).remove()
    total_condtions = $('#cal_field_def_area .cal_def_entry').length
    if total_condtions < 2
      $('.remove_cal_def_entry').hide()

$('body').on 'change','.cal_def_entry .sub_rule_option', ->
  parent_box = $(this).closest('.cal_def_entry')
  $(parent_box).find('.sub_rule').hide()
  selected_option = $(this).val()
  if selected_option == '1'
    $(parent_box).find('div.sub_rule_'+selected_option).show()
  else
    $(parent_box).find('.sub_rule_'+selected_option).show()


$('body').on 'click','#add_conditional_def', ->
  template = Handlebars.compile($('#cond_field_def_template').html())
  cfv_idx = $('#conditional_def_area .cond_def').length + 1
  $('#conditional_def_area').append template({cfv_idx: cfv_idx})
  $('.field_name').val($('#field_name').val())
  if $('.cond_def:visible').length == 1
    $('.or_label:visible:first').hide()

$('body').on 'click','.add_cond_sub_def', ->
  cond_def = $(this).closest('.cond_def')
  parent_box = cond_def.find('.def_area')
  template = Handlebars.compile($('#cond_field_sub_def_template').html())
  idx = parent_box.find('.cond_sub_def_entry').length + 1
  cfv_idx = cond_def.find('.position').val()
  $(parent_box).append template({idx: idx, cfv_idx: cfv_idx})
  if cond_def.find('.cond_sub_def_entry:visible').length == 1
    cond_def.find('.and_or_dropdown:visible:first').hide()

$(window).resize ->
  showPopup('#profile_field_popup')

$('body').on 'click','#save_profile_field', ->
  $("#profile_field_popup #cal_field_def_area .position ").each (index) ->
    $(this).val(index)
  $("#profile_field_popup .cond_def").each (index) ->
    $(this).find(".position").val(index)
    $(this).find(".cond_position").each (cond_index) ->
      $(this).val(cond_index)
  $.ajax
    url: window.update_profile_fields_url
    dataType: "json"
    data: $('#profile_fields_form').serialize()
    type: "POST"
    success: (data, status, xhr) ->
      window.location.reload()

$('body').on 'click', '.edit_link', ->
  id = $(this).attr('id')
  $.ajax
    url: window.base_field_url + id + '/edit'
    dataType: "json"
    async: false
    success: (data, status, xhr) ->
      $('#add_profile_field_popup_container').html(data.html)
      activateChosen()
      $('.chosen-select.hidden').hide() # Needed to force chosen select boxes to be hidden
      showPopup('#profile_field_popup')
      window.new_field = false

$('body').on 'change', '#field_name', ->
  if window.new_field
    if $('#first_expression_field option[value="self"]').length <= 0
      $('#first_expression_field').append('<option value=self>'+$(this).val()+'</option>')
    else
      $('#first_expression_field option[value="self"]').text($(this).val())
    $('#first_expression_field').trigger('chosen:updated')

$('body').on 'change', '#first_expression_field', ->
  $('#use_parent_id_for_field').val($(this).val() == 'self')

$('body').on 'click', '.remove_cond_sub_def_entry', ->
  cond_sub_def_entry = $(this).closest('.cond_sub_def_entry')
  cond_sub_def_entry.find('.destroy_cond_sub_def_entry').val(true)
  cond_def = cond_sub_def_entry.closest('.cond_def')
  if cond_sub_def_entry.is(cond_def.find(".cond_sub_def_entry:visible:first"))
    cond_def.find('.and_or_dropdown:visible:first').hide()
  cond_sub_def_entry.hide()

$('body').on 'change', '#field_name', ->
  $('.field_name').val($(this).val())

$('body').on 'click', '.remove_cond_def', ->
  cond_def = $(this).closest('.cond_def')
  cond_def.find('.destroy_cond_def').val(true)
  if cond_def.is($(".cond_def:visible:first"))
    $('.or_label:visible:first').hide()
  cond_def.hide()
