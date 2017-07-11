//
//  secoundViewController.m
//  UI26_Storyboard
//
//  Created by dllo on 16/3/16.
//
//

#import "secoundViewController.h"
#import "TableViewCell.h"

@interface secoundViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation secoundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellStr = @"cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellStr];
//    if (nil == cell) {
//        cell = [TableViewCell alloc]initw
//    }
    
    
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
