require 'colorable'
include Colorable

hex = '#14191f'
c = Color.new(hex).hsb
c[1] -= 10
out = Color.new(HSB.new(*c)).hex.downcase
puts out.inspect
