function calaculateDaysBetweenDates(startDate, endDate) {
    var millisecondsPerDay = 24 * 60 * 60 * 1000;
    return (endDate - startDate) / millisecondsPerDay;
}
//calaculateDaysBetweenDates(2021-01-01, 2022-01-01);
console.log(calaculateDaysBetweenDates(2021-01-01, 2022-01-01));