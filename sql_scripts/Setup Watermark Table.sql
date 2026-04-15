-- Create the Watermark Table
CREATE TABLE watermarktable (
    TableName VARCHAR(255),
    WatermarkValue DATETIME
);

-- Initialize the table for your source
INSERT INTO watermarktable (TableName, WatermarkValue) 
VALUES ('SalesSourceTable', '2024-01-01 00:00:00');