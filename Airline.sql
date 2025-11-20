-- Create database
CREATE DATABASE businesscasestudy;

-- Use the created database
USE businesscasestudy;

-- Create table AirlineRoutesData
CREATE TABLE AirlineRoutesData (
    FlightID INT,
    RouteCode VARCHAR(20),
    Origin VARCHAR(100),
    Destination VARCHAR(100),
    FlightDate DATE,
    FlightDurationMins INT,
    AircraftType VARCHAR(100),
    SeatsAvailable INT,
    SeatsSold INT,
    Revenue DECIMAL(15,2),
    OperationalCost DECIMAL(15,2),
    FlightType ENUM('Domestic', 'International'),
    OriginLat DECIMAL(10,6),
    OriginLong DECIMAL(10,6),
    DestinationLat DECIMAL(10,6),
    DestinationLong DECIMAL(10,6)
);

-- load csv files into mysql
LOAD DATA INFILE 'D:/AiMlCourse/BusinessCaseStudy/AirlineRoutesData.csv'
INTO TABLE airlineroutesdata
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- top 10 most frequent routes based on number of flights
SELECT RouteCode, COUNT(*) AS TotalFlights
FROM airlineroutesdata
GROUP BY RouteCode
ORDER BY TotalFlights DESC
LIMIT 10;

-- average revenue, cost, and profit per route
SELECT RouteCode,
       AVG(Revenue) AS AvgRevenue,
       AVG(OperationalCost) AS AvgCost,
       AVG(Revenue - OperationalCost) AS AvgProfit
FROM airlineroutesdata
GROUP BY RouteCode;

-- underperforming routes where average profit is negative
SELECT RouteCode,
       AVG(Revenue - OperationalCost) AS AvgProfit
FROM airlineroutesdata
GROUP BY RouteCode
HAVING AvgProfit < 0;

-- seat occupancy % for each route
SELECT RouteCode,
       SUM(SeatsSold) AS TotalSeatsSold,
       SUM(SeatsAvailable) AS TotalSeatsAvailable,
       (SUM(SeatsSold) / SUM(SeatsAvailable)) * 100 AS SeatOccupancyPercent
FROM airlineroutesdata
GROUP BY RouteCode;

-- monthly trend of profit per route
SELECT RouteCode,
       DATE_FORMAT(FlightDate, '%Y-%m') AS YearMonth,
       SUM(Revenue - OperationalCost) AS MonthlyProfit
FROM airlineroutesdata
GROUP BY RouteCode, YearMonth
ORDER BY RouteCode, YearMonth;

-- Compare profitability of domestic vs international routes
SELECT FlightType,
       AVG(Revenue - OperationalCost) AS AvgProfit
FROM airlineroutesdata
GROUP BY FlightType;

-- Rank routes based on revenue per minute of flight duration
SELECT
    RouteCode,
    AVG(Revenue / FlightDurationMins) AS RevenuePerMinute,
    DENSE_RANK() 
    OVER ( ORDER BY AVG(Revenue / FlightDurationMins) DESC ) AS RouteRank
FROM AirlineRoutesData
GROUP BY RouteCode;
