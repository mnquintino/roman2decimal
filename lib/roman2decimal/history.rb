class History
  
  def self.create_and_write(text)
    File.write("out.txt", text, mode:"a")
  end

  def self.read()
    File.read("out.txt").split("\n")
  end
  
  def self.delete
    File.delete("out.txt") if File.exists? "out.txt"
  end
end