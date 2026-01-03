-- Q 10087 Find all posts which were reacted to with a heart

CREATE TABLE facebook_posts (
    post_id INT,
    user_id INT,
    post_content VARCHAR(255),
    post_date DATE
);

CREATE TABLE facebook_reactions (
    reaction_id INT,
    post_id INT,
    user_id INT,
    reaction_type VARCHAR(50),
    reaction_date DATE
);


INSERT INTO facebook_posts (post_id, user_id, post_content, post_date) VALUES
(1, 101, 'Hello World', '2024-01-01'),
(2, 102, 'SQL is fun', '2024-01-02'),
(3, 103, 'Data Science', '2024-01-03'),
(1, 101, 'Hello World', '2024-01-01');  -- duplicate record


INSERT INTO facebook_reactions (reaction_id, post_id, user_id, reaction_type, reaction_date) VALUES
(1, 1, 201, 'heart', '2024-01-05'),
(2, 1, 202, 'like',  '2024-01-05'),
(3, 2, 203, 'heart', '2024-01-06'),
(4, 2, 204, 'wow',   '2024-01-06'),
(5, 3, 205, 'sad',   '2024-01-07');


select * from facebook_reactions;
select * from facebook_posts;

select * from facebook_posts where post_id in (
select post_id from facebook_reactions where reaction_type ='heart');


select fp.* from facebook_posts  fp join facebook_reactions fr on fp.post_id=fr.post_id
where fr.reaction_type='heart';

select distinct fp.* from facebook_posts  fp join facebook_reactions fr on fp.post_id=fr.post_id
where fr.reaction_type='heart';

SELECT distinct fp.* 
FROM facebook_posts fp
JOIN (
  SELECT post_id 
  FROM facebook_reactions 
  WHERE reaction_type = 'heart'
) fr ON fp.post_id = fr.post_id;
