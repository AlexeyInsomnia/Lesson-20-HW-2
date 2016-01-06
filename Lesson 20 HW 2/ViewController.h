//
//  ViewController.h
//  Lesson 20 HW 2
//
//  Created by Alex on 05.01.16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *boardView;


@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *blackCells;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *whiteCheckers;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *redCkeckers;


@end

