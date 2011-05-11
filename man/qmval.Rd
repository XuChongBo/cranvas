\name{qmval}
\alias{qmval}
\title{Interactive Missing Value Plot}
\usage{qmval(data, vars, main, varmax = 20, ...)

}
\description{Interactive Missing Value Plot.}
\value{NULL}
\author{Heike Hofmann}
\arguments{\item{data}{a mutaframe which is typically built upon a data frame
along with several row attributes}
\item{...}{}
}
\examples{library(qtbase)
library(qtpaint)
library(cranvas)
library(plumbr)

library(maps)
library(ggplot2)

states <- map_data("state")
qstates <- qdata(states)

#qtmap(qstates, long, lat, group)


#######################

data(crimes)
crimes$State <- tolower(crimes$State)

## color palette
library(RColorBrewer)
#crimes$nines <- with(crimes, cut(Burglary/Population,
#   9))
#crimes$nines <- with(crimes,
#   cut(Violent.crime/Population, 9))
#crimes$nines <- brewer.pal(9, 'Greys')[crimes$nines]
qcrimes <- qdata(crimes)
print(qparallel(data = qcrimes))

#source('map.R')
#print(qtmap(qstates, long, lat, group, label=region,
#   labeldata=qcrimes,
#   by.x='region', by.y='State', colour=Violent.crime))
q1 <- qtmap(qstates, long, lat, group, label = region, 
    labeldata = qcrimes, by.x = "region", by.y = "State", 
    colour = log(Violent.crime/Population + 1))
q1
q2 <- qtmap(qstates, long, lat, group, label = region, 
    labeldata = qcrimes, by.x = "region", by.y = "State", 
    colour = log(Motor.vehicle.theft/Population + 1))
q2







#qtmap(qstates, long, lat, group, label=region)
#qtmap(qstates, long, lat, group)


##############

library(qtbase)
library(qtpaint)
library(plumbr)
library(cranvas)


library(maps)
library(ggplot2)

counties <- map_data("county")
iowa <- subset(counties, region == "iowa")

qiowa <- qdata(iowa)

qtmap(qiowa, long, lat, group, label = subregion)


library(qtbase)
library(qtpaint)
library(plumbr)
library(cranvas)
library(ggplot2)

#world <- map_data('world')
data(world)
qworld <- qdata(world)

source("map.R")
qtmap(qworld, long, lat, group, label = id)


library(profr)

#res <- profr(print(qtmap(qworld, long, lat, group,
#   label=id)))}

















































































