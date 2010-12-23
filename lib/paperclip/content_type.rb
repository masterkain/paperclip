module Paperclip
  class << self
    if defined? Rack::Mime
      def content_type_for(type) #:nodoc:
        case type
          when "aac" then "audio/aac"
          when "mp3", "mp2" then "audio/mpeg"
          when "m4a", "m4b", "m4v", "m4r", "3gp", "mp4" then "audio/mp4"
          when "ogg" then "application/ogg"
          when "flac" then "audio/flac"
          when "spx" then "audio/speex"
          when "wma" then "audio/x-ms-wma"
          when "rm", "ram" then "audio/x-pn-realaudio"
          when "wav" then "audio/vnd.wave"
          when "mpc", "mp+", "mpp" then "audio/x-musepack"
          when "aiff", "aif", "aifc" then "audio/x-aiff"
          when "tta" then "audio/x-tta"
          else
            Rack::Mime.mime_type(".#{type}")
        end
      end
    else
      def content_type_for(type) #:nodoc:
        case type
          when %r"jpe?g"                 then "image/jpeg"
          when %r"tiff?"                 then "image/tiff"
          when %r"png", "gif", "bmp"     then "image/#{type}"
          when "txt"                     then "text/plain"
          when %r"html?"                 then "text/html"
          when "csv", "xml", "css", "js" then "text/#{type}"
          when "aac" then "audio/aac"
          when "mp3", "mp2" then "audio/mpeg"
          when "m4a", "m4b", "m4v", "m4r", "3gp", "mp4" then "audio/mp4"
          when "ogg" then "application/ogg"
          when "flac" then "audio/flac"
          when "spx" then "audio/speex"
          when "wma" then "audio/x-ms-wma"
          when "rm", "ram" then "audio/x-pn-realaudio"
          when "wav" then "audio/vnd.wave"
          when "mpc", "mp+", "mpp" then "audio/x-musepack"
          when "aiff", "aif", "aifc" then "audio/x-aiff"
          when "tta" then "audio/x-tta"
          else "application/x-#{type}"
        end
      end
    end
  end
end
