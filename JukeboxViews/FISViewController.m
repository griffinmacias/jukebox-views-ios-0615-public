//
//  FISViewController.m
//  JukeboxViews
//
//  Created by Mason Macias on 6/11/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()
- (IBAction)playButton:(id)sender;
- (IBAction)stopButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *uiSongNumber;
@property (weak, nonatomic) IBOutlet UITextView *playlistView;
- (IBAction)sortBySong:(id)sender;
- (IBAction)sortByArtist:(id)sender;
- (IBAction)sortByAlbum:(id)sender;


@end

@implementation FISViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)setupAVAudioPlayWithFileName:(NSString *)fileName
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:fileName
                                         ofType:@"mp3"]];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc]
                        initWithContentsOfURL:url
                        error:&error];
    if (error)
    {
        NSLog(@"Error in audioPlayer: %@",
              [error localizedDescription]);
    } else {
        [self.audioPlayer prepareToPlay];
    }
}


- (IBAction)playButton:(id)sender
{
    [self setupAVAudioPlayWithFileName:@"05 Takyon (Death Yon)"];
    [self.audioPlayer play];
}

- (IBAction)stopButton:(id)sender
{
    [self.audioPlayer stop];
}

- (IBAction)sortBySong:(id)sender
{
    
}

- (IBAction)sortByArtist:(id)sender
{
    
}

- (IBAction)sortByAlbum:(id)sender
{
    
}
@end
