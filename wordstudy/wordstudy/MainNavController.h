//
//  MainNavController.h
//  wordstudy
//
//  Created by jinwoo choi on 11. 12. 10..
//  Copyright (c) 2011년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SBJsonParser;
@class SBJsonWriter;

@interface MainNavController : UINavigationController {
    SBJsonParser *_parser;
    SBJsonWriter *_writer;
}

@end
