MATCH (r:Regimen)-[*]-(p:Patient)
WITH p, COUNT(r) as number_of_regimens
RETURN p, number_of_regimens
  ORDER BY number_of_regimens DESC
  LIMIT 10
