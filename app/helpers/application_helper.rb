# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  NUM_EMOJI = { 1 => "&#xF987;", 2 => "&#xF988;", 3 => "&#xF989;", 4 => "&#xF98A;", 5 => "&#xF98B;",
                6 => "&#xF98C;", 7 => "&#xF98D;", 8 => "&#xF98E;", 9 => "&#xF98F;", 0 => "&#xF990;"}
            
  # 携帯のアクセスキー対応
  def link_to_mobile(key, name, options={}, html_options=nil, *parameters_for_method_reference)
    html_options = {:accesskey=>key}
    link_to("#{NUM_EMOJI[key]}#{name}", options, html_options, *parameters_for_method_reference)
  end
  
end
