--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      NTL Phase2 Model.DM1
--
-- Date Created : Wednesday, November 29, 2017 17:09:43
-- Target DBMS : Hive 0.12
--

--
-- TABLE: accounts
--


CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`transformer_info`(
    site_name  String,
    expected_technical_loss      String,
    transformer_capacity     String
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Transformer/'
;

CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`transformer_info_partitioned`(
    site_name  String,
    expected_technical_loss      String,
    transformer_capacity     String
)
PARTITIONED BY (`year` string,`month` string,`day` string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Transformer_partitioned/'
;



CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`accounts`(
    account    String,
    first_name   String,
    last_name     String,
    active       String
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Accounts/'
;


CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`accounts_partitioned`(
    account    String,
    first_name   String,
    last_name     String,
    active       String
)
PARTITIONED BY (`year` string,`month` string,`day` string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Accounts_partitioned/'
;


CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`addresses`(
    site_name  String,
    street        String,
    city          String,
    state         String,
    zipcode      String
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES("separatorChar" = ",","QUOTECHAR" = "`")
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Addresses/'
;


CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`addresses_partitioned`(
    site_name  String,
    street        String,
    city          String,
    state         String,
    zipcode      String
)
PARTITIONED BY (`year` string,`month` string,`day` string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES("separatorChar" = ",","QUOTECHAR" = "`")
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Addresses_partitioned/'
;


--
-- TABLE: events
--

CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`events`(
     meter_name        String,
    event_datetime    String,
    event_type        String,
    event_name        String
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Events/'
;


CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`events_partitioned`(
     meter_name        String,
    event_datetime    String,
    event_type        String,
    event_name        String
)
PARTITIONED BY (`year` string,`month` string,`day` string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Events_partitioned/'
;

--
-- TABLE: Stringerval
--

CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`channels`(
    meter_name                    String,
    uom                           String,
    direction                     String,
    interval_length               String,
    interval_count                String,
    starting_interval_datetime    String,
    value_1                       String,
    quality_code_1                String,
    value_2                       String,
    quality_code_2                String,
    value_3                       String,
    quality_code_3                String,
    value_4                       String,
    quality_code_4                String,
    value_5                       String,
    quality_code_5                String,
    value_6                       String,
    quality_code_6                String,
    value_7                       String,
    quality_code_7                String,
    value_8                       String,
    quality_code_8                String,
    value_9                       String,
    quality_code_9                String,
    value_10                      String,
    quality_code_10               String,
    value_11                      String,
    quality_code_11               String,
    value_12                      String,
    quality_code_12               String,
    value_13                      String,
    quality_code_13               String,
    value_14                      String,
    quality_code_14               String,
    value_15                      String,
    quality_code_15               String,
    value_16                      String,
    quality_code_16               String,
    value_17                      String,
    quality_code_17               String,
    value_18                      String,
    quality_code_18               String,
    value_19                      String,
    quality_code_19               String,
    value_20                      String,
    quality_code_20               String,
    value_21                      String,
    quality_code_21               String,
    value_22                      String,
    quality_code_22               String,
    value_23                      String,
    quality_code_23               String,
    value_24                      String,
    quality_code_24               String,
    value_25                      String,
    quality_code_25               String,
    value_26                      String,
    quality_code_26               String,
    value_27                      String,
    quality_code_27               String,
    value_28                      String,
    quality_code_28               String,
    value_29                      String,
    quality_code_29               String,
    value_30                      String,
    quality_code_30               String,
    value_31                      String,
    quality_code_31               String,
    value_32                      String,
    quality_code_32               String,
    value_33                      String,
    quality_code_33               String,
    value_34                      String,
    quality_code_34               String,
    value_35                      String,
    quality_code_35               String,
    value_36                      String,
    quality_code_36               String,
    value_37                      String,
    quality_code_37               String,
    value_38                      String,
    quality_code_38               String,
    value_39                      String,
    quality_code_39               String,
    value_40                      String,
    quality_code_40               String,
    value_41                      String,
    quality_code_41               String,
    value_42                      String,
    quality_code_42               String,
    value_43                      String,
    quality_code_43               String,
    value_44                      String,
    quality_code_44               String,
    value_45                      String,
    quality_code_45               String,
    value_46                      String,
    quality_code_46               String,
    value_47                      String,
    quality_code_47               String,
    value_48                      String,
    quality_code_48               String,
    value_49                      String,
    quality_code_49               String,
    value_50                      String,
    quality_code_50               String,
    value_51                      String,
    quality_code_51               String,
    value_52                      String,
    quality_code_52               String,
    value_53                      String,
    quality_code_53               String,
    value_54                      String,
    quality_code_54               String,
    value_55                      String,
    quality_code_55               String,
    value_56                      String,
    quality_code_56               String,
    value_57                      String,
    quality_code_57               String,
    value_58                      String,
    quality_code_58               String,
    value_59                      String,
    quality_code_59               String,
    value_60                      String,
    quality_code_60               String,
    value_61                      String,
    quality_code_61               String,
    value_62                      String,
    quality_code_62               String,
    value_63                      String,
    quality_code_63               String,
    value_64                      String,
    quality_code_64               String,
    value_65                      String,
    quality_code_65               String,
    value_66                      String,
    quality_code_66               String,
    value_67                      String,
    quality_code_67               String,
    value_68                      String,
    quality_code_68               String,
    value_69                      String,
    quality_code_69               String,
    value_70                      String,
    quality_code_70               String,
    value_71                      String,
    quality_code_71               String,
    value_72                      String,
    quality_code_72               String,
    value_73                      String,
    quality_code_73               String,
    value_74                      String,
    quality_code_74               String,
    value_75                      String,
    quality_code_75               String,
    value_76                      String,
    quality_code_76               String,
    value_77                      String,
    quality_code_77               String,
    value_78                      String,
    quality_code_78               String,
    value_79                      String,
    quality_code_79               String,
    value_80                      String,
    quality_code_80               String,
    value_81                      String,
    quality_code_81               String,
    value_82                      String,
    quality_code_82               String,
    value_83                      String,
    quality_code_83               String,
    value_84                      String,
    quality_code_84               String,
    value_85                      String,
    quality_code_85               String,
    value_86                      String,
    quality_code_86               String,
    value_87                      String,
    quality_code_87               String,
    value_88                      String,
    quality_code_88               String,
    value_89                      String,
    quality_code_89               String,
    value_90                      String,
    quality_code_90               String,
    value_91                      String,
    quality_code_91               String,
    value_92                      String,
    quality_code_92               String,
    value_93                      String,
    quality_code_93               String,
    value_94                      String,
    quality_code_94               String,
    value_95                      String,
    quality_code_95               String,
    value_96                      String,
    quality_code_96               String
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Channels/'
;


CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`channels_partitioned`(
    meter_name                    String,
    uom                           String,
    direction                     String,
    interval_length               String,
    interval_count                String,
    starting_interval_datetime    String,
    value_1                       String,
    quality_code_1                String,
    value_2                       String,
    quality_code_2                String,
    value_3                       String,
    quality_code_3                String,
    value_4                       String,
    quality_code_4                String,
    value_5                       String,
    quality_code_5                String,
    value_6                       String,
    quality_code_6                String,
    value_7                       String,
    quality_code_7                String,
    value_8                       String,
    quality_code_8                String,
    value_9                       String,
    quality_code_9                String,
    value_10                      String,
    quality_code_10               String,
    value_11                      String,
    quality_code_11               String,
    value_12                      String,
    quality_code_12               String,
    value_13                      String,
    quality_code_13               String,
    value_14                      String,
    quality_code_14               String,
    value_15                      String,
    quality_code_15               String,
    value_16                      String,
    quality_code_16               String,
    value_17                      String,
    quality_code_17               String,
    value_18                      String,
    quality_code_18               String,
    value_19                      String,
    quality_code_19               String,
    value_20                      String,
    quality_code_20               String,
    value_21                      String,
    quality_code_21               String,
    value_22                      String,
    quality_code_22               String,
    value_23                      String,
    quality_code_23               String,
    value_24                      String,
    quality_code_24               String,
    value_25                      String,
    quality_code_25               String,
    value_26                      String,
    quality_code_26               String,
    value_27                      String,
    quality_code_27               String,
    value_28                      String,
    quality_code_28               String,
    value_29                      String,
    quality_code_29               String,
    value_30                      String,
    quality_code_30               String,
    value_31                      String,
    quality_code_31               String,
    value_32                      String,
    quality_code_32               String,
    value_33                      String,
    quality_code_33               String,
    value_34                      String,
    quality_code_34               String,
    value_35                      String,
    quality_code_35               String,
    value_36                      String,
    quality_code_36               String,
    value_37                      String,
    quality_code_37               String,
    value_38                      String,
    quality_code_38               String,
    value_39                      String,
    quality_code_39               String,
    value_40                      String,
    quality_code_40               String,
    value_41                      String,
    quality_code_41               String,
    value_42                      String,
    quality_code_42               String,
    value_43                      String,
    quality_code_43               String,
    value_44                      String,
    quality_code_44               String,
    value_45                      String,
    quality_code_45               String,
    value_46                      String,
    quality_code_46               String,
    value_47                      String,
    quality_code_47               String,
    value_48                      String,
    quality_code_48               String,
    value_49                      String,
    quality_code_49               String,
    value_50                      String,
    quality_code_50               String,
    value_51                      String,
    quality_code_51               String,
    value_52                      String,
    quality_code_52               String,
    value_53                      String,
    quality_code_53               String,
    value_54                      String,
    quality_code_54               String,
    value_55                      String,
    quality_code_55               String,
    value_56                      String,
    quality_code_56               String,
    value_57                      String,
    quality_code_57               String,
    value_58                      String,
    quality_code_58               String,
    value_59                      String,
    quality_code_59               String,
    value_60                      String,
    quality_code_60               String,
    value_61                      String,
    quality_code_61               String,
    value_62                      String,
    quality_code_62               String,
    value_63                      String,
    quality_code_63               String,
    value_64                      String,
    quality_code_64               String,
    value_65                      String,
    quality_code_65               String,
    value_66                      String,
    quality_code_66               String,
    value_67                      String,
    quality_code_67               String,
    value_68                      String,
    quality_code_68               String,
    value_69                      String,
    quality_code_69               String,
    value_70                      String,
    quality_code_70               String,
    value_71                      String,
    quality_code_71               String,
    value_72                      String,
    quality_code_72               String,
    value_73                      String,
    quality_code_73               String,
    value_74                      String,
    quality_code_74               String,
    value_75                      String,
    quality_code_75               String,
    value_76                      String,
    quality_code_76               String,
    value_77                      String,
    quality_code_77               String,
    value_78                      String,
    quality_code_78               String,
    value_79                      String,
    quality_code_79               String,
    value_80                      String,
    quality_code_80               String,
    value_81                      String,
    quality_code_81               String,
    value_82                      String,
    quality_code_82               String,
    value_83                      String,
    quality_code_83               String,
    value_84                      String,
    quality_code_84               String,
    value_85                      String,
    quality_code_85               String,
    value_86                      String,
    quality_code_86               String,
    value_87                      String,
    quality_code_87               String,
    value_88                      String,
    quality_code_88               String,
    value_89                      String,
    quality_code_89               String,
    value_90                      String,
    quality_code_90               String,
    value_91                      String,
    quality_code_91               String,
    value_92                      String,
    quality_code_92               String,
    value_93                      String,
    quality_code_93               String,
    value_94                      String,
    quality_code_94               String,
    value_95                      String,
    quality_code_95               String,
    value_96                      String,
    quality_code_96               String
)
PARTITIONED BY (`year` string,`month` string,`day` string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Channels_partitioned/'
;

--
-- TABLE: investigations
--

CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`investigations`(
    site_name                   String,
    investigation_open_date     String,
    arrival_date                String,
    departure_date              String,
    investigation_close_date    String,
    investigation_reason        String,
    outcome                     String
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Investigations/'
;



CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`investigations_partitioned`(
    site_name                   String,
    investigation_open_date     String,
    arrival_date                String,
    departure_date              String,
    investigation_close_date    String,
    investigation_reason        String,
    outcome                     String
)
PARTITIONED BY (`year` string,`month` string,`day` string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Investigations_partitioned/'
;

--
-- TABLE: meters
--


CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`meters`(
    meter_name    String,
    site_name     String,
    meter_type    String,
    suspended     String
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Meters/'
;

CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`meters_partitioned`(
    meter_name    String,
    site_name     String,
    meter_type    String,
    suspended     String
)
PARTITIONED BY (`year` string,`month` string,`day` string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Meters_partitioned/'
;

--
-- TABLE: registers
--

CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`registers`(
   meter_name            String,
    reading_datetime      String,
    uom                   String,
    direction             String,
    tou_tier              String,
    measurement_period    String,
    rollover_value        String,
    value                 String,
    flags                 String
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Registers/'
;



CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`registers_partitioned`(
   meter_name            String,
    reading_datetime      String,
    uom                   String,
    direction             String,
    tou_tier              String,
    measurement_period    String,
    rollover_value        String,
    value                 String,
    flags                 String
)
PARTITIONED BY (`year` string,`month` string,`day` string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Registers_partitioned/'
;

--
-- TABLE: sites
--

CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`sites`(
    site_name                    String,
    zipcode                     String,
    parent_site                  String,
    account                      String,
    latitude                     String,
    longitude                    String,
    site_zoning_category          String,
    standard_use_description    String,
    square_feet                  String,
    year_built                   String,
    assessor_market_value        String,
    has_pool                     String,
    has_central_ac               String,
    is_gas_user                  String,
    has_solar                    String
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Sites/'
;

CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`sites_partitioned`(
    site_name                    String,
    zipcode                     String,
    parent_site                  String,
    account                      String,
    latitude                     String,
    longitude                    String,
    site_zoning_category          String,
    standard_use_description    String,
    square_feet                  String,
    year_built                   String,
    assessor_market_value        String,
    has_pool                     String,
    has_central_ac               String,
    is_gas_user                  String,
    has_solar                    String
)
PARTITIONED BY (`year` string,`month` string,`day` string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Sites_partitioned/'
;



--
-- TABLE: woms
--

CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`wom_events`(
    site_name         String,
    event_datetime    String,
    event_type        String,
    event_name        String
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Wom/'
;



CREATE EXTERNAL TABLE IF NOT EXISTS dsp_ntl_memphis_raw.`wom_events_partitioned`(
    site_name         String,
    event_datetime    String,
    event_type        String,
    event_name        String
)
PARTITIONED BY (`year` string,`month` string,`day` string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
   'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'#{StoragePath}/Wom_partitioned/'
;
