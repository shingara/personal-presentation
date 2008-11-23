project1 = Project.new
project1.title = 'EDF Entreprise'
project1.save

project2 = Project.create(:title => 'GARI')
project2.destroy

all_Projects = Project.find :all
