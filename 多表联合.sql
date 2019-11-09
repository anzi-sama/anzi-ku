select u.id uids,
       u.username,
       u.password,
       u.realname,
       u.sex,
       u.registertime,
       u.status,
       u.age,
       u.address,
       u.phone,
       u.email,
       u.medical_info,
       u.content,
       u.imagepath,
       c.id cid, c.content ccontent,
       r.id rid, r.content rcontent,
       ru.id ruid, ru.content rucontent,
       p.id pid,
       p.province
       
from lol_user u, lol_culture c, lol_religion r, lol_rule ru, tab_province p
where u.rule=ru.id and u.cultureid = c.id and u.religionid=r.id and u.pid = p.id
and username ='ÕÅÈı' and password = '13214'
