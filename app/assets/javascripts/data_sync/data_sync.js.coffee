$('body').on 'click','#add_data_sync', ->
  showPopup('#data_sync_popup')

$('.popup_closer').click ->
  $(this).closest('.popup').hide()


$('body').on 'change','.event_dropdown', ->
  $('#data_sync_mapping').hide()
  if $(this).val() != ''
    $('#data_sync_mapping').show()



$('body').on 'click','.data_source_option', ->
  $('#data_sync_mapping_area .dark_contentBox').hide()
  $(this).closest('.data_source_sync_box').find('.data_source_area').show()

$('body').on 'change','.data_source_area .ds_type', ->
  current_id = $(this).attr('id')
  selected_val = $(this).find('option:selected').text()
  $('.'+current_id+'_text').html selected_val

addFieldEntry = (id) ->
  switch id
    when "add_new_ids_field"
      $('#new_ids_fields_table').show()
      new_entry = $('#new_ids_field_entry').html()
      $('#new_ids_fields_table #new_ids_fields_box').append new_entry
    when "add_ext_ids_field"
      $('#ext_ids_fields_table').show()
      field_entry = $('#ext_ds_field_new_entry').html()
      $('#ext_ids_fields_table #fields_section').append field_entry

removeFieldEntry = (target) ->
  parent_entry = $(target).closest('.field_entry')
  $(parent_entry).remove()
  selected_option = $('input[name="data_source_option"]:checked').val()
  switch selected_option
    when 'new'
      parent_table = '#new_ids_fields_table'
    when 'ext'
      parent_table = '#ext_ids_fields_table'

  total_fields = $(parent_table+' .field_entry').length
  if total_fields < 1
    $(parent_table).hide()

$('body').on 'click','.add_field_entry', ->
  id = $(this).attr('id')
  addFieldEntry(id)

$('body').on 'click','.remove_field_entry', ->
  target = $(this)
  removeFieldEntry(target)