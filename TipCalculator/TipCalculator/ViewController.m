//
//  ViewController.m
//  TipCalculator
//
//  Created by Zach Smoroden on 2016-05-13.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UISlider *tipSlider;

@property (nonatomic) double tipPercentage;

@property (weak, nonatomic) IBOutlet UILabel *tipPercentageLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tipPercentage = (int)self.tipSlider.value;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:NO];
}

- (IBAction)textChanged:(UITextField *)sender {
    if([sender.text isEqualToString:@""]) {
        self.tipAmountLabel.text = @"Tip amount...";
    } else {
        [self calculateTip];
    }
}
- (IBAction)tipChanged:(UISlider *)sender {
    
    self.tipPercentage = (int)sender.value;
    
    self.tipPercentageLabel.text = [NSString stringWithFormat:@"Choose the tip percentage: %0.0f%%", self.tipPercentage];
    [self calculateTip];
    
}

-(void)calculateTip {
    double billTotal = [self.billAmountTextField.text doubleValue];
    
    double tipTotal = billTotal * (self.tipPercentage / 100);
    
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$%0.2f", tipTotal];
}


@end
