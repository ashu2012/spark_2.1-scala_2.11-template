import com.honeywell.testsuit.SparkSessionTestWrapper
import org.scalatest.FunSuite
import org.apache.spark.sql.SparkSession


class NtlTest extends FunSuite  with SparkSessionTestWrapper{
  test("test initializing spark context") {
    val myLocalInProcessSession = SparkSession
      .builder
      .master("local[*]") //This is the key config change to make it a local in process spark session.
      .appName("myApp")
      .getOrCreate()
    val list = List(1, 2, 3, 4)
    val rdd = myLocalInProcessSession.sparkContext.parallelize(list)

    assert(rdd.count === list.length)
    myLocalInProcessSession.close()
  }
}