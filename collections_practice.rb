# your code goes here
require "pry"

def begins_with_r(array)
  # Return true if every element of the tools array starts
  # with an "r" and false otherwise.
  # should return false if there's an element that does not begin with r
  true_count = 0
  array.each { |variable|
    variable[0] == "r" ? true_count+=1 : true_count-=1
  }
  true_count == array.length ? true : false
end

def contain_a(array)
  #contain_a return all elements that contain the letter 'a'
  a_list = []
  array.each { |variable|
    variable.include?("a") ? a_list << variable : nil
  }
  a_list
end

def first_wa(array)
  #first_wa Return the first element that begins with the letters 'wa'
  wa_list = []
  array.each { |variable|
    variable[0]=="w"&&variable[1]=="a" ? wa_list << variable : nil
  }
  wa_list[0]
end

def remove_non_strings(array)
  # remove anything that's not a string from an array
  array.delete_if {|variable| variable.class != String}
end


def count_elements(array)
  # count how many times something appears in an array
  array.uniq.collect { |names|
      names[:count] = array.count(names)
      names
    }
end


def merge_data(keys, data)
  # combines two nested data structures into one
  merged_data = []
  data.each { |i|
    i.each { |j,k|
      keys.each { |l|
        l.values[0] == j ? merged_data << l.merge(k): nil
        # puts "l.values[0]=#{l.values[0]}, j=#{j}, l=#{l}, k=#{k}"
      }
    }
  }
  merged_data
end


def find_cool(array)
  cool_array = []
  array.each do |variable|
    variable[:temperature] == "cool" ? cool_array << variable : nil
  end
  cool_array
end

def organize_schools(schools)

  org_schools = {}
  schools.uniq.each do |school,location|
    org_schools[location[:location]].nil? ? org_schools[location[:location]] = [school] : org_schools[location[:location]] << school
    # binding.pry
  end
  org_schools
end
