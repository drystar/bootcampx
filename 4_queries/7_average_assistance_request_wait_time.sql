-- Calculate the average time it takes to start an assistance request.

SELECT AVG(started_at - created_at) AS average_assistance_request_wait_time
FROM assistance_requests;