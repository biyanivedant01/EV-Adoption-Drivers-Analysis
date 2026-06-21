---------------------------------------------------------
-- EV ADOPTION ANALYSIS
---------------------------------------------------------

SELECT
    ev_adoption_likelihood,
    AVG(range_anxiety_score) AS avg_range_anxiety
FROM EV_Adoption
GROUP BY ev_adoption_likelihood
ORDER BY avg_range_anxiety DESC;

SELECT
    ev_adoption_likelihood,
    AVG(ev_knowledge_score) AS avg_ev_knowledge
FROM EV_Adoption
GROUP BY ev_adoption_likelihood;

SELECT
    home_charging_available,
    COUNT(*) AS respondents,
    AVG(range_anxiety_score) AS avg_range_anxiety
FROM EV_Adoption
GROUP BY home_charging_available;

SELECT
    ev_adoption_likelihood,
    AVG(charging_station_accessibility) AS avg_accessibility
FROM EV_Adoption
GROUP BY ev_adoption_likelihood;

SELECT
    ev_adoption_likelihood,
    AVG(annual_income) AS avg_income
FROM EV_Adoption
GROUP BY ev_adoption_likelihood
ORDER BY avg_income DESC;

SELECT
    city_type,
    ev_adoption_likelihood,
    COUNT(*) AS respondents
FROM EV_Adoption
GROUP BY city_type, ev_adoption_likelihood
ORDER BY city_type;