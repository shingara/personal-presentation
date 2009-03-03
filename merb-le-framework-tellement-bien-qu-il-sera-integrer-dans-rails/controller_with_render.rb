class Widgets < Application
  def licence
    render
  end

  def manual
    @manual = ...
    render @manual
  end
end
