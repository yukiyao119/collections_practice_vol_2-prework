require 'pry'
# your code goes here

def begins_with_r(arr)
  arr.all? { |element|
    element[0]=="r"
  }
end 

def contain_a(arr)
  result = []
  arr.collect do |element|
    if element.include?("a") == true 
      result << element 
    end 
  end
  result
end

def first_wa(arr)
  result = []
  arr.collect do |element|
    if element[0]=='w' && element[1]=='a'
      result << element
    end 
  end 
  result[0]
end 

def remove_non_strings(arr)
  arr.keep_if {|e| e.class == String}
end 

def count_elements(arr)
  result = []
  new_arr = arr.uniq  # no duplicate element in this new arr now.
                      # [{:name => "blake"}, {:name => "ashley"}]
  new_arr.collect do |element|
    element[:count] = arr.count(element)
                      # counts on original arr
    result << element
  end
  result
end 


def merge_data(keys, data)
 
  result = []
  keys.collect do |hash|
    data.collect do |person_hash|
      person_hash.collect do |name, details|
        # binding.pry
        if name == hash[:first_name]
          result << details.merge(hash)
          break
        end 
        # binding.pry
      end 
    end 
  end 
  result
end 





#   describe '#find_cool' do

#     # Question 7

#     it 'find all cool hashes' do
#       expect(find_cool(cool)).to eq([{:name => "blake",:temperature => "cool"}])
#     end

#   end

#   describe '#organize_schools' do

#     # Question 8

#     it 'organizes the schools by location' do
#       expect(organize_schools(schools)).to eq(organized_schools)
#     end

#   end

# end