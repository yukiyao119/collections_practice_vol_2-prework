require 'pry'
# your code goes here
#   let(:keys) {
#     [
#           {
#             :first_name => "blake"
#         },
#           {
#             :first_name => "ashley"
#         }
#     ]
#   }

#   let(:data) {
#     [
#           {
#             "blake" => {
#                 :awesomeness => 10,
#                     :height => "74",
#                   :last_name => "johnson"
#             },
#             "ashley" => {
#                 :awesomeness => 9,
#                     :height => 60,
#                   :last_name => "dubs"
#             }
#         }
#     ]
#   }

#   let(:merged_data) {
#     [
#           {
#             :first_name => "blake",
#             :awesomeness => 10,
#                 :height => "74",
#               :last_name => "johnson"
#         },
#           {
#             :first_name => "ashley",
#             :awesomeness => 9,
#                 :height => 60,
#               :last_name => "dubs"
#         }
#     ]
#   }

#   let(:cool) {
#     [
#             {
#                   :name => "ashley",
#             :temperature => "sort of cool"
#         },
#             {
#                   :name => "blake",
#             :temperature => "cool"
#         }
#     ]
#   }

#   let(:schools) {
#     {
#       "flatiron school bk" => {
#         :location => "NYC"
#       },
#       "flatiron school" => {
#         :location => "NYC"
#       },
#       "dev boot camp" => {
#         :location => "SF"
#       },
#       "dev boot camp chicago" => {
#         :location => "Chicago"
#       },
#       "general assembly" => {
#         :location => "NYC"
#       },
#       "Hack Reactor" => {
#         :location => "SF"
#       }
#     }
#   }
#   let(:organized_schools) {
#     {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#     "SF"=>["dev boot camp", "Hack Reactor"],
#     "Chicago"=>["dev boot camp chicago"]}
#   }


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
# keys = [{:first_name=>"blake"}, {:first_name=>"ashley"}]
 
  result = []
  keys.collect do |hash|
    data.collect do |person_hash|
      # binding.pry
      person_hash.collect do |name, details|
        # binding.pry
        result << details.merge(hash)
        # binding.pry
      end 
    end 
  end 
  result
end 

# data = [ 
#   {
#     "blake" => 
#     {
#     :awesomeness=>10, 
#     :height=>"74", 
#     :last_name=>"johnson"
#     }, 
#   {
#     "ashley" => {
#     :awesomeness=>9, 
#     :height=>60, 
#     :last_name=>"dubs"}
#   } ]



#   describe '#merge_data' do

#     it 'combines two nested data structures into one' do
#       expect(merge_data(keys, data)).to eq(merged_data)
#     end

#   end

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