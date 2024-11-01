# src/contrastChecker.coffee

hexToRgb = (hex) ->
  hex = hex.replace("#", "")
  r = parseInt(hex.substring(0, 2), 16)
  g = parseInt(hex.substring(2, 4), 16)
  b = parseInt(hex.substring(4, 6), 16)
  [r, g, b]

luminance = (rgb) ->
  [r, g, b] = rgb.map (value) ->
    value /= 255.0
    if value <= 0.03928 then value /= 12.92 else ((value + 0.055) / 1.055) ** 2.4
  0.2126 * r + 0.7152 * g + 0.0722 * b

contrastRatio = (color1, color2) ->
  lum1 = luminance(color1) + 0.05
  lum2 = luminance(color2) + 0.05
  if lum1 > lum2 then lum1 / lum2 else lum2 / lum1

module.exports = { contrastRatio }
