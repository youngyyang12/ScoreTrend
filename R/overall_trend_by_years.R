#'Create a line graph to show scoring trend from beginning.
#'@export

overall_trend_by_years <- function(){

score_stats = read.csv("oregon_football.csv")

# create a new data frame
overall_trend<- score_stats %>%
  group_by(season)%>%
  summarize(total_score=sum(points_scored),
            total_allowed=sum(points_allowed))


# plot graph by yeas to show points scored and allowed
ggplot()+
  geom_line(data = overall_trend, aes(season,total_score),colour= "green")+
  geom_line(data = overall_trend, aes(season,total_allowed),colour= "red")+
  labs(x= "Season",
       y= "Point",
       caption = "Overall Score Trend. Green line represent points scored. Red line represent points allowed")+
  scale_x_continuous(n.breaks = 10)+
  scale_y_continuous(n.breaks = 10)

}

