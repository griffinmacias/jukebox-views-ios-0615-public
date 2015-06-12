//
//  FISSong.m
//  JukeboxViews
//
//  Created by Mason Macias on 6/11/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISSong.h"

@implementation FISSong


-(instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist album:(NSString *)album andFileName:(NSString *)fileName
{
    self = [super init];
    
    if (self) {
        _title = title;
        _artist = artist;
        _album = album;
        _fileName = fileName;
    }
    
    return self;
}

-(instancetype)init
{
    return [self initWithTitle:@"" artist:@"" album:@"" andFileName:@""];
}










@end
