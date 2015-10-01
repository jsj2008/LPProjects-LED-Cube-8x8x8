//
//  LPAnimationCellView.m
//  LP_LED_CUBE_8x8x8
//
//  Created by Luka Penger on 29/06/14.
//  Copyright (c) 2014 Luka Penger. All rights reserved.
//

#import "LPAnimationCellView.h"


@implementation LPAnimationCellView

+ (LPAnimationCellView *)cellFromNibNamed:(NSString *)nibName
{
    NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:NULL];
    NSEnumerator *nibEnumerator = [nibContents objectEnumerator];
    LPAnimationCellView *xibBasedCell = nil;
    NSObject* nibItem = nil;
    
    while ((nibItem = [nibEnumerator nextObject]) != nil) {
        if ([nibItem isKindOfClass:[LPAnimationCellView class]]) {
            xibBasedCell = (LPAnimationCellView *)nibItem;
            break;
        }
    }
    
    return xibBasedCell;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    if(selected) {
        self.mainView.backgroundColor = [UIColor colorWithRed:(210.0/255.0) green:(210.0/255.0) blue:(210.0/255.0) alpha:(255.0/255.0)];
    } else {
        self.mainView.backgroundColor = [UIColor colorWithRed:(230.0/255.0) green:(230.0/255.0) blue:(230.0/255.0) alpha:1.0];
    }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    [super setHighlighted:highlighted animated:animated];
    
    if(highlighted) {
        self.mainView.backgroundColor = [UIColor colorWithRed:(210.0/255.0) green:(210.0/255.0) blue:(210.0/255.0) alpha:(255.0/255.0)];
    } else {
        self.mainView.backgroundColor = [UIColor colorWithRed:(230.0/255.0) green:(230.0/255.0) blue:(230.0/255.0) alpha:1.0];
    }
}

@end