module Jekyll
  module ZCMECacheBust
    class ZCMECacheDigester
      require 'digest/md5'

      attr_accessor :file_name, :directory

      def initialize(file_name:, directory: nil)
        self.file_name = file_name
      end

      def digest!
        [file_name, '?ver=', Digest::MD5.hexdigest(File.read(file_name))].join
      end
    end
    
    def zcme_bust_cache(file_name)
      ZCMECacheDigester.new(file_name: file_name).digest!
    end
  end
end

Liquid::Template.register_filter(Jekyll::ZCMECacheBust)
