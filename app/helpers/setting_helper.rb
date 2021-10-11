# frozen_string_literal: true

module SettingHelper

  def highlighted_feature_options
    Setting.get_field('highlighted_feature').dig(:options, :option_values).map do |highlighted_feature_option|
      [ I18n.t(highlighted_feature_option, scope: %i(setting highlighted_feature options)), highlighted_feature_option ]
    end
  end

  def highlighted_feature_path
    public_send(I18n.t(Setting.highlighted_feature, scope: %i(setting highlighted_feature paths)))
  end

  def highlighted_feature_title
    I18n.t(Setting.highlighted_feature, scope: %i(setting highlighted_feature titles))
  end

  def highlighted_feature_icon
    I18n.t(Setting.highlighted_feature, scope: %i(setting highlighted_feature icons))
  end

end
