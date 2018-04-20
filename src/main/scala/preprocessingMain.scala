
package com.honeywell.dsp

import org.apache.spark.sql.SparkSession
import org.apache.log4j.{ Level, LogManager, PropertyConfigurator }
import org.apache.spark._
import org.apache.spark.rdd.RDD


import org.apache.spark.sql.SparkSession

trait SparkSessionWrapper {

  lazy val spark: SparkSession = {
    SparkSession.builder().master("local").appName("spark session").getOrCreate()
  }

}



class preprocessingMain extends  App {
      print("Main method starting")
    print("loading config into property")

}
