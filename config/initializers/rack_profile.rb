Rack::MiniProfiler.config.start_hidden = true
if Rails.env == 'development'
  require 'rack-mini-profiler'

  Rack::MiniProfilerRails.initialize!(Rails.application)
end