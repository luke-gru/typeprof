def foo
  yield
end

foo do
  raise
  "str"
rescue
  next 42
end

__END__
# Classes
class Object
  def foo : { () -> (Integer | String) } -> (Integer | String)
end
