logLevel := Level.Warn

//resolvers += Resolver.typesafeRepo("releases")
resolvers += "bintray-spark-packages" at "https://dl.bintray.com/spark-packages/maven/"
resolvers += Resolver.url("bintray-sbt-plugins", url("https://dl.bintray.com/eed3si9n/sbt-plugins/"))

//addSbtPlugin("org.spark-packages" % "sbt-spark-package" % "0.2.6")
//addSbtPlugin("org.scalariform" % "sbt-scalariform" % "1.6.0")
addSbtPlugin("com.eed3si9n" % "sbt-assembly" % "0.14.5")