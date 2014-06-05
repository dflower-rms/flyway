--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--         http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

CREATE USER "flyway" WITH PASSWORD 'flyway' NAME 'flyway test user' SCHEMA "sys";
CREATE ROLE "FLYWAY";
GRANT "flyway" TO "flyway";
GRANT "sysadmin" TO "flyway";

set user="flyway";
set role "sysadmin";

CREATE SCHEMA "flywaydb" AUTHORIZATION "flyway";
ALTER USER "flyway" SET SCHEMA "flywaydb";
