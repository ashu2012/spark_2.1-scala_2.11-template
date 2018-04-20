package com.honeywell.dsp

import scala.io.Source._
import org.apache.spark.sql.SparkSession
import org.apache.spark.sql

class createHiveTables  {

  def initializeHiveTables( spark: SparkSession) = {

    val sqlFile= "RAWBlackhillsExternalPhysicalStructures.sql"
    val lines = scala.io.Source.fromFile(sqlFile).getLines().filterNot(_.isEmpty)

    val queries = lines.foldLeft(List[String]()) {
      case (queries, line) =>
        queries match {
          case Nil => List(line) // case for the very first line
          case init :+ last =>
            if (last.endsWith(";")) {
              // if a query ended on a previous line, we simply append the new line to the list of queries
              queries :+ line.trim
            } else {
              // the query is not terminated yet, concatenate the line with the previous one
              val queryWithNextLine = last + " " + line.trim
              init :+ queryWithNextLine
            }
        }
    }

    queries.map(query => spark.sql(query))
  }

}
