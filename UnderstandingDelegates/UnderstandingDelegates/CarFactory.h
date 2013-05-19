//
//  CarFactory.h
//  UnderstandingDelegates
//
//  Created by shabib hossain on 5/12/13.
//  Copyright (c) 2013 shabib hossain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CarRegisterDelegate <NSObject>

-(void)orderedCarIs:(int)_carNo;

@end

@interface CarFactory : UITableViewCell
{
    UIButton *orderCarButton;
}

@property (nonatomic, assign) id <CarRegisterDelegate> delegate;
@property (nonatomic, retain) UILabel *carNameLabel;
@property (assign) int carNo;

@end
