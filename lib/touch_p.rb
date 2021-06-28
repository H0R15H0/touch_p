require "touch_p/version"

module TouchP
  def self.exe
    return if !is_valid?(ARGV)
    touch_p(ARGV)
  end

  def self.touch_p(argv)
    argv.each do |file_path|
      if file_path.include?("/")
        dir = extract_dir(file_path)
        begin
          FileUtils.mkdir_p(dir)
        rescue Errno::EEXIST
        end
      end
    end

    begin
      FileUtils.touch(argv)
    rescue => exception
      puts exception
    end
  end
  
  private
  def self.is_valid?(argv)
    return puts("Usage: touch_p FILE...") if argv[0] == "--help"
    return puts("touch_p: '#{TouchP::VERSION}'") if argv[0] == "--version"
    return puts("Try 'touch_p --help' for more information.") if argv.length == 0 || argv[0][0] == "-"
    return true
  end

  def self.extract_dir(file_path)
    return file_path if file_path[-1] == "/"
    return file_path.split("/").slice(0..-2).join("/")
  end
end
