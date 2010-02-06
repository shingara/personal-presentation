class AccessChild < Access
  def i_am_public
    i_am_protected
  end

  def can_i_call
    i_am_private
  end
end

access = AccessChild.new
access.i_am_public # works
access.i_am_protected # not accessible
access.i_am_private # not accessible
access.can_i_call # not accessible
