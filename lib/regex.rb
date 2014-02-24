class Regex

  def initialize(console, args)
    @console = console
    @args = args
  end

  def hello 
    p 'hello' + @args.join(', ')
  end

  def set 
    @console.reg_expression = @args.first
  end

  alias_method :add, :set

  def view 
    print @console.reg_expression
  end

  alias_method :list, :view
  alias_method :show, :view

end
