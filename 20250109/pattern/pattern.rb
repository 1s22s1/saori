# frozen_string_literal: true

require 'victor'

def generate_curtain(file_name, colors)
  svg = Victor::SVG.new(width: 1280, height: 1280)

  svg.build do
    (0..9).each do |i|
      (0..9).each do |j|
        rect x: i * 128, y: j * 128, width: 128, height: 128, rx: 8,
             fill: colors[colatz_count(i * j + 1 + i + j) % colors.length]
      end
    end
  end

  svg.save file_name
end

def colatz_count(number)
  count = 0

  loop do
    if number.even?
      number /= 2
    else
      number = number * 3 + 1
    end

    count += 1

    return count if number == 1
  end
end

generate_curtain('dodgerblue', %w[#1e90ff #cce6ff #99ccff #66b3ff #3399ff #0080ff])
generate_curtain('ishitake', %w[#e5abbe #e6b8c7 #e68aa8 #e65c8a #e62e6b #e6004d])
generate_curtain('beige', %w[#eedcb3 #eddfbe #edd18e #edc25f #edb42f #eda600])
