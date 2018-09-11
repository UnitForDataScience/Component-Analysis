# Reading the document

library(readxl)
work <- read_excel("C:/Users/barsa/Downloads/work.xlsx", sheet = "89")


work <- read.csv("C:/Users/barsa/Downloads/Facilities_Data/out.csv")
View(work)
# subseting the required features
test <- work[,c(1,2,7,49)]

test$total <- ""

# combining both the text

for (i in 1:43043)
{
  test$total[i] <- paste (test[i,3],test[i,4]," ")
}


# Finding the components based on secondary research

for (k in 1:43043)
{
  test$vent[k] <- length(grep("vent",test[k,5],ignore.case = TRUE))
  test$Gauges[k] <- length(grep("Gauges",test[k,5],ignore.case = TRUE))
  test$Thermometers[k] <- length(grep("Thermometers",test[k,5],ignore.case = TRUE))
  test$thermocouple[k] <- length(grep("thermocouple",test[k,5],ignore.case = TRUE))
  test$Thermostat[k] <- length(grep("Thermostat",test[k,5],ignore.case = TRUE))
  test$cage[k] <- length(grep("cage",test[k,5],ignore.case = TRUE))
  test$pump[k] <- length(grep("pump",test[k,5],ignore.case = TRUE))
  test$air_conditioner[k] <- length(grep("air conditioner",test[k,5],ignore.case = TRUE))
  test$Furnace[k] <- length(grep("Furnace",test[k,5],ignore.case = TRUE))
  test$Refrigerant[k] <- length(grep("Refrigerant",test[k,5],ignore.case = TRUE))
  test$coil[k] <- length(grep("coil",test[k,5],ignore.case = TRUE))
  test$compressor[k] <- length(grep("compressor",test[k,5],ignore.case = TRUE))
  test$alarm[k] <- length(grep("alarm",test[k,5],ignore.case = TRUE))
  test$generator[k] <- length(grep("generator",test[k,5],ignore.case = TRUE))
  test$condens[k] <- length(grep("condens",test[k,5],ignore.case = TRUE))
}




for (k in 1:43043)
{
  test$fan[k] <- length(grep("fan",test[k,5],ignore.case = TRUE))
  test$motor[k] <- length(grep("motor",test[k,5],ignore.case = TRUE))
  test$Evaporative_Cooler[k] <- length(grep("Evaporative Cooler",test[k,5],ignore.case = TRUE))
  test$light[k] <- length(grep("light",test[k,5],ignore.case = TRUE))
  test$control_panel[k] <- length(grep("control panel",test[k,5],ignore.case = TRUE))
  test$control_board[k] <- length(grep("control board",test[k,5],ignore.case = TRUE))
  test$breaker[k] <- length(grep("breaker",test[k,5],ignore.case = TRUE))
  test$handler[k] <- length(grep("handler",test[k,5],ignore.case = TRUE))
  test$pipe[k] <- length(grep("pipe",test[k,5],ignore.case = TRUE))
  test$capacitor[k] <- length(grep("capacitor",test[k,5],ignore.case = TRUE))

  test$filter[k] <- length(grep("filter",test[k,5],ignore.case = TRUE))
  test$magnets[k] <- length(grep("magnets",test[k,5],ignore.case = TRUE))
  test$fuse[k] <- length(grep("fuse",test[k,5],ignore.case = TRUE))
  test$leak[k] <- length(grep("leak",test[k,5],ignore.case = TRUE))
}


for (k in 1:43043)
{
  test$Maintenance[k] <- length(grep("Maintenance",test[k,5],ignore.case = TRUE))
  test$battery[k] <- length(grep("battery",test[k,5],ignore.case = TRUE))
  test$freezer[k] <- length(grep("freezer",test[k,5],ignore.case = TRUE))
  test$bearing[k] <- length(grep("bearing",test[k,5],ignore.case = TRUE))
  test$heating_unit[k] <- length(grep("heating unit",test[k,5],ignore.case = TRUE))
  test$cooling_unit[k] <- length(grep("cooling unit",test[k,5],ignore.case = TRUE))
  test$breaker[k] <- length(grep("breaker",test[k,5],ignore.case = TRUE))
  test$cooler[k] <- length(grep("cooler",test[k,5],ignore.case = TRUE))
  test$biannual[k] <- length(grep("biannual",test[k,5],ignore.case = TRUE))
  test$monthly[k] <- length(grep("monthly",test[k,5],ignore.case = TRUE))
  test$vibration[k] <- length(grep("vibration",test[k,5],ignore.case = TRUE))
  test$wire[k] <- length(grep("wire",test[k,5],ignore.case = TRUE))
  test$switch[k] <- length(grep("switch",test[k,5],ignore.case = TRUE))
  test$button[k] <- length(grep("button",test[k,5],ignore.case = TRUE))
  test$Tier[k] <- length(grep("Tier",test[k,5],ignore.case = TRUE))
}

for (k in 1:43043)
{
  test$contactor[k] <- length(grep("contactor",test[k,5],ignore.case = TRUE))
  test$sink[k] <- length(grep("sink",test[k,5],ignore.case = TRUE))
  test$actuator[k] <- length(grep("actuator",test[k,5],ignore.case = TRUE))
  test$detector[k] <- length(grep("detector",test[k,5],ignore.case = TRUE))
  test$Portable[k] <- length(grep("Portable",test[k,5],ignore.case = TRUE))
  test$compress[k] <- length(grep("compress",test[k,5],ignore.case = TRUE))
  test$Dust[k] <- length(grep("Dust",test[k,5],ignore.case = TRUE))
  test$chiller[k] <- length(grep("chiller",test[k,5],ignore.case = TRUE))
  test$humidifier[k] <- length(grep("humidifier",test[k,5],ignore.case = TRUE))
  test$battery[k] <- length(grep("batter",test[k,5],ignore.case = TRUE))
  test$duct[k] <- length(grep("duct",test[k,5],ignore.case = TRUE))
  test$broke[k] <- length(grep("broke",test[k,5],ignore.case = TRUE))
  test$valve[k] <- length(grep("valve",test[k,5],ignore.case = TRUE))
  test$lock[k] <- length(grep("lock",test[k,5],ignore.case = TRUE))
  test$chemical[k] <- length(grep("chemical",test[k,5],ignore.case = TRUE))
}


for (k in 1:43043)
{
  test$cool[k] <- length(grep("cool",test[k,5],ignore.case = TRUE))
  test$cold[k] <- length(grep("cold",test[k,5],ignore.case = TRUE))
  test$warm[k] <- length(grep("warm",test[k,5],ignore.case = TRUE))
  test$debris[k] <- length(grep("debris",test[k,5],ignore.case = TRUE))
  test$hot[k] <- length(grep("hot",test[k,5],ignore.case = TRUE))
  test$adjust[k] <- length(grep("adjust",test[k,5],ignore.case = TRUE))
  test$TRC[k] <- length(grep("TRC",test[k,5],ignore.case = FALSE))
  test$set[k] <- length(grep("set",test[k,5],ignore.case = TRUE))
  test$TEC[k] <- length(grep("TEC",test[k,5],ignore.case = FALSE))
  test$Heat[k] <- length(grep("Heat",test[k,5],ignore.case = TRUE))
  test$Fridg[k] <- length(grep("Fridg",test[k,5],ignore.case = TRUE))
  test$Air[k] <- length(grep("Air",test[k,5],ignore.case = TRUE))
  test$damper[k] <- length(grep("damper",test[k,5],ignore.case = TRUE))
  test$CAV[k] <- length(grep("CAV",test[k,5],ignore.case = FALSE))
  test$VAV[k] <- length(grep("VAV",test[k,5],ignore.case = FALSE))
}

# saving it to a dataset
write.csv(test,"complete.csv")


subset <- test[5:77]

final <- cbind(work,subset)
write.csv(final,"final.csv")

setwd('C:/Users/barsa/Downloads/Facilities_Data')


onl_num <- test[6:77]

cor_mat <- cor(onl_num)

library(corrplot)
corrplot(cor_mat,method="circle")
write.csv(test1,"sa.csv")
write.csv(work,"work.csv")

just_total <- cbind(test[2],test[5])

print(just_total)


t(with(dat, wfm(summary, year)))


