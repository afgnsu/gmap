# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Guest", description: "Read Only"})
r2 = Role.create({name: "Member", description: "Create,Read,Update Shops & Infos"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})

u1 = User.create({name: "管理者", email: "a@a.a", password: "12345678", password_confirmation: "12345678", role_id: r3.id})
u2 = User.create({name: "會員", email: "b@b.b", password: "13145678", password_confirmation: "12345678", role_id: r2.id})
u3 = User.create({name: "訪客", email: "c@c.c", password: "12345678", password_confirmation: "12345678", role_id: r1.id})
