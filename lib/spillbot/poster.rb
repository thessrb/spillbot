meetup={"day"=>"28", "month"=>"02" ,"talk"=>{"title"=>"Workshop","speaker"=>"All","time_from"=>"19:00","time_to"=>"21:00"}}
output = "poster.svg"
require 'erb'

template_file=File.join(File.dirname(__FILE__),'..','..','template','tmpl_thessrb.svg')
template_content=File.read(template_file)
template=ERB.new(template_content)
svg=template.result
File.open(output,"wb"){ |f| f.write(svg) }
