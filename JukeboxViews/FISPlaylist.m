//
//  FISPlaylist.m
//  JukeboxViews
//
//  Created by Mason Macias on 6/11/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISPlaylist.h"

@implementation FISPlaylist

- (instancetype)init
{
    self = [super init];
    if (self) {
        _songs = [[NSMutableArray alloc] init];
    }
    return self;
}


- (void)sortSongsByTitle
{
    NSSortDescriptor *alphabetizerByTitle = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES];
    NSSortDescriptor *alphabetizerByArtist = [NSSortDescriptor sortDescriptorWithKey:@"artist" ascending:YES];
    
    [self.songs sortUsingDescriptors:@[alphabetizerByTitle, alphabetizerByArtist]];
    
    
    
}
- (void)sortSongsByArtist
{
    NSSortDescriptor *alphabetizerByArtist = [NSSortDescriptor sortDescriptorWithKey:@"artist" ascending:YES];
    NSSortDescriptor *alphabetizerByAlbum = [NSSortDescriptor sortDescriptorWithKey:@"album" ascending:YES];
    NSSortDescriptor *alphabetizerTitle = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES];
    
    [self.songs sortUsingDescriptors:@[alphabetizerByArtist, alphabetizerByAlbum, alphabetizerTitle]];
   
}
- (void)sortSongsByAlbum
{
    NSSortDescriptor *alphabetizerByAlbum = [NSSortDescriptor sortDescriptorWithKey:@"album" ascending:YES];
    NSSortDescriptor *alphabetizerByTitle = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES];
    
    [self.songs sortUsingDescriptors:@[alphabetizerByAlbum, alphabetizerByTitle]];
}
- (NSString *)description
{
    NSMutableString *playListString = [[NSMutableString alloc] init];
    NSInteger i = 0;
    for (FISSong *song in self.songs) {
        i++;
        NSString *formattedPlaylist = [NSString stringWithFormat:@"%li. Title: %@ Artist: %@ Album: %@\n", i, song.title, song.artist, song.album];
        
        [playListString appendString:formattedPlaylist];
    
    }
    
    return playListString;
}
- (FISSong *)songAtPosition:(NSNumber *)position
{
    if ([position integerValue] -1 > [self.songs count] || [position integerValue] <= 0) {
        return nil;
    } else {
        return [self.songs objectAtIndex:[position integerValue] -1];
    }
    
}














@end
