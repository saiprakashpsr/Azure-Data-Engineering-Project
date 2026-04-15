CREATE PROCEDURE usp_write_watermark @LastModifiedDate DATETIME, @TableName VARCHAR(50)
AS
BEGIN
    UPDATE watermarktable
    SET WatermarkValue = @LastModifiedDate
    WHERE TableName = @TableName
    COMMIT TRANSACTION;
END;