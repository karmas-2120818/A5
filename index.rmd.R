## Data Summary 
I looked at the black jail population and included these values:
Highest proportion of black people in prison for any year (0.45746226515467).
Lowest proportion of black people in prison for any year (0.332022242280498).
Year with the maximum number of people in prison (2018).
Year with the smallest number of people in prison (1985).

The variables  in quqlity help us show the inequality by seeing the different proportions and how how far apart they are. The max number of people and smallest number of people in prison are quite a significant difference. One is much larger while the other one is pretty small. 
## Growth of the U.S. Prison Population

```{r}
plot_jail_pop_for_us()
```

This graph shows that the Total Jail population got higher as the years increased. There is a significant difference between the Jail Population in 1970 compared to 2018. Form 1980 to around mid 2000's there was steep increase.It was pretty consistant in the 70's before the increase and leveled off before in the mid 2000's.

## Growth of Prison Population by State 

```{r}
plot_jail_pop_by_states(c("NY", "CA", "FL","TX"))
```

This graph shows that all four states follow the same patterns. These states level off at different times between the 1990s and 2000's. New York starts an a slight decrease while the rest of the states start off pretty consistently. California and Texas after 2008ish start to increase and has a few inconsitencies while Florida and New York both decrease and different rates. Florida drops pretty quickly while New York slowly decreases. 

## Section 5:Black Jail Rate vs White Jail Rate 
```{r}
plot_demo()
```

What is the difference between Black and White jail rate from 1990-2018? This chart shows the difference the black and white jail population from 1990-2018. There is a signficantly greater proportion of Blacks in Jail then there are Whites. There is a steep increase in the chart between 1990 and 2000 then it drops of quite a bit. The white proportion is pretty low and stays around 500 for the population, it is much smaller than the black proportion.  

## Section 6: Black Jail Rate by State
```{r warning=FALSE}
plot_demo_states()
```

How does the Black Jail population vary by State? The Black Jail Population is pretty high in some of the states but most of them are less than 3000. The dark red states show the highest that it can get which is 3000+, the orange states are somewhere in the middle, and the yellow states have a very low population. It was interesting to see how the different states vary with the black jail population. I feel like the ones with the most jail populations set pretty spefic rules compared to the rest of the states with less jail population. 


