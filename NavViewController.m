//
//  NavViewController.m
//  ARCDemo
//
//  Created by 振东 何 on 12-7-25.
//  Copyright (c) 2012年 开趣. All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController ()
@property (retain, nonatomic) NSMutableArray *tableArray;
@property (retain, nonatomic) IBOutlet UITableView *table;

@end

@implementation NavViewController
@synthesize tableArray, table;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tableArray = [NSMutableArray arrayWithObjects:@"RevealFromBottom", @"RevealFromTop", @"RevealFromLeft", @"RevealFromRight", @"EaseIn", @"EaseOut", @"FlipFromLeft", @"FlipFromRigh", @"CurlUp", @"CurlDown", @"RotateAndScaleEffects", @"RotateAndScaleDownUp", @"PushUp", @"PushDown", @"PushLeft", @"PushRight", @"MoveUp", @"MoveDown", @"MoveLeft", @"MoveRight", @"FlipFromTop", @"FlipFromBottom", @"CubeFromLeft", @"CubeFromRight", @"CubeFromTop", @"CubeFromBottom", @"SuckEffect", @"RippleEffect", @"CameraOpen", @"CameraClose", nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    [self setTable:nil];
    [self setTableArray:nil];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc 
{
    [table      release];
    [tableArray release];
    
    [super dealloc];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tableArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"animationCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell)
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier] autorelease];
    }
    
    cell.textLabel.text      = [self.tableArray objectAtIndex:indexPath.row];
    cell.textLabel.textColor = [UIColor greenColor];
    cell.textLabel.font      = [UIFont systemFontOfSize:13];
    
    return cell;
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case 0:
            [NavAnimation animationRevealFromBottom:self.navigationController.view];
            break;
        case 1:
            [NavAnimation animationRevealFromTop:self.navigationController.view];
            break;
        case 2:
            [NavAnimation animationRevealFromLeft:self.navigationController.view];
            break;
        case 3:
            [NavAnimation animationRevealFromRight:self.navigationController.view];
            break;
        case 4:
            [NavAnimation animationEaseIn:self.navigationController.view];
            break;
        case 5:
            [NavAnimation animationEaseOut:self.navigationController.view];
            break;
        case 6:
            [NavAnimation animationFlipFromLeft:self.navigationController.view];
            break;
        case 7:
            [NavAnimation animationFlipFromRigh:self.navigationController.view];
            break;
        case 8:
            [NavAnimation animationCurlUp:self.navigationController.view];
            break;
        case 9:
            [NavAnimation animationCurlDown:self.navigationController.view];
            break;
        case 10:
            [NavAnimation animationRotateAndScaleEffects:self.navigationController.view];
            break;
        case 11:
            [NavAnimation animationRotateAndScaleDownUp:self.navigationController.view];
            break;
        case 12:
            [NavAnimation animationPushUp:self.navigationController.view];
            break;
        case 13:
            [NavAnimation animationPushDown:self.navigationController.view];
            break;
        case 14:
            [NavAnimation animationPushLeft:self.navigationController.view];
            break;
        case 15:
            [NavAnimation animationPushRight:self.navigationController.view];
            break;
        case 16:
            [NavAnimation animationMoveUp:self.navigationController.view];
            break;
        case 17:
            [NavAnimation animationMoveDown:self.navigationController.view];
            break;
        case 18:
            [NavAnimation animationMoveLeft:self.navigationController.view];
            break;
        case 19:
            [NavAnimation animationMoveRight:self.navigationController.view];
            break;
        case 20:
            [NavAnimation animationFlipFromTop:self.navigationController.view];
            break;
        case 21:
            [NavAnimation animationFlipFromBottom:self.navigationController.view];
            break;
        case 22:
            [NavAnimation animationCubeFromLeft:self.navigationController.view];
            break;
        case 23:
            [NavAnimation animationCubeFromRight:self.navigationController.view];
            break;
        case 24:
            [NavAnimation animationCubeFromTop:self.navigationController.view];
            break;
        case 25:
            [NavAnimation animationCubeFromBottom:self.navigationController.view];
            break;
        case 26:
            [NavAnimation animationSuckEffect:self.navigationController.view];
            break;
        case 27:
            [NavAnimation animationRippleEffect:self.navigationController.view];
            break;
        case 28:
            [NavAnimation animationCameraOpen:self.navigationController.view];
            break;
        case 29:
            [NavAnimation animationCameraClose:self.navigationController.view];
            break;
            
        default:
            break;
    }
    
    [self.navigationController popViewControllerAnimated:NO];
}


@end
