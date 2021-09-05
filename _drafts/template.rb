puts 'date diff'
date = Time.now + 1 + gets.chomp.to_i
puts 'title'
title = gets.chomp
puts 'english title'
english_title = gets.chomp
puts 'tags'
tag = gets.chomp

template = <<TEMPLATE
---
layout: post
title:  "#{title}"
date:   #{date.strftime('%Y-%m-%d')}
tags:   #{tag}
---


TEMPLATE

File.open("#{date.strftime('%Y-%m-%d')}-#{english_title}.md", 'w') do |f|
  f.write template
end

