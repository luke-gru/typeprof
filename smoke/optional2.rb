def foo(a, o1=1, o2=2, *r, z)
  [a, o1, o2, r, z]
end

foo("A", "Z")
foo("A", "B", "Z")
foo("A", "B", "C", "Z")
foo("A", "B", "C", "D", "Z")
foo("A", "B", "C", "D", "E", "Z")

__END__
# Classes
class Object
  foo : (String, *Array[], String) -> [String, Integer, Integer, Array[], String]
      | (String, String, *Array[], String) -> [String, String, Integer, Array[], String]
      | (String, String, String, *Array[String], String) -> [String, String, String, Array[String], String]
      | (String, String, String, *Array[], String) -> [String, String, String, Array[], String]
end
