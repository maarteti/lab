//
//  maartViewController.h
//  lotto
//
//  Created by jinwoo choi on 12. 1. 9..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface maartViewController : UIViewController {
    IBOutlet UILabel *lblNum1;
    IBOutlet UILabel *lblNum2;
    IBOutlet UILabel *lblNum3;
    IBOutlet UILabel *lblNum4;
    IBOutlet UILabel *lblNum5;
    IBOutlet UILabel *lblNum6;
    
    IBOutlet UIButton *btnGenerate;    
}

- (void)shuffle:(NSMutableArray *)array;

- (IBAction)generateTouchDown:(id)sender;

- (int)getRandomNumber;
@end
