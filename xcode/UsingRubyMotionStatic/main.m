//
//  main.m
//  UsingRubyMotionStatic
//
//  Created by siuying on 12年7月30日.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        void RubyMotionInit(int, char **);
        RubyMotionInit(argc, argv);

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
