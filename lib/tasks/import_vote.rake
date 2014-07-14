desc "import votes"

task :import_vote => [:environment]  do 
     read_vote_file = IO.readlines("#{Rails.root}/public/votes.txt")
     datas = []
      read_vote_file.each do |i|
	begin
	datas = i.split(" ")	
        check_key = ["VOTE","Campaign","Validity","Choice","CONN","MSISDN","GUID","Shortcode"]	
	check_pass_key = [datas[0],datas[2].split(":")[0],datas[3].split(":")[0],datas[4].split(":")[0],datas[5].split(":")[0],datas[6].split(":")[0],datas[7].split(":")[0],datas[8].split(":")[0]]	
        if  check_key ==  check_pass_key && !data[1].blank?
	VoteSm.create(:vote_number => datas[1], :compaign_name => datas[2].split(":")[1],:validity => datas[3].split(":")[1] , :choice => datas[4].split(":")[1],:conn => datas[5].split(":")[1],:msisdn =>datas[6].split(":")[1] , :guid =>datas[7].split(":")[1] , :short_code=>datas[8].split(":")[1] )      
	puts "Success"		
	else
          puts "Format is wrong"
        end
        rescue Exception => e
	puts "Your Data Format is wrong please check #{e.message}"
        end	
   end
end

