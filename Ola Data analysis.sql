use ola;
select * from bookings;

 
 
  #1. Retrieve all successful bookings:
  
 SELECT * FROM bookings WHERE Booking_Status = 'Success';
 
 
 #2. Find the average ride distance for each vehicle type:
 
 
 SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings GROUP BY
 Vehicle_Type;
 
 
 #3. Get the total number of cancelled rides by customers:
 
 
 SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'cancelled by Customer';
 
 
 #4. List the top 5 customers who booked the highest number of rides:
 
 
 SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM bookings GROUP BY
 Customer_ID ORDER BY total_rides DESC LIMIT 5;
 
 
 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 
 
 SELECT COUNT(*) FROM bookings WHERE Canceled_Rides_by_Driver = 'Personal & Car
 related issue';
 
 
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 
 
 SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM
 bookings WHERE Vehicle_Type = 'Prime Sedan';
 
 
 #7. Retrieve all rides where payment was made using UPI:
 
 
 SELECT * FROM bookings WHERE Payment_Method = 'UPI';
 
 
# 8. Find the average customer rating per vehicle type:


 SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM bookings
 GROUPBYVehicle_Type;
 
 
 #9. Calculate the total booking value of rides completed successfully:
 
 
 SELECT SUM(Booking_Value) as total_successful_value FROM bookings WHERE
 Booking_Status = 'Success';
 
 
# 10. List all incomplete rides along with the reason:


 SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides =
 'Yes'
 
 
 
 Insights:
 
Booking Trends:

You can understand the ratio of successful to canceled bookings, which will highlight operational challenges like customer dissatisfaction or driver availability issues.

Financial Insights:

Analyzing the average booking value and identifying top customers can help tailor marketing efforts and special offers for high-value customers.

Operational Efficiency:

Identifying long turnaround times for vehicles (V_TAT) allows for optimizing scheduling and driver performance to reduce delays.

Cancellation Patterns:

Understanding the most frequent cancellation reasons can provide actionable insights into improving customer and driver experience, reducing cancellations, and addressing issues proactively.
Performance Metrics:

The average driver and customer ratings give insights into the quality of service provided and can serve as a benchmark for improvements.