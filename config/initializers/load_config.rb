Rails.application.config.merge(Hashr.new(Rails.application.config_for(:config)))
