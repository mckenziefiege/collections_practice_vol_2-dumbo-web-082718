def begins_with_r(array)
  starts_with_r = []
  i = 0
  while i < array.length
    if array[i].start_with?("r")
      starts_with_r << array[i]
    end
    i += 1
  end
  if starts_with_r == array
    true
  else
    false
  end
end


def contain_a(array)
  with_a = array.select do |word|
    word.include?("a")
  end
  return with_a
end


def first_wa(array)
  array.find do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.is_a?(String)
  end
end


def count_elements(array)
  count_array = []
  array.each do |element|
    count_array << element unless count_array.include?(element)
  end
    count_array.each do |element|
      new_array = array.select do |name|
        element == name
    end
    element[:count] = new_array.length
  end
  count_array
end


def merge_data(keys, data)
  merged_data = []
  keys.each do |name_of_person|
    name = name_of_person[:first_name]
      data.each do |data|
        if data[name]
          merge_person = data[name]
          merge_person[:first_name] = name
          merged_data << merge_person
        end
      end
  end
  merged_data
end


def find_cool(hash)
  hashes_with_cool = []
  hash.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        hashes_with_cool << hash
      end
    end
  end
  hashes_with_cool
end


def organize_schools(schools)
  hash_one = {}
  hash_two = {}

  schools.each do |schools, location|
    hash_one[location] = []
  end

  schools.each do |schools, location|
    hash_one[location] << schools
  end

  hash_one.each do |location_hash, school_array|
    location_hash.each do |key, location_name|
      hash_two[location_name] = school_array
    end
  end
  hash_two
end
