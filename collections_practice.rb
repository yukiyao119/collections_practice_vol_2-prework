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

def find_cool(data)
  result = []
  data.collect do |person|
    # binding.pry
    if person[:temperature] == "cool"
      result << person
    end 
  end 
  result
end 

def organize_schools(schools)
  result = {}
  schools.collect do |school, details|
    if result.keys.include?(details[:location]) == false
      result[details[:location]] = [school]
    else
      result[details[:location]] << school
    end 
  end 
  result
end 

  # let(:schools) {
  #   {
  #     "flatiron school bk" => {
  #       :location => "NYC"
  #     },
  #     "flatiron school" => {
  #       :location => "NYC"
  #     },
  #     "dev boot camp" => {
  #       :location => "SF"
  #     },
  #     "dev boot camp chicago" => {
  #       :location => "Chicago"
  #     },
  #     "general assembly" => {
  #       :location => "NYC"
  #     },
  #     "Hack Reactor" => {
  #       :location => "SF"
  #     }
  #   }
  # }
  # let(:organized_schools) {
  #   {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
  #   "SF"=>["dev boot camp", "Hack Reactor"],
  #   "Chicago"=>["dev boot camp chicago"]}
  # }

#   describe '#organize_schools' do

#     it 'organizes the schools by location' do
#       expect(organize_schools(schools)).to eq(organized_schools)
#     end

#   end

# end