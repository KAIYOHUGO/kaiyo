#include <stdio.h>
#include "tinyxml.h"
#include <sys/stat.h>
#include <unistd.h>
#include <iostream>
#include <string>


int main(int argc, char const *argv[])
{
  using namespace std;

    //setup
  if (argc!=2)
  {
      throw "error! unknow arg!!";
  }
  XMLDocument doc;
  doc.LoadFile( argv[1] );




  return 0;
}
