//
//  RootViewController.m
//  UI26_Storyboard
//
//  Created by dllo on 16/3/16.
//
//

#import "RootViewController.h"
#import "firstViewController.h"
@interface RootViewController ()<UITextFieldDelegate>
@property (retain, nonatomic) IBOutlet UILabel *label;
@property (retain, nonatomic) IBOutlet UITextField *field;

@end

@implementation RootViewController
- (IBAction)buttonAction:(UIButton *)sender {
    
    NSLog(@"5451451");
    self.label.text = self.field.text;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    代码签协议活着拖选
//    self.field.delegate = self;
    
    
    
}

//当界面push时会调用此方法,segue储存了界面之间的信息
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    firstViewController *firstVC = segue.destinationViewController;
    firstVC.str = @"班长";
    [UIView transitionFromView:segue.sourceViewController.view toView:firstVC.view duration:3 options:UIViewAnimationOptionTransitionCrossDissolve completion:^(BOOL finished) {
        
        
    }];
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
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

- (void)dealloc {
    [_label release];
    [_field release];
    [super dealloc];
}
@end
