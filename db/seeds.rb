User.find_or_create_by(email: 'u@u.com') do |user|
    user.name = 'ronaldo'
    user.password = 'goat'
    user.save!
end

Teacher.find_or_create_by(email: 't@t.com') do |teacher|
    teacher.name = 'cristiano'
    teacher.password = 'goat'
    teacher.save!
end

Course.find_or_create_by(title:'Introduction to HTML') do |course|
    course.description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    course.teacher = Teacher.first
    course.save!
end

Lesson.find_or_create_by(title:'Introduction and Course Outline') do |lesson|
    lesson.content = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    lesson.course = Course.first
    lesson.save!
end

Lesson.find_or_create_by(title:'Syntax and Tags') do |lesson|
    lesson.content = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    lesson.course = Course.first
    lesson.save!
end


puts "seeding completed :)"


