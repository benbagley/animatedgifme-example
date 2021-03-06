module GifsHelper

  def linked_tag_list(gif)
    list = gif.tags.map do |tag|
      link_to tag, random_gif_path(tag: tag)
    end

    safe_join list, ", "
  end

  def full_gif_url(gif)
    gif.image_url(host: request.protocol + request.host_with_port)
  end
end
