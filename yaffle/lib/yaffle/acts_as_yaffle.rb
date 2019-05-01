module Yaffle
  module ActsAsYaffle
    extend ActiveSupport::Concern

    # included: includeメソッドによってモジュールが他のモジュールやクラスにインクルードされた "後に" call
    included do
      def squawk(string)
        # string.to_squawkは拡張したコアクラス前提(String.to_squawk)
        write_attribute(self.class.yaffle_text_field, string.to_squawk)
      end
    end

    class_methods do
      def acts_as_yaffle(options = {})
        # cattr_accessor: 値を全てのクラスで共有したいときに使う
        cattr_accessor :yaffle_text_field, default: (options[:yaffle_text_field] || :last_squawk).to_s
      end
    end
  end
end
