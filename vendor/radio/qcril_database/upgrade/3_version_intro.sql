/*
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 3);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '470' AND NUMBER = '999';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '470' AND NUMBER = '999';

COMMIT TRANSACTION;
