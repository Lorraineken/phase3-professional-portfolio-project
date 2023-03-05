#create users
User.create(full_name:"John Doe",email:"john@1234.com",password:"qwerty@2",education_level:"Secondary")
User.create(full_name:"Jane Doe",email:"jane@1234.com",password:"jane22",education_level:"Under-graduate")
User.create(full_name:"Mcdonald Mariga",email:"markd@football.com",password:"markd32#",education_level:"Graduate")
User.create(full_name:"Sandy Moore",email:"sandy@student.com",password:"san@341Q",education_level:"Post-graduate")
User.create(full_name:"James Smart",email:"jsmart@media.com",password:"sdfg1234",education_level:"Secondary")

#create projects
Project.create(name:"Robotic Arm",description:"Built to improve prosthetics in medical field",user_id:5)
Project.create(name:"Smart Farming",description:"Built a green house monitoring system to curb food shortage",user_id:4)
Project.create(name:"Cosmetic market evaluation",description:"Understanding users preferences to cosmetic ",user_id:2)
Project.create(name:"CBC best practices",description:"Research on the limitations of CBC and suggestions on improvement",user_id:4)
Project.create(name:"Online money transfer",description:"Proposal on an easy online money transfer for the transport sector",user_id:3)

#create skills
Skill.create(name:"python",category:"software-dev",user_id:5)
Skill.create(name:"research",category:"education",user_id:4)
Skill.create(name:"java script",category:"software-dev",user_id:3)
Skill.create(name:"market evaluation",category:"commerce",user_id:2)
Skill.create(name:"agro-chemist",category:"education",user_id:4)
Skill.create(name:"full-stack-dev",category:"development",user_id:1)
Skill.create(name:"python",category:"software-dev",user_id:1)