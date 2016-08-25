//
//  UIButton+Block.m
//  BlockButton
//
//  Created by 王鹏华 on 16/8/25.
//  Copyright © 2016年 condentast. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>


@implementation UIButton (Block)

static char identifier;
- (void)addClickMethod:(CallBackBlock)block
{
    objc_setAssociatedObject(self, &identifier, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)addClickMethod:(CallBackBlock)block forControlEvents:(UIControlEvents)controlEvents
{
    objc_setAssociatedObject(self, &identifier, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self addTarget:self action:@selector(clickButton:) forControlEvents:controlEvents];
}
/**
 *  事件的响应方法
 *
 *  @param sender 按钮
 */
- (void)clickButton:(id)sender{
    CallBackBlock blockAction = objc_getAssociatedObject(self, &identifier);
    if (blockAction) {
        blockAction(self);
    }
}
@end
