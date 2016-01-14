# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

classroom = Classroom.create({ access_code: '123-456',
                               subject: '6º Ano B',
                               description: 'Essa é uma sala virtual da turma do 6º Ano B'})

post = Post.create({ text: 'Esse é um post de teste.' })
post.classroom = classroom

comment = Comment.create({ text: 'Ele funciona!!!' })
comment.post = post

list = ExerciseList.create({ title: 'Exercise List One' })

question = Question.create({text: 'Qual a soma dos quadrados de um cateto?'})

options = Option.create([
                            {title: 'A', text: 'A hipotenusa'},
                            {title: 'B', text: 'O quadrado da hipotenusa'},
                            {title: 'C', text: 'A raiz quadrada hipotenusa'},
                            {title: 'D', text: 'A hipotenusa elevada a pi'}
                        ])

question.options = options
question.exercise_list = list

