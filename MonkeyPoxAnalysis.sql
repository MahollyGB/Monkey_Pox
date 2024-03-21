-- Select Data that we are going to be starting with

Select location, date,total_cases, new_cases, total_deaths
From dbo.monkeypox mp
Inner Join dbo.continents_country cc
on mp.location = cc.countries
Where location is not null 

-- Total Cases vs Total Deaths
-- Shows likelihood of dying if you contract MonkeyPox in your country/Continent

Select Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From dbo.monkeypox
Where location like '%panama%'
and location is not null 
order by 1,2


-- Total Cases vs Population
-- Shows what percentage of population infected with MonkeyPox

Select location, date, total_cases,  (total_cases/population)*100 as PercentPopulationInfected
From dbo.monkeypox mp
Inner Join dbo.continents_country cc
on mp.location = cc.countries
left join dbo.population_update pu
on mp.location = pu.entity
--Where location like '%panama%'


-- Countries with Highest Infection Rate compared to Population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From dbo.monkeypox
left join dbo.population_update
on dbo.monkeypox.location = dbo.population_update.entity
--Where location like '%panama%'
Group by Location, Population
order by PercentPopulationInfected desc


-- Countries with Highest Death Count

Select Location, MAX(cast(Total_deaths as int)) as TotalDeathCount
From dbo.monkeypox mp
inner join dbo.continents_country c
on mp.location = c.countries
--Where location like '%states%'
Where location is not null 
Group by Location
order by TotalDeathCount desc


-- BREAKING THINGS DOWN BY CONTINENT

-- Showing contintents with the highest death count per population

Select continents, MAX(cast(Total_deaths as int)) as TotalDeathCount
From dbo.monkeypox mp
left join dbo.population_update pu
on mp.location = pu.entity
left Join dbo.continents_country cc
on mp.location = cc.countries
--Where location like '%states%'
--Where continent is not null 
Group by continents
order by TotalDeathCount desc

select sum(TotalDeathCount) from (
Select MAX(cast(Total_deaths as int)) as TotalDeathCount
From dbo.monkeypox mp
Where location <> 'World' and date='2024-03-08'
group by location) s

Select 
From dbo.monkeypox mp



-- GLOBAL NUMBERS

Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
From dbo.monkeypox mp
inner join dbo.continents_country cc
on mp.location = cc.countries
--Where location like '%panama%'


