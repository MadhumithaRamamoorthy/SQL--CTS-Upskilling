SELECT e.title,
       COUNT(CASE WHEN resource_type='pdf' THEN 1 END) AS pdfs,
       COUNT(CASE WHEN resource_type='image' THEN 1 END) AS images,
       COUNT(CASE WHEN resource_type='link' THEN 1 END) AS links
FROM Events e
LEFT JOIN Resources r ON e.event_id = r.event_id
GROUP BY e.title;
