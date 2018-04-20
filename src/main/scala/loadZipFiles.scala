package com.honeywell.dsp
import sys.process._

class loadZipFile() {

  def clean()={
    print("delete unzip location for particular file")
  }

  def UnzipFiles(filename: String) = {
    "hdfs dfs -ls /".!

  }

  def loadFileToHiveTable(FileType: String) = {
        print("loading file into hive")
  }

}

