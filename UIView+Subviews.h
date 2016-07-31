//
//  UIView+Subviews.h
//  ChildrenLocation
//
//  Created by szalarm on 16/3/8.
//  Copyright © 2016年 szalarm. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 举个栗子
 [self.view getArrayOfSubviews];//获取所有子视图
 */
@interface UIView (Subviews)
-(void) mddsubviewsWithView:(void(^)(UIView * view))pDoCallBack FromArray:(NSMutableArray *)pArr;
-(NSMutableArray *) getArrayOfSubviews;
@end
