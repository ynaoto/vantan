//
//  ViewController.m
//  WebApp
//
//  Created by Naoto Yoshioka on 2014/05/26.
//  Copyright (c) 2014年 Naoto Yoshioka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *theWebView;
@property (weak, nonatomic) IBOutlet UILabel *webLoadLevelLabel;

@end

@implementation ViewController
{
    int webLoadLevel;
}

- (void)updateWebLoadLevelLabel
{
    self.webLoadLevelLabel.text = [NSString stringWithFormat:@"%d", webLoadLevel];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"%s", __FUNCTION__);
    webLoadLevel++;
    [self updateWebLoadLevelLabel];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"%s", __FUNCTION__);
    webLoadLevel--;
    [self updateWebLoadLevelLabel];
}

- (void)loadURL:(NSString*)url
{
    NSURL *nsurl = [NSURL URLWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:nsurl];
    self.theWebView.delegate = self;
    [self.theWebView loadRequest:request];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    webLoadLevel = 0;
    [self updateWebLoadLevelLabel];
    
    [self loadURL:@"https://www.google.co.jp/search?q=%E6%AA%80%E3%81%B5%E3%81%BF&es_sm=91&source=lnms&tbm=isch&sa=X&ei=VuKCU-OGFsPd8AXLwYKoAg&ved=0CAgQ_AUoAQ&biw=1110&bih=699&dpr=1.1"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loadDanmitsu:(id)sender {
    [self loadURL:@"https://www.google.co.jp/search?q=%E5%A3%87%E8%9C%9C&es_sm=91&source=lnms&tbm=isch&sa=X&ei=NO-CU7e8D8248gX5iYB4&ved=0CAgQ_AUoAQ&biw=1110&bih=699"];
}

- (IBAction)loadDanrei:(id)sender {
    [self loadURL:@"https://www.google.co.jp/search?q=%E5%A3%87%E8%9C%9C&es_sm=91&source=lnms&tbm=isch&sa=X&ei=NO-CU7e8D8248gX5iYB4&ved=0CAgQ_AUoAQ&biw=1110&bih=699#q=%E5%A3%87%E3%82%8C%E3%81%84&tbm=isch"];
}

- (IBAction)loadMoroboshiDan:(id)sender {
    [self loadURL:@"https://www.google.co.jp/search?q=%E5%A3%87%E8%9C%9C&es_sm=91&source=lnms&tbm=isch&sa=X&ei=NO-CU7e8D8248gX5iYB4&ved=0CAgQ_AUoAQ&biw=1110&bih=699#q=%E3%83%A2%E3%83%AD%E3%83%9C%E3%82%B7%E3%83%80%E3%83%B3&tbm=isch"];
}

@end
