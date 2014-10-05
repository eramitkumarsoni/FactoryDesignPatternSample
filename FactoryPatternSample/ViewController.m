//
//  ViewController.m
//  FactoryPatternSample
//
//  Created by Amit Soni on 10/26/13.

//

#import "ViewController.h"
#import "BaseClass.h"

@interface ViewController ()
- (IBAction)playAudioButtonPressed:(id)sender;
- (IBAction)playVideoButtonPressed:(id)sender;
- (IBAction)showWallpaperButtonPressed:(id)sender;
- (IBAction)stopButtonPressed:(id)sender;

@property (strong, nonatomic) BaseClass *baseClass;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction Methods
- (IBAction)playAudioButtonPressed:(id)sender {
    self.baseClass = [[BaseClass alloc] initWithContentType:@"audio"];
    [self.baseClass playContent];
}

- (IBAction)playVideoButtonPressed:(id)sender {
    self.baseClass = [[BaseClass alloc] initWithContentType:@"video"];
    [self.baseClass playContent];
}

- (IBAction)showWallpaperButtonPressed:(id)sender {
    self.baseClass = [[BaseClass alloc] initWithContentType:@"wallPaper"];
    [self.baseClass playContent];
}

- (IBAction)stopButtonPressed:(id)sender {
    [self.baseClass stopPlaying];
}

@end
