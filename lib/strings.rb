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

  def clear_all
    @console.strings = []
  end

  def view 
    @console.strings.map{|s| print "#{s}\n".yellow}
    print 'No test strings added yet.'.yellow if @console.strings.length < 1
  end
  
  alias_method :list, :view
  alias_method :show, :view

  def console
    @console
  end

end
