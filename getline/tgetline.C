//
// File:        tgetline.C
// Desc:        
//
//  
//  
// Author:      Paul Houghton x2309 - (houghton@shoe.wiltel.com)
// Created:     07/03/95 07:39
//
// Revision History:
//
// $Log$
// Revision 1.1  1995/11/17 16:03:58  houghton
// Initial Version.
//
//

#include <iostream.h>
#include <fstream.h>

int main( int argc, char * argv[] )
{
  ifstream in( argv[1] );

  char buf[1024];

  while( in.getline( buf, sizeof( buf ) ).good() )
    {
      cout << "Good line: " << buf << endl;
    }

  cout << "DONE: " << buf << endl;

}
