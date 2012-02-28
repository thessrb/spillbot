require 'erb'

def generate_poster(meetup,template_file)
  template_content=File.read(template_file)
  template=ERB.new(template_content)
  template.result(Proc.new{meetup}.binding)
end

if $0 == __FILE__
  template_file=File.join(File.dirname(__FILE__),'..','..','template','tmpl_thessrb.svg')
  meetup={"day"=>"28", "month"=>"02" ,"talk"=>{"title"=>"Workshop","speaker"=>"All","time_from"=>"19:00","time_to"=>"21:00"}}
  output = "poster.svg"
  svg=generate_poster(meetup,template_file)
  File.open(output,"wb"){ |f| f.write(svg) }
end