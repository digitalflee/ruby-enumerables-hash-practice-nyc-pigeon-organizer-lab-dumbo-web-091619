
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |pigeondata, value|
    value.each do |stats, allnames|
      allnames.each do |name|
        if pigeon_list[name] == nil 
          pigeon_list[name] = {}
        end 
        if pigeon_list[name][pigeondata] == nil 
          pigeon_list[name][pigeondata] = []
        end
        pigeon_list[name][pigeondata] << stats.to_s 
      end
    end
  end 
  return pigeon_list 
end
