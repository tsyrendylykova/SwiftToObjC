//
//  ViewController.m
//  HWSwiftToObjC
//
//  Created by Цырендылыкова Эржена on 19/03/2019.
//  Copyright © 2019 Erzhena Tsyrendylykova. All rights reserved.
//

#import "ViewController.h"
#import "HWSwiftToObjC-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LinkedListObjC *array = [LinkedListObjC new];
    
    NSLog(@"%d", array.isEmpty);
    NSLog(@"%ld", array.count);
    
    [array append:(@1)];
    [array append:(@2)];
    [array append:(@3)];
    
    NSLog(@"%d", array.isEmpty);
    NSLog(@"%ld", array.count);
}


@end
