class Strings

  def initialize(console, args)
    @console = console
    @args = args
  end
  
  def hello
    p 'hello' + @args.join(', ')
  end

  def add 
    @args.each do |arg|
      @console.strings << arg
    end
  end

  def remove 
    @console.strings.reject!{|str| str == @args.first }    
  end

  def view 
    @console.strings.map{|s| print "#{s}\n".yellow}
  end

end
