insert into items (title,description,start_price,bid_increment,start_date,stop_date,buy_it_now) VALUES
  ('Axe of Ares','given to the mankind by gods','1000000','500000','2019-01-01','2019-12-31','Y'),
  ('Crown of Wilgelm the Conqueror','once belonged to one of the most powerful rulers in history','10000000','5000000','2019-01-01','2019-12-31','Y'),
  ('Staff of Magnus','contains the power of magic','7777777','50000','2019-01-01','2019-12-31','Y'),
  ('Book of Dead','can grant a power to revive dead','10000000','5000000','2019-01-01','2019-12-31','Y');

insert into users (full_name,billing_adress,login,password) VALUES
  ('Ivan Ivanov','Izhevsk, Lenina St. 10-23','boss','123'),
  ('Roman Abramovich','Moskow, Arbat St. 12-1','-','-'),
  ('Max James','New York, St.jack St. 5','max','xam'),
  ('Konstantinos Dakascos','Athens, Hercules St. 10','zeus','111'),
  ('Sergey Kovalev','-','auctionist','master');

insert into bids (bid_date,bid_value,items_item_id,users_user_id) VALUES
('2019-01-24','1500000','2','1'),('2019-01-25','2000000','2','2'),('2019-01-25','100000000','1','2'),('2019-01-25','150000000','3','2'),
('2019-01-25','1500000','4','2'),('2019-01-25','9999999','5','2'), ('2019-03-20','3000000','2','4'),('2019-06-11','7827777','3','3');
  
SELECT * from bids
  where users_user_id = '1';
 
  SELECT * from items
    where users_user_id='6';

  SELECT * from items
    where LOWER(title) like LOWER('%dead%');

   SELECT * from items
    where LOWER(description) like LOWER('%power%');

  SELECT us.full_name, AVG(it.start_price) from items it
  join users us on it.users_user_id = us.user_id
  where us.user_id in ('1','2','3','4','5','6')
  GROUP BY us.full_name;

  select it.title,MAX(b.bid_value),us.full_name from bids b
  join items it on b.items_item_id = it.item_id
  join users us on b.users_user_id = us.user_id
  group by it.item_id;

  select * from items it
  join users us on it.users_user_id = us.user_id
  where us.user_id = '6';

  delete from bids
  where users_user_id=1;

  delete from items
  where users_user_id=6;

  update items it
  join users us on it.users_user_id=us.user_id
  set it.start_price=it.start_price*2
  where u.full_name='Sergey Kovalev';