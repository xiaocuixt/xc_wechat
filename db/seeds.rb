# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Diymenu.delete_all
Diymenu.create(id: 1, name: '烩员', url: 'http://baidu.com', is_show: true, sort: 0)
Diymenu.create(id: 2, name: '活动', url: 'http://baidu.com', is_show: true, sort: 1)
Diymenu.create(id: 3, name: '我们', url: 'http://baidu.com', is_show: true, sort:2)
Diymenu.create(id: 4, parent_id: 1, name: '我要入烩', url: 'http://baidu.com', is_show: true, sort:0)
Diymenu.create(id: 5, parent_id: 1, name: '我的信息', url: 'http://baidu.com', is_show: true, sort:1)
Diymenu.create(id: 6, parent_id: 1, name: '我的活动', url: 'http://baidu.com', is_show: true, sort:2)