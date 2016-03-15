module ApplicationHelper
  def tracking_url(tag, tag_fields)
    params_hash = {}
    tag_fields.each do |tf|
      params_hash[tf.name] = 'XXXXX'
    end
    track_tag_url(tag, params_hash)
  end

  def tracking_pixel(tag, tag_fields)
    "<img src=\"#{tracking_url(tag, tag_fields)}\" style=\"display:none\">"
  end

end

