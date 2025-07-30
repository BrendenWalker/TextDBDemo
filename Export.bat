@echo off
REM --nosys otherwise outputs creation statements for system tables which cannot be imported.
REM --indent simple formatting for output
.\Tools\sqlite3 .\DB\chinook.db ".schema --nosys --indent" > .\TextDB\Schema.sql
REM dump table data, --nosys is necessary to avoid exporting sqlite_sequence data which may be incomplete.
REM Inclusion of sqlite_sequence data is unnecessary at any rate as the table is maintained automatically by sqlite.
.\Tools\sqlite3 .\DB\chinook.db ".dump --nosys --data-only" > .\TextDB\Data.sql
