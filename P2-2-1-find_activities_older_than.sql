
CREATE OR REPLACE FUNCTION find_activities_older_than(old_date date) RETURNS SETOF activity AS $$
SELECT * FROM activity 
WHERE modification_date <= old_date;
$$ LANGUAGE SQL;

SELECT * FROM find_activities_older_than('2020-01-22');
SELECT * FROM find_activities_older_than('2019-01-22');