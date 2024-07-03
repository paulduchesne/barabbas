--- insert work.
insert into work(work_title) values ('Barabbas');
set @work_id = (select work_id from work where work_title = 'Barabbas');

--- insert agents.
insert into agent(agent_name)
values ('Anthony Quinn'), 
       ('Jack Palance'), 
       ('Ernest Borgnine'), 
       ('Arthur Kennedy');

set @agent_id1 = (select agent_id from agent where agent_name = 'Anthony Quinn');
set @agent_id2 = (select agent_id from agent where agent_name = 'Jack Palance');
set @agent_id3 = (select agent_id from agent where agent_name = 'Ernest Borgnine');
set @agent_id4 = (select agent_id from agent where agent_name = 'Arthur Kennedy');

--- insert work agent connections.
insert into work_agent(work_id, agent_id, work_agent_activity, work_agent_creditRank, work_agent_nameUsed, work_agent_activityDetail, work_agent_character)
values (@work_id, @agent_id1, 'Cast', 1, 'Anthony Quinn', '', 'Barabbas'), 
       (@work_id, @agent_id2, 'Cast', 2, 'Jack Palance', '', ''), 
       (@work_id, @agent_id3, 'Cast', 3, 'Ernest Borgnine', '', ''), 
       (@work_id, @agent_id4, 'Cast', 4, 'Arthur Kennedy', '', '');

--- commit all changes.
commit;
