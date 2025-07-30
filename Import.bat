REM Note: if we need a path in the sql being read, the file needs to be wrapped in single quotes to support spaces and backslashes in path name
REM and the entire .read command wrapped in double quotes like so:
REM   sqlite3 .\DB\chinook.db ".read '.\Text Database\Schema.sql'"
.\tools\sqlite3 .\DB\chinook.db ".read '.\TextDB\Schema.sql'"
.\tools\sqlite3 .\DB\chinook.db ".read '.\TextDB\Data.sql'"
