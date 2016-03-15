activateFlexSelect = () ->
  $('select.flexselect').flexselect
    allowMismatch: true
    inputNameTransform: (name) ->
      name

$('.popup_opener').click ->
  $.ajax
    url: window.new_tag_url
    dataType: "json"
    async: false
    success: (data, status, xhr) ->
      $('#add_tag_popup_container').html(data.html)
  id = $(this).attr('id')
  popup_id = '#'+id+"_popup"
  showPopup(popup_id)

$('body').on 'click', '.popup_closer', ->
  $(this).closest('.popup').hide()

$('body').on 'click', '#add_tag_fields', ->
  $('#fields_table .table_header').show()
  template = Handlebars.compile($("#tag_field_entry_template").html())
  idx = $("#fields_entry_area .field_entry").length + 1
  $("#fields_entry_area #fields_box").append template({idx: idx})
  activateFlexSelect()
  $('#field_entries').html idx

$('body').on 'click', '#save_tag', ->
  $.ajax
    url: window.update_tags_url
    dataType: "json"
    data: $('#tag_form').serialize()
    type: "POST"
    success: (data, status, xhr) ->
      window.location.reload()

getTag = (id) ->
  $.ajax
    url: window.base_tag_url + id + '/edit'
    dataType: "json"
    success: (data, status, xhr) ->
      $('#add_tag_popup_container').html(data.html)
      activateFlexSelect()
      showPopup("#add_tag_popup")

$('.edit_tag').click ->
  getTag($(this).data('id'))

$('body').on 'click', '.remove_field_entry', ->
  parent_box = $(this).closest('.field_entry')
  parent_box.hide()
  $(parent_box).find('.destroy_field').val(true)
  tags_fields_area = parent_box.find('.tags_fields')
  tags_fields_area.empty()
  remaining_entries = $('#fields_box .field_entry:visible').length
  $('#field_entries').html remaining_entries
  if remaining_entries < 1
    $('#fields_table .table_header').hide()


$('body').on 'change', '.field', ->
  parent_box = $(this).closest('.field_entry')
  tags_fields_area = parent_box.find('.tags_fields')
  tags_fields_area.empty()
  if window.fields_by_name[$(this).val()]
    template = Handlebars.compile($("#tags_field_template").html())
    idx = $(".tags_field").length + 1
    $(parent_box).find('.destroy_field').val(true)
    tags_fields_area.append template({idx: idx, field_id: window.fields_by_name[$(this).val()].id})
  else
    parent_box.find('.field_name').val($(this).val())
    parent_box.find('.data_type_value').val(parent_box.find('.data_type').val())


$('body').on 'change', '.data_type', ->
  current_value = $(this).val()
  parent_box = $(this).closest('.field_entry')
  parent_box.find('.data_type_value').val(current_value)

  if current_value != 'Nested'
    if $(parent_box).find('.nested_fields_area').is(':visible')
      $(parent_box).find('.nested_fields_area').remove()
      $(parent_box).find('.nested_box_btn').hide()
  else
    $(parent_box).append('<div class="nested_fields_area inline-container mtop-6 mbtm-10 mlt-30 hidden" style="padding: 10px 0 10px 10px;width: 480px;"><div class="nested_fields"></div><div class="button popup_active_btn dib add_nested mtop-10" style="padding: 0 5px;cursor: pointer">+</div></div>')
    $(parent_box).find('.nested_fields_area .add_nested').click()
    $(parent_box).find('.remove_nested_field_entry').hide()
    $(parent_box).find('.nested_fields_area').show()
    $(parent_box).find('.nested_box_btn').show()

$('body').on 'click','.add_nested', (event) ->
  template = Handlebars.compile($('#nested_field_template').html())
  parent_box = $(event.target).closest('.field_entry')
  parent_idx = parent_box.find('.field_index').val()
  idx = parent_box.find('.nested_field_entry').length + 1
  $(event.target).closest('.nested_fields_area').find('.nested_fields').append template({idx: idx, parent_idx: parent_idx})
  $(event.target).closest('.nested_fields_area').find('.remove_nested_field_entry').show()

$('body').on 'click', '.remove_nested_field_entry', ->
  parent_box = $(this).closest('.nested_fields')
  nested_field_entry = $(this).closest('.nested_field_entry')
  nested_field_entry.hide()
  nested_field_entry.find('.destroy_nested_field').val(true)
  if $(parent_box).find('.nested_field_entry:visible').length < 2
    $(parent_box).find('.remove_nested_field_entry').hide()

$('body').on 'click','.nested_box_btn', ->
  if $(this).hasClass('icon_collapse')
    $(this).removeClass('icon_collapse').addClass('icon_expand')
    $(this).closest('.field_entry').find('.nested_fields_area').hide()
  else
    $(this).removeClass('icon_expand').addClass('icon_collapse')
    $(this).closest('.field_entry').find('.nested_fields_area').show()


$(window).resize ->
  showPopup("#add_tag_popup")