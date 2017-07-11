//
//  SetViewController.m
//  XIB_AddressBook
//
//  Created by dllo on 16/4/20.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "SetViewController.h"
#import "Student+CoreDataProperties.h"
#import "CoreDataManager.h"
@interface SetViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate>
@property (nonatomic, strong)CoreDataManager *dataManager;

@property (nonatomic, retain) UIImage *image;
@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *sexText;
@property (weak, nonatomic) IBOutlet UITextField *ageText;
@property (weak, nonatomic) IBOutlet UITextField *phoneText;

@end

@implementation SetViewController
- (void)awakeFromNib
{
#pragma mark - 1.初始化coreDataManager 工具类对象
    self.dataManager = [CoreDataManager defaultManager];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.nameText.delegate = self;
    self.sexText.delegate = self;
    self.ageText.delegate = self;
    self.phoneText.delegate = self;
    
}
- (IBAction)TapGRAction:(UITapGestureRecognizer *)sender {
    //访问相册选取图片
    UIImagePickerController *picherC = [[UIImagePickerController alloc]init];
    [self presentViewController:picherC animated:YES completion:nil];
    picherC.allowsEditing = YES;
    picherC.delegate = self;
    //    picherC.mediaTypes = YES;
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    self.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [self dismissViewControllerAnimated:YES completion:nil];
//    NSMutableArray *arr = [NSMutableArray array];
    //    [arr addObject:self.image];
    self.imageV.image = self.image;
    
    
}
- (IBAction)rightActionA:(id)sender {
    
    Student *stu = [[Student alloc] initWithEntity:[NSEntityDescription entityForName:@"Student" inManagedObjectContext:self.dataManager.managedObjectContext] insertIntoManagedObjectContext:self.dataManager.managedObjectContext];
    
    
    //    写入数据库
    
    stu.name = _nameText.text;
    stu.gender = _sexText.text;
    stu.age = [NSNumber numberWithInteger:[_ageText.text integerValue]];
    stu.phoneNumber = [NSNumber numberWithInteger:[_phoneText.text integerValue]];
    
    [self.dataManager saveContext];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"添加成功" message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alert1 = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alert addAction:alert1];
    [self presentViewController:alert animated:YES completion:nil];

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

@end
