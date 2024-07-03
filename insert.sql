--- insert work.
insert into work(work_title) values ('Barabbas');
set @work_id = (select work_id from work where work_title = 'Barabbas');

--- insert agents.
insert into agent(agent_name)
values ('Anthony Quinn'), 
       ('Silvana Mangano'),
       ('Arthur Kennedy'),
       ('Katy Jurado'),
       ('Harry Andrews'),
       ('Vittorio Gassman'),
       ('Norman Wooland'),
       ('Valentina Cortese'),
       ('Jack Palance');

set @agent_id1 = (select agent_id from agent where agent_name = 'Anthony Quinn');
set @agent_id2 = (select agent_id from agent where agent_name = 'Silvana Mangano');
set @agent_id3 = (select agent_id from agent where agent_name = 'Arthur Kennedy');
set @agent_id4 = (select agent_id from agent where agent_name = 'Katy Jurado');
set @agent_id5 = (select agent_id from agent where agent_name = 'Harry Andrews');
set @agent_id6 = (select agent_id from agent where agent_name = 'Vittorio Gassman');
set @agent_id7 = (select agent_id from agent where agent_name = 'Norman Wooland');
set @agent_id8 = (select agent_id from agent where agent_name = 'Valentina Cortese');
set @agent_id9 = (select agent_id from agent where agent_name = 'Jack Palance');

--- insert work agent connections.
insert into work_agent(work_id, agent_id, work_agent_activity, work_agent_creditRank, work_agent_nameUsed, work_agent_activityDetail, work_agent_character)
values (@work_id, @agent_id1, 'Cast', 1, 'Anthony Quinn', '', 'Barabbas'), 
       (@work_id, @agent_id2, 'Cast', 2, 'Silvana Mangano', '', ''),
       (@work_id, @agent_id3, 'Cast', 3, 'Arthur Kennedy', '', ''),
       (@work_id, @agent_id4, 'Cast', 4, 'Katy Jurado', '', ''),
       (@work_id, @agent_id5, 'Cast', 5, 'Harry Andrews', '', ''),
       (@work_id, @agent_id6, 'Cast', 6, 'Vittorio Gassman', '', ''),
       (@work_id, @agent_id7, 'Cast', 7, 'Norman Wooland', '', ''),
       (@work_id, @agent_id8, 'Cast', 8, 'Valentina Cortese', '', ''),
       (@work_id, @agent_id9, 'Cast', 9, 'Jack Palance', '', '');

--- commit all changes.
commit;
