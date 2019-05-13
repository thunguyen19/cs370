# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
tutees = [{:sid => 123456789, :first_name => "Bob", :last_name => "Burgers", :email => "bobs@berkeley.edu", :birthdate => "1992-01-01", :privilege => 'No', :gender => 'male',
          :ethnicity => 'Asian', :dsp => 'Yes', :transfer => 'Yes', :year => '4 years', :pronoun => 'he/his', :major => 'EECS', :password => 'topsecret', :password_confirmation => 'topsecret', :confirmed_at => Time.now}]
tutors =[{:type_of_tutor => "20 hour TA", :grade_level => 'Junior', :first_name => 'Bart', :last_name => 'Simpson', :email => 'bart@berkeley.edu'},
				 {:type_of_tutor => "20 hour TA", :grade_level => 'Senior', :first_name => 'Oski', :last_name => 'Bear', :email => 'oski_bear@berkeley.edu'}]
courses = [{:course_num => 1, :name => "CS61A", :semester => "Sp2019"},
					 {:course_num => 2, :name => "CS61B", :semester => "Sp2019"}]
requests = [{:tutee_id => 1, :course_id => 1, :subject => "tree"},
						{:tutee_id => 1, :course_id => 1, :subject => "recursion"},
						{:tutee_id => 1, :course_id => 2, :subject => "linked list"}]
meetings = [{:tutor_id => 1, :request_id => 1, :evaluation_id => 1},
						{:tutor_id => 2, :request_id => 2, :evaluation_id => 2},
						{:tutor_id => 1, :request_id => 3, :evaluation_id => 3}]
evaluations = [{:knowledgeable=>5, :helpful=> 4, :clarity=>4, :final_comments => 'woopdy di scoop woop'},
							 {:knowledgeable=>4, :helpful=> 4, :clarity=>4, :final_comments => 'awesome'},
							 {:knowledgeable=>5, :helpful=> 5, :clarity=>4, :final_comments => 'cool'}]
course_list = ["CS10", "CS61A", "CS61B", "CS61C", "CS70", "CS88", "EE16A", "EE16B", "DATA8"]
tutee_cs_scholar = {:sid => 123456789, :first_name => "Peter", :last_name => "Griffin", :email => "alvinnguyen@berkeley.edu", :birthdate => "1992-01-01", :privilege => 'cs61a', :gender => 'male',
                    :ethnicity => 'Asian', :dsp => 'Yes', :transfer => 'Yes', :year => '4+', :pronoun => 'he/his', :major => 'EECS'}
tutee_not_cs_scholar = {:sid => 123456789, :first_name => "Naruto", :last_name => "Uzumaki", :email => "bobs@berkeley.edu", :birthdate => Time.now, :privilege => 'No', :gender => 'male',
                        :ethnicity => 'Asian', :dsp => 'Yes', :transfer => 'Yes', :year => '4+', :pronoun => 'he/his', :major => 'EECS'}


course_list.each_with_index do |course, index|
  Course.create!(:course_num => index, :name => course, :semester => "Sp2019")
end

tutors.each do |tutor|
  Tutor.create!(tutor)
end

tutees.each do |tutee|
  Tutee.create!(tutee)

end

courses.each do |course|
  Course.create!(course)
end

requests.each do |request|
  Request.create!(request)
end
evaluations.each do |evaluation|
	Evaluation.create!(evaluation)
end
meetings.each do |meeting|
  Meeting.create!(meeting)
end


10.times do
  Tutor.create(
      type_of_tutor: "CSM",
      grade_level: "4th",
      email: "alvinnguyen@berkeley.edu",
      first_name: "Alvin",
      last_name: "Nguyen",
      birthday: Time.now,
      gender: "Male",
      sid: 4208470238,
      major: "Cognitive Science",
      dsp?: false,
      transfer?: false
  )
end

10.times do
  BerkeleyClass.create!(
      CS61A: true,
      CS61B: true,
      CS61C: true,
      CS70: false,
      EE16A: false,
      CS88: false,
      CS10: false,
      DATA8: false
  )
end

# 10.times do
#   Tutee.create!(tutee_cs_scholar)
#   Tutee.create!(tutee_not_cs_scholar)
# end

BERKELEY_CLASSES = BerkeleyClass.all
TUTORS = Tutor.all

BERKELEY_CLASSES.each_with_index do |item, index|
  TUTORS[index].update_column(:berkeley_classes_id, item.id)
end

TUTORS.each do |tutor|
  Request.create({:tutee_id => tutor.id, :course_id => 1, :subject => "tree"})
end
