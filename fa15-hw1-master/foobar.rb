class Foobar
  def self.baz(str_array)
  	int_array = str_array.map(&:to_i)
    final_array = int_array.map{|item| item+2 }
    final_array.delete_if &:odd?
    final_array.uniq
    final_array.delete_if {|item| item >= 10}
    final_array.inject{|sum, x| sum + x}
  end
end
