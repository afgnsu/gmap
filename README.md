#■Gmaps4rails+Geocoder+Carrierwave+Devise+Cancancan 光明商圈美食地圖 - 蘇介吾 105/03/08

##安裝：
1. git clone https://github.com/afgnsu/gmap.git
2. rvm install 2.2.0
3. rvm use 2.2.0
4. rvm gemset create rails420
5. rvm use 2.2.0@rails420
6. gem i rails -v 4.2.0
7. cd gmap
8. bundle
9. rake db:create db:migrate db:seed
10. mysql -u root -p
 * use gmap_d;
 * source infos.sql;
 * source events.sql;
 * source shops.sql;
11. rails s
12. 以『管理者』帳號 a@a.a 和密碼 12345678 登入。

![Demo](https://github.com/afgnsu/gmap/blob/master/DEMO.png)
![Demo1](https://github.com/afgnsu/gmap/blob/master/DEMO1.png)
![Demo2](https://github.com/afgnsu/gmap/blob/master/DEMO2.png)
![Demo3](https://github.com/afgnsu/gmap/blob/master/DEMO3.png)
