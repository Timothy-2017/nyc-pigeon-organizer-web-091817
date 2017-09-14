require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key_trait, value_specifics|
    #binding.pry
    value_specifics.each do |key_specifics, value_names|
      #binding.pry
      value_names.each do |name|
        #binding.pry
        pigeon_list[name] ||= {}
        pigeon_list[name][key_trait] ||= []
        pigeon_list[name][key_trait] << key_specifics.to_s
      end
    end
  end
  pigeon_list
end
