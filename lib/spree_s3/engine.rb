module SpreeS3
  class Engine < Rails::Engine
    engine_name 'spree_s3'
    
    config.autoload_paths += %W(#{config.root}/lib)
    
    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end