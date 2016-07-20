
//{{BLOCK(BGclouds)

//======================================================================
//
//	BGclouds, 512x256@8, 
//	+ palette 256 entries, not compressed
//	+ 25 tiles (t reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 1600 + 4096 = 6208
//
//	Time-stamp: 2015-03-29, 12:37:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGCLOUDS_H
#define GRIT_BGCLOUDS_H

#define BGcloudsTilesLen 1600
extern const unsigned short BGcloudsTiles[800];

#define BGcloudsMapLen 4096
extern const unsigned short BGcloudsMap[2048];

#define BGcloudsPalLen 512
extern const unsigned short BGcloudsPal[256];

#endif // GRIT_BGCLOUDS_H

//}}BLOCK(BGclouds)
