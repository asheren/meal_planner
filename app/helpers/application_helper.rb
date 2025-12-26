module ApplicationHelper
  def ensure_protocol(url)
    return url if url.blank?
    url.match?(/\Ahttps?:\/\//) ? url : "https://#{url}"
  end
end
