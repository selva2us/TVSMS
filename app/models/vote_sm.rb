class VoteSm < ActiveRecord::Base
#~ validates :vote_number, :presence 
#~ validates :vote_number, :uniqueness 
def self.find_all_persons(params)
     name = where(id:params[:id]).first.compaign_name
    return where(compaign_name: name, validity: "during").group("choice").count
end
end
