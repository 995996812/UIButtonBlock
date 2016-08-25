//
//  UIButton+Block.h
//  BlockButton
//
//  Created by 王鹏华 on 16/8/25.
//  Copyright © 2016年 condentast. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  触发按钮之后的回调
 *
 *  @param btn <#btn description#>
 */
typedef void (^CallBackBlock)(UIButton *button);

@interface UIButton (Block)
/**
 *  button添加事件
 *
 *  @param block 回调
 */
- (void)addClickMethod:(CallBackBlock)block;
/**
 *  button添加事件 -> 可指定触发形式
 *
 *  @param block         回调
 *  @param controlEvents 触发形式
 */
- (void)addClickMethod:(CallBackBlock)block forControlEvents:(UIControlEvents)controlEvents;

@end
