IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'ERwithOBSERV1')
    CREATE database ERwithOBSERV1
ELSE
	PRINT 'You already have database ERwithOBSERV1 created.'
GO
USE [ERwithOBSERV1]
GO
:setvar path "C:\Users\Student\Downloads\ERwithOBSERV1\ERwithOBSERV1"
:r $(path)\CreateCourse.sql
:r $(path)\CreateLabReservation.sql
:r $(path)\InsertCourse.sql
:r $(path)\InsertLabReservation.sql