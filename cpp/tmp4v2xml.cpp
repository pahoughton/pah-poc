#include <iostream>
#include <mp4v2/mp4v2.h>


int
main( int argc, char * argv[] )
{
  MP4FileHandle hFile = MP4Read( "movie.mp4" ); //, MP4_DETAILS_ERROR);
  if ( hFile != MP4_INVALID_FILE_HANDLE ) {
    MP4ItmfItemList* list;
    list = MP4ItmfGetItemsByMeaning(hFile, "com.apple.iTunes", "iTunMOVI");
    if (list) {
      if( list->size ) {
	int i = 0;
	for( ; i < list->size; i++ ) {
	  int j = 0;
	  std::cout << "LIST: " << i << std::endl;
          MP4ItmfItem* item = &list->elements[i];
	  for( ; j < item->dataList.size; j++ ) {
	    std::cout << "ELEMENT: " << j << std::endl;
            MP4ItmfData* data = &item->dataList.elements[j];
	    std::cout << "  size: " << data->valueSize << std::endl;
	    std::cout << "  data: " << data->value << std::endl;
	  }
	}
      }
    }
  }
}
