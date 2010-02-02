class Access
  def i_am_public
    puts 'public'
  end

  protected

  def i_am_protected
    'protected'
  end

  private

  def i_am_private
    'private'
  end
end

access = Access.new
access.i_am_public # works
access.i_am_protected # not accessible
access.i_am_private # not accessible
