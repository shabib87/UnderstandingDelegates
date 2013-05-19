//
//  CarFactory.m
//  UnderstandingDelegates
//
//  Created by shabib hossain on 5/12/13.
//  Copyright (c) 2013 shabib hossain. All rights reserved.
//

#import "CarFactory.h"

@implementation CarFactory

@synthesize delegate;
@synthesize carNameLabel;
@synthesize carNo;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        carNameLabel = [[UILabel alloc] init];
        carNameLabel.backgroundColor = [UIColor clearColor];
        carNameLabel.textColor = [UIColor brownColor];
        
        orderCarButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [orderCarButton setTitle:@"Buy" forState:UIControlStateNormal];
        [orderCarButton addTarget:self action:@selector(buyButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.contentView addSubview:carNameLabel];
        [self.contentView addSubview:orderCarButton];
    }
    return self;
}

-(void)dealloc
{
    self.carNameLabel = nil;
    [carNameLabel release];
    [super dealloc];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    carNameLabel.frame = CGRectMake(10, 0, 150, 44);
    
    orderCarButton.frame = CGRectMake(160, 0, 150, 44);
}

-(void)buyButtonPressed:(id)sender
{
    if(delegate)
    {
        [delegate orderedCarIs:self.carNo];
    }
}

@end
