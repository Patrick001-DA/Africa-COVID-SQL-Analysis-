# Africa-COVID-SQL-Analysis-
This project analyzes COVID-19 statistics across African countries using SQL. The dataset contains information on total cases, deaths, recoveries, active cases, testing, population, and population-adjusted COVID-19 indicators.

**Schema (MySQL v8)**

    
    
    CREATE TABLE africa_covid (
        country VARCHAR(100) PRIMARY KEY,
        total_cases INT,
        total_deaths INT,
        total_recovered DECIMAL(15,1),
        active_cases DECIMAL(15,1),
        cases_per_1m INT,
        deaths_per_1m INT,
        total_tests DECIMAL(15,1),
        tests_per_1m DECIMAL(15,1),
        population BIGINT
    );
    
    INSERT INTO africa_covid
    (country, total_cases, total_deaths, total_recovered, active_cases,
     cases_per_1m, deaths_per_1m, total_tests, tests_per_1m, population)
    VALUES
    ('Algeria', 271852, 6881, 183061.0, 81910.0, 5995, 152, 230960.0, 5093.0, 45350148),
    ('Angola', 105384, 1934, 103419.0, 31.0, 3009, 55, 1499795.0, 42818.0, 35027343),
    ('Benin', 28014, 163, 27847.0, 4.0, 2191, 13, 604310.0, 47268.0, 12784726),
    ('Botswana', 330256, 2801, 327049.0, 406.0, 135286, 1147, 2026898.0, 830300.0, 2441162),
    ('Burkina Faso', 22056, 396, 21596.0, 64.0, 998, 18, 248995.0, 11265.0, 22102838),
    ('Burundi', 54241, 38, 53569.0, 634.0, 4296, 3, 345742.0, 27386.0, 12624840),
    ('CAR', 15368, 113, 15200.0, 55.0, 3063, 23, 81294.0, 16205.0, 5016678),
    ('Cabo Verde', 64238, 415, 63755.0, 68.0, 113159, 731, 401622.0, 707482.0, 567678),
    ('Cameroon', 125090, 1974, 122807.0, 309.0, 4482, 71, 1751774.0, 62762.0, 27911548),
    ('Chad', 7701, 194, 4874.0, 2633.0, 442, 11, 191341.0, 10988.0, 17413580),
    ('Comoros', 9109, 161, 8939.0, 9.0, 10038, 177, NULL, NULL, 907419),
    ('Congo', 25375, 386, 24006.0, 983.0, 4377, 67, 347815.0, 59991.0, 5797805),
    ('DRC', 97697, 1468, 84489.0, 11740.0, 1026, 15, 846704.0, 8890.0, 95240792),
    ('Djibouti', 15690, 189, 15427.0, 74.0, 15441, 186, 305941.0, 301094.0, 1016097),
    ('Egypt', 516023, 24613, 442182.0, 49228.0, 4861, 232, 3693367.0, 34792.0, 106156692),
    ('Equatorial Guinea', 17229, 183, 16907.0, 139.0, 11512, 122, 365697.0, 244342.0, 1496662),
    ('Eritrea', 10189, 103, 10086.0, 0.0, 2782, 28, 23693.0, 6470.0, 3662244),
    ('Eswatini', 74882, 1427, 73116.0, 339.0, 63201, 1204, 1048704.0, 885119.0, 1184817),
    ('Ethiopia', 501032, 7574, 488171.0, 5287.0, 4147, 63, 5565340.0, 46066.0, 120812698),
    ('Gabon', 48992, 307, 48674.0, 11.0, 21013, 132, 1621909.0, 695641.0, 2331533),
    ('Gambia', 12626, 372, 12189.0, 65.0, 4935, 145, 155686.0, 60851.0, 2558482),
    ('Ghana', 171740, 1462, 170255.0, 23.0, 5301, 45, 2538052.0, 78346.0, 32395450),
    ('Guinea', 38563, 468, 37757.0, 338.0, 2781, 34, 660107.0, 47607.0, 13865691),
    ('Guinea-Bissau', 9614, 177, 8929.0, 508.0, 4659, 86, 145231.0, 70385.0, 2063367),
    ('Ivory Coast', 88338, 835, 87497.0, 6.0, 3184, 30, 1690934.0, 60951.0, 27742298),
    ('Kenya', 343955, 5689, 337309.0, 957.0, 6119, 101, 3967062.0, 70569.0, 56215221),
    ('Lesotho', 34790, 723, 25980.0, 8087.0, 15990, 332, 431221.0, 198199.0, 2175699),
    ('Liberia', 8090, 295, 7783.0, 12.0, 1525, 56, 139824.0, 26356.0, 5305117),
    ('Libya', 507270, 6437, 500833.0, 0.0, 72048, 914, 2483848.0, 352782.0, 7040745),
    ('Madagascar', 68330, 1425, 66862.0, 43.0, 2342, 49, 531329.0, 18210.0, 29178077),
    ('Malawi', 88908, 2686, 85651.0, 571.0, 4406, 133, 624784.0, 30959.0, 20180839),
    ('Mali', 33152, 743, 32332.0, 77.0, 1544, 35, 804909.0, 37483.0, 21473764),
    ('Mauritania', 63715, 997, 62471.0, 247.0, 12998, 203, 1009957.0, 206030.0, 4901981),
    ('Mauritius', 42905, 1051, 41173.0, 681.0, 33658, 824, 358675.0, 281374.0, 1274727),
    ('Morocco', 1276176, 16297, 1256151.0, 3728.0, 33786, 431, 13001033.0, 344191.0, 37772756),
    ('Mozambique', 233417, 2243, 228805.0, 2369.0, 7054, 68, 1371127.0, 41437.0, 33089461),
    ('Namibia', 171998, 4098, 167099.0, 801.0, 65302, 1556, 1062663.0, 403460.0, 2633874),
    ('Niger', 9931, 312, 8890.0, 729.0, 381, 12, 254538.0, 9759.0, 26083660),
    ('Nigeria', 266675, 3155, 259953.0, 3567.0, 1230, 15, 5708974.0, 26339.0, 216746934),
    ('Rwanda', 133194, 1468, 131647.0, 79.0, 9793, 108, 6021981.0, 442778.0, 13600464),
    ('Sao Tome and Principe', 6597, 80, 6517.0, 0.0, 28975, 351, 29036.0, 127530.0, 227679),
    ('Senegal', 89014, 1971, 87024.0, 19.0, 5042, 112, 1146543.0, 64946.0, 17653671),
    ('Seychelles', 50937, 172, 50750.0, 15.0, 512311, 1730, NULL, NULL, 99426),
    ('Sierra Leone', 7762, 126, NULL, NULL, 934, 15, 259958.0, 31296.0, 8306436),
    ('Somalia', 27334, 1361, 13182.0, 12791.0, 1623, 81, 400466.0, 23778.0, 16841795),
    ('South Africa', 4076463, 102595, 3912506.0, 61362.0, 67095, 1689, 26795090.0, 441027.0, 60756135),
    ('South Sudan', 18368, 138, 18115.0, 115.0, 1581, 12, 410280.0, 35313.0, 11618511),
    ('Sudan', 63993, 5046, 58947.0, 0.0, 1391, 110, 562941.0, 12240.0, 45992020),
    ('Tanzania', 43078, 846, NULL, NULL, 681, 13, NULL, NULL, 63298550),
    ('Togo', 39513, 290, 39216.0, 7.0, 4552, 33, 812881.0, 93641.0, 8680837),
    ('Tunisia', 1153361, 29423, NULL, NULL, 95741, 2442, 5013383.0, 416164.0, 12046656),
    ('Uganda', 171829, 3632, 100431.0, 67766.0, 3548, 75, 3012408.0, 62198.0, 48432863),
    ('Zambia', 349287, 4069, 341316.0, 3902.0, 17940, 209, 4112961.0, 211244.0, 19470234),
    ('Zimbabwe', 265742, 5718, 258888.0, 1136.0, 17333, 373, 2525756.0, 164744.0, 15331428);
    
    SELECT * FROM africa_covid;

---

**Query #1**

    -- Assign a unique sequential number to countries ordered by total_cases descending (no ties allowed, even if two countries have equal cases).
    
    
    select country,total_cases,
         row_number() over(order by total_cases desc) 
    as row_num
    from africa_covid;

| country               | total_cases | row_num |
| --------------------- | ----------- | ------- |
| South Africa          | 4076463     | 1       |
| Morocco               | 1276176     | 2       |
| Tunisia               | 1153361     | 3       |
| Egypt                 | 516023      | 4       |
| Libya                 | 507270      | 5       |
| Ethiopia              | 501032      | 6       |
| Zambia                | 349287      | 7       |
| Kenya                 | 343955      | 8       |
| Botswana              | 330256      | 9       |
| Algeria               | 271852      | 10      |
| Nigeria               | 266675      | 11      |
| Zimbabwe              | 265742      | 12      |
| Mozambique            | 233417      | 13      |
| Namibia               | 171998      | 14      |
| Uganda                | 171829      | 15      |
| Ghana                 | 171740      | 16      |
| Rwanda                | 133194      | 17      |
| Cameroon              | 125090      | 18      |
| Angola                | 105384      | 19      |
| DRC                   | 97697       | 20      |
| Senegal               | 89014       | 21      |
| Malawi                | 88908       | 22      |
| Ivory Coast           | 88338       | 23      |
| Eswatini              | 74882       | 24      |
| Madagascar            | 68330       | 25      |
| Cabo Verde            | 64238       | 26      |
| Sudan                 | 63993       | 27      |
| Mauritania            | 63715       | 28      |
| Burundi               | 54241       | 29      |
| Seychelles            | 50937       | 30      |
| Gabon                 | 48992       | 31      |
| Tanzania              | 43078       | 32      |
| Mauritius             | 42905       | 33      |
| Togo                  | 39513       | 34      |
| Guinea                | 38563       | 35      |
| Lesotho               | 34790       | 36      |
| Mali                  | 33152       | 37      |
| Benin                 | 28014       | 38      |
| Somalia               | 27334       | 39      |
| Congo                 | 25375       | 40      |
| Burkina Faso          | 22056       | 41      |
| South Sudan           | 18368       | 42      |
| Equatorial Guinea     | 17229       | 43      |
| Djibouti              | 15690       | 44      |
| CAR                   | 15368       | 45      |
| Gambia                | 12626       | 46      |
| Eritrea               | 10189       | 47      |
| Niger                 | 9931        | 48      |
| Guinea-Bissau         | 9614        | 49      |
| Comoros               | 9109        | 50      |
| Liberia               | 8090        | 51      |
| Sierra Leone          | 7762        | 52      |
| Chad                  | 7701        | 53      |
| Sao Tome and Principe | 6597        | 54      |

---
**Query #2**

    -- Split all countries into 4 buckets (quartiles) based on total_cases, from highest to lowest.
    
    select country, NTILE(4) OVER (order by total_cases desc) as case_quartile
    from africa_covid;

| country               | case_quartile |
| --------------------- | ------------- |
| South Africa          | 1             |
| Morocco               | 1             |
| Tunisia               | 1             |
| Egypt                 | 1             |
| Libya                 | 1             |
| Ethiopia              | 1             |
| Zambia                | 1             |
| Kenya                 | 1             |
| Botswana              | 1             |
| Algeria               | 1             |
| Nigeria               | 1             |
| Zimbabwe              | 1             |
| Mozambique            | 1             |
| Namibia               | 1             |
| Uganda                | 2             |
| Ghana                 | 2             |
| Rwanda                | 2             |
| Cameroon              | 2             |
| Angola                | 2             |
| DRC                   | 2             |
| Senegal               | 2             |
| Malawi                | 2             |
| Ivory Coast           | 2             |
| Eswatini              | 2             |
| Madagascar            | 2             |
| Cabo Verde            | 2             |
| Sudan                 | 2             |
| Mauritania            | 2             |
| Burundi               | 3             |
| Seychelles            | 3             |
| Gabon                 | 3             |
| Tanzania              | 3             |
| Mauritius             | 3             |
| Togo                  | 3             |
| Guinea                | 3             |
| Lesotho               | 3             |
| Mali                  | 3             |
| Benin                 | 3             |
| Somalia               | 3             |
| Congo                 | 3             |
| Burkina Faso          | 3             |
| South Sudan           | 4             |
| Equatorial Guinea     | 4             |
| Djibouti              | 4             |
| CAR                   | 4             |
| Gambia                | 4             |
| Eritrea               | 4             |
| Niger                 | 4             |
| Guinea-Bissau         | 4             |
| Comoros               | 4             |
| Liberia               | 4             |
| Sierra Leone          | 4             |
| Chad                  | 4             |
| Sao Tome and Principe | 4             |

---
**Query #3**

    -- Split all countries into 5 buckets based on cases_per_1m to group them into severity bands.
    
    select country,
                NTILE(5) over (order by cases_per_1m) as severity_brands
     from africa_covid;

| country               | severity_brands |
| --------------------- | --------------- |
| Niger                 | 1               |
| Chad                  | 1               |
| Tanzania              | 1               |
| Sierra Leone          | 1               |
| Burkina Faso          | 1               |
| DRC                   | 1               |
| Nigeria               | 1               |
| Sudan                 | 1               |
| Liberia               | 1               |
| Mali                  | 1               |
| South Sudan           | 1               |
| Somalia               | 2               |
| Benin                 | 2               |
| Madagascar            | 2               |
| Guinea                | 2               |
| Eritrea               | 2               |
| Angola                | 2               |
| CAR                   | 2               |
| Ivory Coast           | 2               |
| Uganda                | 2               |
| Ethiopia              | 2               |
| Burundi               | 2               |
| Congo                 | 3               |
| Malawi                | 3               |
| Cameroon              | 3               |
| Togo                  | 3               |
| Guinea-Bissau         | 3               |
| Egypt                 | 3               |
| Gambia                | 3               |
| Senegal               | 3               |
| Ghana                 | 3               |
| Algeria               | 3               |
| Kenya                 | 3               |
| Mozambique            | 4               |
| Rwanda                | 4               |
| Comoros               | 4               |
| Equatorial Guinea     | 4               |
| Mauritania            | 4               |
| Djibouti              | 4               |
| Lesotho               | 4               |
| Zimbabwe              | 4               |
| Zambia                | 4               |
| Gabon                 | 4               |
| Sao Tome and Principe | 4               |
| Mauritius             | 5               |
| Morocco               | 5               |
| Eswatini              | 5               |
| Namibia               | 5               |
| South Africa          | 5               |
| Libya                 | 5               |
| Tunisia               | 5               |
| Cabo Verde            | 5               |
| Botswana              | 5               |
| Seychelles            | 5               |

---
**Query #4**

    -- For countries ordered by total_cases descending, show each country's total_cases alongside the total_cases of the country ranked just above it.
    select country,
      lag(total_cases) over (order by total_cases desc)
     from africa_covid;

| country               | lag(total_cases) over (order by total_cases desc) |
| --------------------- | ------------------------------------------------- |
| South Africa          |                                                   |
| Morocco               | 4076463                                           |
| Tunisia               | 1276176                                           |
| Egypt                 | 1153361                                           |
| Libya                 | 516023                                            |
| Ethiopia              | 507270                                            |
| Zambia                | 501032                                            |
| Kenya                 | 349287                                            |
| Botswana              | 343955                                            |
| Algeria               | 330256                                            |
| Nigeria               | 271852                                            |
| Zimbabwe              | 266675                                            |
| Mozambique            | 265742                                            |
| Namibia               | 233417                                            |
| Uganda                | 171998                                            |
| Ghana                 | 171829                                            |
| Rwanda                | 171740                                            |
| Cameroon              | 133194                                            |
| Angola                | 125090                                            |
| DRC                   | 105384                                            |
| Senegal               | 97697                                             |
| Malawi                | 89014                                             |
| Ivory Coast           | 88908                                             |
| Eswatini              | 88338                                             |
| Madagascar            | 74882                                             |
| Cabo Verde            | 68330                                             |
| Sudan                 | 64238                                             |
| Mauritania            | 63993                                             |
| Burundi               | 63715                                             |
| Seychelles            | 54241                                             |
| Gabon                 | 50937                                             |
| Tanzania              | 48992                                             |
| Mauritius             | 43078                                             |
| Togo                  | 42905                                             |
| Guinea                | 39513                                             |
| Lesotho               | 38563                                             |
| Mali                  | 34790                                             |
| Benin                 | 33152                                             |
| Somalia               | 28014                                             |
| Congo                 | 27334                                             |
| Burkina Faso          | 25375                                             |
| South Sudan           | 22056                                             |
| Equatorial Guinea     | 18368                                             |
| Djibouti              | 17229                                             |
| CAR                   | 15690                                             |
| Gambia                | 15368                                             |
| Eritrea               | 12626                                             |
| Niger                 | 10189                                             |
| Guinea-Bissau         | 9931                                              |
| Comoros               | 9614                                              |
| Liberia               | 9109                                              |
| Sierra Leone          | 8090                                              |
| Chad                  | 7762                                              |
| Sao Tome and Principe | 7701                                              |

---
**Query #5**

    -- Ordered by total_deaths descending, find the difference between each country's total_deaths and the previous country's total_deaths.
    
    
    with previous_country_total as (select country,total_deaths,
        lag(total_deaths) over (order by total_deaths  desc) as previous_country_total_deaths  
                                           from africa_covid)
    
    select country,total_deaths-previous_country_total_deaths as total_diff
    from previous_country_total;

| country               | total_diff |
| --------------------- | ---------- |
| South Africa          |            |
| Tunisia               | -73172     |
| Egypt                 | -4810      |
| Morocco               | -8316      |
| Ethiopia              | -8723      |
| Algeria               | -693       |
| Libya                 | -444       |
| Zimbabwe              | -719       |
| Kenya                 | -29        |
| Sudan                 | -643       |
| Namibia               | -948       |
| Zambia                | -29        |
| Uganda                | -437       |
| Nigeria               | -477       |
| Botswana              | -354       |
| Malawi                | -115       |
| Mozambique            | -443       |
| Cameroon              | -269       |
| Senegal               | -3         |
| Angola                | -37        |
| DRC                   | -466       |
| Rwanda                | 0          |
| Ghana                 | -6         |
| Eswatini              | -35        |
| Madagascar            | -2         |
| Somalia               | -64        |
| Mauritius             | -310       |
| Mauritania            | -54        |
| Tanzania              | -151  
