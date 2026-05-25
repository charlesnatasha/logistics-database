# Logistics Database Management System

A normalized relational database for tracking shipments, couriers, deliveries, and payments. Built for a logistics company to enable real time delivery tracking and performance analytics.

## Database Schema

8 interconnected tables with proper foreign key constraints:
- **customers** - Customer information
- **pickup_location** / **delivery_locations** - Address management
- **packages** - Shipment details (weight, dimensions, declared value)
- **couriers** - Delivery personnel with vehicle type and availability
- **deliveries** - Tracking pickup, estimated, and actual delivery times
- **delivery_status** - Status history with timestamps
- **payments** - Transaction tracking with status (pending/completed/failed)

## Key Features

- Normalized to 3NF
- Check constraints (payment status, courier availability)
- Default values (timestamps, statuses)
- Identity columns for auto-incrementing IDs
- 18+ analytical queries

## Sample Analytics Queries

 Query , Purpose 
 Courier success rate, Performance tracking by delivery personnel 
 Late deliveries identification ,Operational improvement 
 Revenue by payment method , Business intelligence 
 Peak delivery hours , Resource allocation 
 Customer segmentation , Marketing insights 

## Query Results Preview

![Courier Success Rate](courier-success-rate.png)

## Technologies

- SQL Server / MySQL
- Database Normalization (3NF)
- Query Optimization
- Stored Procedures

## Author

Natasha Charles
