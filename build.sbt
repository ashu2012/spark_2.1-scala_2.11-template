name := "ntl-blackhills-td"
organization := "com.honeywell.dsp" // change to your org
version := "0.1"

scalaVersion := "2.11.8"
val sparkVersion = "2.1.1"

resolvers += "jitpack" at "https://jitpack.io"
resolvers += "bintray-spark-packages" at "https://dl.bintray.com/spark-packages/maven/"

resolvers += Resolver.url("artifactory", url("http://scalasbt.artifactoryonline.com/scalasbt/sbt-plugin-releases"))(Resolver.ivyStylePatterns)

resolvers += Resolver.url("bintray-sbt-plugins", url("http://dl.bintray.com/sbt/sbt-plugin-releases"))(Resolver.ivyStylePatterns)


//addSbtPlugin("org.spark-packages" % "sbt-spark-package" % "0.2.6")



libraryDependencies ++= Seq(
  "org.apache.spark" %% "spark-core" % "2.1.1" ,
  "org.apache.spark" %% "spark-sql" % "2.1.1" ,
  "org.apache.spark" %% "spark-hive" % "2.1.1",
  //"com.databricks" %% "spark-avro" % "3.2.0",
  //"org.json4s" %% "json4s-native" % "3.5.3",
  //"org.scala-lang" % "scala-library" % "2.11.8" % "provided",
  //"org.scala-lang" % "scala-compiler" % "2.11.8" % "provided",
  //"org.slf4j" % "slf4j-log4j12" % "1.7.10",
  // spark-modules
  // "org.apache.spark" %% "spark-graphx" % "1.6.0",
  // "org.apache.spark" %% "spark-mllib" % "1.6.0",
  // "org.apache.spark" %% "spark-streaming" % "1.6.0",

  // spark packages
 // "com.databricks" %% "spark-csv" % "1.3.0",

  // testing
//  "org.scalatest"   %% "scalatest"    % "2.2.4"   % "test,it",
 // "org.scalacheck"  %% "scalacheck"   % "1.12.2"      % "test,it"

  // logging
  "org.apache.logging.log4j" % "log4j-api" % "2.4.1",
  "org.apache.logging.log4j" % "log4j-core" % "2.4.1",


  //"com.eed3si9n" % "sbt-assembly" % "0.14.3",

  "com.lihaoyi" %% "utest" % "0.6.3" % "test",
  "org.scalatest" %% "scalatest" % "3.0.1" % "test",
   "com.github.mrpowers" % "spark-daria" % "v2.3.0_0.18.0" % "test"


)

testFrameworks += new TestFramework("utest.runner.Framework")

fork in run := true
javaOptions in run ++= Seq(
  "-Dlog4j.debug=true",
  "-Dlog4j.configuration=log4j.properties")
outputStrategy := Some(StdoutOutput)


fork in Test := true
javaOptions ++= Seq("-Xms512M", "-Xmx2048M", "-XX:+CMSClassUnloadingEnabled","-Duser.timezone=UTC")


//addSbtPlugin("com.eed3si9n" % "sbt-assembly" % "0.14.3")

exportJars := true
/* without this explicit merge strategy code you get a lot of noise from sbt-assembly
   complaining about not being able to dedup files */
assemblyMergeStrategy in assembly := {
  case PathList("org","aopalliance", xs @ _*) => MergeStrategy.last
  case PathList("javax", "inject", xs @ _*) => MergeStrategy.last
  case PathList("javax", "servlet", xs @ _*) => MergeStrategy.last
  case PathList("javax", "activation", xs @ _*) => MergeStrategy.last
  case PathList("org", "apache", xs @ _*) => MergeStrategy.last
  case PathList("com", "google", xs @ _*) => MergeStrategy.last
  case PathList("com", "esotericsoftware", xs @ _*) => MergeStrategy.last
  case PathList("com", "codahale", xs @ _*) => MergeStrategy.last
  case PathList("com", "yammer", xs @ _*) => MergeStrategy.last
  case "about.html" => MergeStrategy.rename
  case "META-INF/ECLIPSEF.RSA" => MergeStrategy.last
  case "META-INF/mailcap" => MergeStrategy.last
  case "META-INF/mimetypes.default" => MergeStrategy.last
  case "plugin.properties" => MergeStrategy.last
  case "log4j.properties" => MergeStrategy.last
  case "overview.html" => MergeStrategy.last  // Added this for 2.1.0 I think
  case x =>
    val oldStrategy = (assemblyMergeStrategy in assembly).value
    oldStrategy(x)
}

/* including scala bloats your assembly jar unnecessarily, and may interfere with
   spark runtime */
assemblyOption in assembly := (assemblyOption in assembly).value.copy(includeScala = false)

/* you need to be able to undo the "provided" annotation on the deps when running your spark
   programs locally i.e. from sbt; this bit reincludes the full classpaths in the compile and run tasks. */
fullClasspath in Runtime := (fullClasspath in (Compile, run)).value


//mainClass in Compile := Some("com.honeywell.dsp.preprocessingMain")
//mainClass in(Compile, run) := Some("com.honeywell.dsp.preprocessingMain")
//mainClass in(Compile, packageBin) := Some("com.honeywell.dsp.preprocessingMain")
//mainClass in assembly := Some("com.honeywell.dsp.preprocessingMain")
