module PatternViewHelper
  include PatternConstantsHelper

  def print_abbreviations
    legend = ABBREVIATIONS.map do |abbrev, definition|
      "<li class='abbreviations'>#{abbrev}: #{definition}</li>"
    end
    legend.join
  end
end