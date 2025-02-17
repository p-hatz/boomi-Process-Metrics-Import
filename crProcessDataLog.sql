CREATE TABLE `processDataLog` (
  `executionId` varchar(64) DEFAULT NULL,
  `processId` varchar(64) DEFAULT NULL,
  `processName` varchar(256) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `shapeName` varchar(64) DEFAULT NULL,
  `shapeType` varchar(128) DEFAULT NULL,
  `shapeLabel` varchar(256) DEFAULT NULL,
  `shapeExtendedInfo` varchar(256) DEFAULT NULL,
  `runTime` integer default null
); 

