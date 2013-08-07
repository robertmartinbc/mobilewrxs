module ApplicationHelper
  def will_paginate(collection_or_options = nil, options = {})
    if collection_or_options.is_a? Hash
      options, collection_or_options = collection_or_options, nil
    end
    unless options[:renderer]
      options = options.merge :renderer => BootstrapLinkRenderer
    end
    super *[collection_or_options, options].compact
  end

  def qr_code(size, url)
  "https://chart.googleapis.com/chart?cht=qr&chs=#{size}x#{size}&chl=#{CGI.escape(url)}"
  end
end
