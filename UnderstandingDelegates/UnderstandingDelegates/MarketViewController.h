//
//  MarketViewController.h
//  UnderstandingDelegates
//
//  Created by shabib hossain on 5/13/13.
//  Copyright (c) 2013 shabib hossain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarFactory.h"

@interface MarketViewController : UITableViewController <CarRegisterDelegate>
{
    NSArray *cars;
}
@end
