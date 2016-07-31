//
//  UIView+Subviews.m
//  ChildrenLocation
//
//  Created by szalarm on 16/3/8.
//  Copyright © 2016年 szalarm. All rights reserved.
//

#import "UIView+Subviews.h"

@implementation UIView (Subviews)
//获取所有子视图

-(void) mddsubviewsWithView:(void(^)(UIView * view))pDoCallBack FromArray:(NSMutableArray *)pArr
{
    if (nil==pArr) {
        pArr=[NSMutableArray array];
    }
    //拿进去
//    [pArr addObject:self];
    pDoCallBack(self);
//    NSLog(@"%@",self);
    if (self.subviews) {
        for (UIView * subview in self.subviews) {
            [subview mddsubviewsWithView:^(UIView *view) {
                [pArr addObject:view];
            } FromArray:pArr];
        }
    }
}
-(NSMutableArray *) getArrayOfSubviews
{
    __block NSMutableArray * _mddArrayOfAllSubviews=[NSMutableArray array];
    [self mddsubviewsWithView:^(UIView *view) {
        [_mddArrayOfAllSubviews addObject:view];
    } FromArray:_mddArrayOfAllSubviews];
    return _mddArrayOfAllSubviews;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
