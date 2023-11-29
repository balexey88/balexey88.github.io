require 'open-uri'

Jekyll::Hooks.register :site, :after_init do
  file = Dir.pwd + '/docs/constants.md'
  url = 'https://raw.githubusercontent.com/wiki/udx/wp-stateless/Constants.md'

  if !File.exist?(file)
    begin
      remote_file = open(url)
      remote_file_contents = remote_file.read

      File.open(file, 'a') do |f|
        f.write("---\n")
        f.write("title: Constants\n")
        f.write("permalink: /docs/constants/\n")
        f.write("---\n\n")
        
        f.write("Current time: #{Time.now}\n\n")
        
        f.write(remote_file_contents)
      end

    rescue
      puts 'Could not download Constants page: ' + url
    else 
      puts 'Updated constnts page ' + file
    end
  end
end
