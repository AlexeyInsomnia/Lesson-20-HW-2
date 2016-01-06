//
//  ViewController.m
//  Lesson 20 HW 2
//
//  Created by Alex on 05.01.16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    for (UIView* redCells in self.redCkeckers) {
        redCells.layer.cornerRadius = 15;
        //checkersView.layer.cornerRadius = checkersRect.size.width/2 ;
    }
    
    for (UIView* whiteCells in self.whiteCheckers) {
        whiteCells.layer.cornerRadius = 15;
    }
    
    // NSInteger countSubs = self.boardView.subviews.count;
    // NSLog(@"subs - %ld", countSubs);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat) randomFromZeroToOne {
    return (float) (arc4random() % 256)/255;
}

- (UIColor*) randomColor {
    CGFloat r = [self randomFromZeroToOne];
    CGFloat g = [self randomFromZeroToOne];
    CGFloat b = [self randomFromZeroToOne];
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}

- (UIColor*) normColors {
    int i = arc4random() % 3;
    UIColor* color;
    switch (i) {
        case 1:
            return color = [UIColor blackColor];
            break;
            
        case 2:
            return color = [UIColor purpleColor];
            break;
            
        case 3:
            return color = [UIColor blueColor];
            break;
    }
    return color;
}

- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    /*
    for (UIView* cells in self.blackCells) {
        cells.backgroundColor = [self randomColor];
    }
    */
    //randomColor for each cell is annoying, lets color on BLUE color or PURPLECOLOR full desk of black cells
    
    UIColor* randomOfThree = [self normColors];
    
    for (UIView* cells in self.blackCells) {
        cells.backgroundColor = randomOfThree;
    }
    
    
    for (int i = 0; i<[self.boardView.subviews count]; i++) {
        UIView* subView = [self.boardView.subviews objectAtIndex:i];
        if (subView.tag == 1) {
            while (YES) {
                NSUInteger randomIndex = arc4random()%[self.boardView.subviews count];
                UIView* subView2 = [self.boardView.subviews objectAtIndex:randomIndex];
                  if (subView2.tag == 1 && ![subView isEqual:subView2]) {
                    CGRect frame = subView.frame;
                     subView.frame = CGRectMake(subView2.frame.origin.x, subView2.frame.origin.y, subView2.frame.size.width, subView2.frame.size.height);
                    subView2.frame = CGRectMake(frame.origin.x, frame.origin.y, subView2.frame.size.width, subView2.frame.size.height);
                    [self.boardView exchangeSubviewAtIndex:i withSubviewAtIndex:randomIndex];
                    break;
                    
                }
            }
        }
    }
    

 
}

@end
