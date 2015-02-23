require 'colorable'
include Colorable

out = File.open('schemes/tron_dark.yml', 'w')

File.open('schemes/tron.yml', 'r') do |input|
  input.each_line do |line|
    if line.include? 'base0'
      comp = line.split('"')
      hex = "##{comp[1]}"
      c = Color.new(hex).hsb
      c[1] -= 6 if c[1] >= 6
      comp[1] = Color.new(HSB.new(*c)).hex.sub('#', '').downcase
      out.write(comp.join('"'))
    else
      out.write(line)
    end
  end
end
