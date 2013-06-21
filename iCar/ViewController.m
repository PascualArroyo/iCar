//
//  ViewController.m
//  iCar
//
//  Created by Pascual on 18/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize outputStream;
@synthesize inputStream;
@synthesize marco1;
@synthesize marco2;
@synthesize mando1;
@synthesize mando2;
@synthesize tocar1;
@synthesize tocar2;
@synthesize botonCamara;
@synthesize marcoCamara;
@synthesize mandoCamara;

@synthesize botonBeep;
@synthesize botonConnect;
@synthesize botonDisconnect;
@synthesize botonLights;
@synthesize botonPower;
@synthesize ip;

@synthesize buffer;

@synthesize resolution;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        marcoCamara = [[UIImageView alloc] initWithFrame:CGRectMake(200, 150, self.view.bounds.size.height-400, self.view.bounds.size.width-240) ];
        [self.view addSubview:marcoCamara];
        [[marcoCamara layer] setCornerRadius:2.0f];
        [[marcoCamara layer] setBorderWidth:1.0f];
        [marcoCamara release];
        
        mandoCamara = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 15, 15)];
        mandoCamara.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mandoCamara];
        [[mandoCamara layer] setCornerRadius:7.5f];
        [[mandoCamara layer] setMasksToBounds:YES];
        mandoCamara.center = CGPointMake(marcoCamara.center.x, marcoCamara.center.y);
        [mandoCamara release];
        
        marco1 = [[UIView alloc] initWithFrame:CGRectMake(80, 70, 50, 400) ];
        marco1.backgroundColor = [UIColor darkGrayColor];
        [self.view addSubview:marco1];
        [[marco1 layer] setCornerRadius:5.0f];
        [[marco1 layer] setMasksToBounds:YES];
        [[marco1 layer] setBorderWidth:2.0f];
        marco1.center = CGPointMake(marco1.center.x, 410);
        [marco1 release];
        
        tocar1 = [[UIView alloc] initWithFrame:CGRectMake(30, 70, 110, 400) ];
        tocar1.backgroundColor = [UIColor clearColor];
        tocar1.center = CGPointMake(marco1.center.x, marco1.center.y);
        [self.view addSubview:tocar1];
        [tocar1 release];
        
        marco2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.height-130, 70, 50, 400) ];
        marco2.backgroundColor = [UIColor darkGrayColor];
        marco2.center = CGPointMake(marco2.center.x, 410);
        [self.view addSubview:marco2];
        [[marco2 layer] setCornerRadius:5.0f];
        [[marco2 layer] setMasksToBounds:YES];
        [[marco2 layer] setBorderWidth:2.0f];
        [marco2 release];
        
        tocar2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.height-115, 70, 110, 400) ];
        tocar2.backgroundColor = [UIColor clearColor];
        tocar2.center = CGPointMake(marco2.center.x, marco2.center.y);
        [self.view addSubview:tocar2];
        [tocar2 release];
        
        mando1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        mando1.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mando1];
        [[mando1 layer] setCornerRadius:20.0f];
        [[mando1 layer] setMasksToBounds:YES];
        [[mando1 layer] setBorderWidth:1.0f];
        mando1.center = CGPointMake(marco1.center.x, marco1.center.y);
        [mando1 release];
        
        mando2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        mando2.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mando2];
        [[mando2 layer] setCornerRadius:20.0f];
        [[mando2 layer] setMasksToBounds:YES];
        [[mando2 layer] setBorderWidth:1.0f];
        mando2.center = CGPointMake(marco2.center.x, marco2.center.y);
        [mando2 release];
     
    }
    
    else
    {
        
        marcoCamara = [[UIImageView alloc] initWithFrame:CGRectMake(125, 55, self.view.bounds.size.height-250, self.view.bounds.size.width-70) ];
        [self.view addSubview:marcoCamara];
        [[marcoCamara layer] setCornerRadius:2.0f];
        [[marcoCamara layer] setBorderWidth:1.0f];
        [marcoCamara release];
        
        mandoCamara = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 15, 15)];
        mandoCamara.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mandoCamara];
        [[mandoCamara layer] setCornerRadius:7.5f];
        [[mandoCamara layer] setMasksToBounds:YES];
        mandoCamara.center = CGPointMake(marcoCamara.center.x, marcoCamara.center.y);
        [mandoCamara release];
        
        marco1 = [[UIView alloc] initWithFrame:CGRectMake(35, 70, 50, 200) ];
        marco1.backgroundColor = [UIColor darkGrayColor];
        [self.view addSubview:marco1];
        [[marco1 layer] setCornerRadius:5.0f];
        [[marco1 layer] setMasksToBounds:YES];
        [[marco1 layer] setBorderWidth:2.0f];
        [marco1 release];
        
        tocar1 = [[UIView alloc] initWithFrame:CGRectMake(15, 70, 90, 200) ];
        tocar1.backgroundColor = [UIColor clearColor];
        [self.view addSubview:tocar1];
        [tocar1 release];
        
        marco2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.height-85, 70, 50, 200) ];
        marco2.backgroundColor = [UIColor darkGrayColor];
        [self.view addSubview:marco2];
        [[marco2 layer] setCornerRadius:5.0f];
        [[marco2 layer] setMasksToBounds:YES];
        [[marco2 layer] setBorderWidth:2.0f];
        [marco2 release];
        
        tocar2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.height-105, 70, 90, 200) ];
        tocar2.backgroundColor = [UIColor clearColor];
        [self.view addSubview:tocar2];
        [tocar2 release];
        
        mando1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        mando1.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mando1];
        [[mando1 layer] setCornerRadius:20.0f];
        [[mando1 layer] setMasksToBounds:YES];
        [[mando1 layer] setBorderWidth:1.0f];
        mando1.center = CGPointMake(marco1.center.x, marco1.center.y);
        [mando1 release];
        
        mando2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        mando2.backgroundColor = [UIColor blackColor];
        [self.view addSubview:mando2];
        [[mando2 layer] setCornerRadius:20.0f];
        [[mando2 layer] setMasksToBounds:YES];
        [[mando2 layer] setBorderWidth:1.0f];
        mando2.center = CGPointMake(marco2.center.x, marco2.center.y);
        [mando2 release];
        
    }
        
    [self.view setMultipleTouchEnabled:YES];
    
    intResolution = 0;
    
    power = NO;
    light = NO;
    
    motor1 = 0;
    motor2 = 0;
    
    x = 50;
    y = 40;
    
    dir1 = 1;
    dir2 = 1;
    aux1 = 0;
    aux2 = 0;
    
    
    //Anteriores
    xAnt = 0;
    yAnt = 0;
    motor1Ant = 1;
    motor2Ant = 1;
    datoAnt = 20;
    dirAnt = 10;
    
    [self modo1];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}


- (void) initNetworkCommunication {
	
    if(outputStream == nil){
        CFReadStreamRef readStream;
        CFWriteStreamRef writeStream;
        CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)ip.text, 2000, &readStream, &writeStream);
        
        inputStream = (NSInputStream *)readStream;
        outputStream = (NSOutputStream *)writeStream;
        [inputStream setDelegate:self];
        [outputStream setDelegate:self];
        [inputStream scheduleInRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
        [outputStream scheduleInRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
        [inputStream open];
        [outputStream open];
        
        
        
        loop = [NSTimer scheduledTimerWithTimeInterval: 0.05 target:self selector:@selector (funcion) userInfo:nil repeats:YES];
    }
    
	[self modo2];
}

- (void) deleteNetworkCommunication {
    if (outputStream!=nil) {
        
        NSString *response  = [NSString stringWithFormat:@"%c", 9];
        
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
        
       
        [outputStream close];
        [inputStream close];
        [outputStream removeFromRunLoop:[NSRunLoop currentRunLoop]
                                forMode:NSDefaultRunLoopMode];
        [inputStream removeFromRunLoop:[NSRunLoop currentRunLoop]
                                forMode:NSDefaultRunLoopMode];
        [outputStream release];
        [inputStream release];
        outputStream = nil; 
        inputStream = nil;
        
        [loop invalidate];
        
    }
    
    [self modo1];
}

-(void)funcion
{
    
    NSString *response;
    NSData *data;
    
    

        if([outputStream streamStatus])
        {
            if (motor1Ant != motor1 || motor2Ant != motor2 || dir != dir) {
                
                if (motor1 == 0 || motor2 == 0) {
                    
                    if (motor1 == 0 && motor2 == 0) {
                        
                        response  = [NSString stringWithFormat:@"%c", 9];
                    }
                    
                    else
                    {
                        if (motor1 == 0) {
                            if (dir1 == 1) {
                                response = [NSString stringWithFormat:@"%c%c",7,motor2];
                            }
                            else
                            {
                                response = [NSString stringWithFormat:@"%c%c",8,motor2];
                            }
                            
                        }
                        else
                        {
                            if (dir2 == 1) {
                                response = [NSString stringWithFormat:@"%c%c",5,motor1];
                            }
                            else
                            {
                                response = [NSString stringWithFormat:@"%c%c",6,motor1];
                            }                    }
                    }
                    
                }
                
                else
                {
                    response = [NSString stringWithFormat:@"%c%c%c",dir,motor1,motor2];
                    
                }
                
                data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
                [outputStream write:[data bytes] maxLength:[data length]];
                
                motor1Ant = motor1;
                motor2Ant = motor2;
                dirAnt = dir;
                
            }
            
            
            
            if (xAnt!= x || yAnt != y) {
                
                response = [NSString stringWithFormat:@"%c%c%c",20,(int)x,(int)y];
                data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
                [outputStream write:[data bytes] maxLength:[data length]];
                
                xAnt = x;
                yAnt = y;
                
            }
            
            
           
        }

}

- (void)stream:(NSStream *)theStream handleEvent:(NSStreamEvent)streamEvent {
    
	switch (streamEvent) {
            
        case NSStreamEventOpenCompleted:
			NSLog(@"Stream opened");
			break;
            
        case NSStreamEventHasBytesAvailable:
            NSLog(@"Stream Available");
            
            if (theStream == inputStream) {
                
                int len;
                
                buffer = [[NSMutableData alloc] initWithLength: 64];
                
                bytesRead = [(NSInputStream *)theStream read: [buffer mutableBytes] maxLength: 64];
                
                if (bytesRead) {
                    
                    NSString * response= [[NSString alloc] initWithData:buffer encoding:NSASCIIStringEncoding];
                    const char * cadena = [response cStringUsingEncoding:NSASCIIStringEncoding];
                    
                    [buffer release];
                    
                    if (cadena != NULL) {
                    
                    char tmp[65];
                    
                    NSLog(@"Cadena -> %s",cadena);
                    
                    sscanf(cadena, "%s", tmp);
                    
                    if(strcmp(tmp,"PHOTO") == 0)
                    {
                        sscanf(cadena, "PHOTO -len %d", &len);
                        
                        if (len > 0) {
                            
                            max_size = len;
                            
                            buffer = [[NSMutableData alloc] initWithLength: max_size];
                            
                            totalBytesRead = 0;
                            
                            bytesRead = [(NSInputStream *)theStream read: [buffer mutableBytes] maxLength: max_size];
                            
                            if (bytesRead != 0) {
                                
                                while (bytesRead > 0 && totalBytesRead + bytesRead < max_size) {
                                    
                                    totalBytesRead += bytesRead;
                                    
                                    bytesRead = [(NSInputStream *)theStream read: [buffer mutableBytes] + totalBytesRead maxLength: max_size - totalBytesRead];
                                    
                                    NSLog(@"%d",totalBytesRead);
                                }
                                
                                
                                if (bytesRead >= 0) {
                                    totalBytesRead += bytesRead;
                                }
                                else {
                                    NSLog(@"\n\n**************** Error ****************\n\n");
                                    
                                }
                                
                                [buffer setLength: totalBytesRead];
                                
                                marcoCamara.image = [UIImage imageWithData: buffer];
                                
                                [buffer release];
                                
                            }
                            
                        }
                        
                        else
                        {
                             NSLog(@"\n\n**************** Len Negative ****************\n\n");
                        }
                        
                        
                        
                    }
                    
                    else if(strcmp(tmp,"TELE") == 0)
                    {
                        float temp1;
                        float temp2;
                        int luz;
                        int obstaculo;
                        sscanf(cadena, "TELE -s1 %f -s2 %f -s3 %d -s4 %d", &temp1, &temp2, &luz, &obstaculo);
                        
                         
                    }
                        
                    }
                    
                    else
                    {
                        NSLog(@"\n\n**************** Cadena NULL ****************\n\n"); 
                        
                    }
                }
                
            }
            
            
			break;
            
        case NSStreamEventErrorOccurred:
			
			NSLog(@"Can not connect to the host!");
            [self deleteNetworkCommunication];
            
			break;
			
		case NSStreamEventEndEncountered:
            
            NSLog(@"CLOSE!");
            [theStream close];
            [theStream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
            [theStream release];
            theStream = nil;
            
            [loop invalidate];
			
			break;
            
		default:
			NSLog(@"Unknown event");
     
            
    }
    
}


- (IBAction) conectar:(id)sender{
    [self initNetworkCommunication];
    
}

- (IBAction) desconectar:(id)sender{
    [self deleteNetworkCommunication];
    
}

- (IBAction) luces:(id)sender{
    
    if ([outputStream streamStatus]) {
        
        if (light) {
             dato = 16;
            light = NO;
        }
        else
        {
            dato = 15;
            light = YES;
        }
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
}


- (IBAction) power:(id)sender{
    if ([outputStream streamStatus]) {
        
        if (power) {
            
            dato = 19;
            power = NO;
            botonPower.titleLabel.text = @"Power YES";
        }
        else
        {
            dato = 18;
            power = YES;
            
            botonPower.titleLabel.text = @"Power NO";
        }
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
}


- (IBAction) pito:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 11;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
}

- (IBAction) quitarPito:(id)sender{
    
    if ([outputStream streamStatus]) {
        dato = 12;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
}


- (IBAction) camara:(id)sender{
    
    if ([outputStream streamStatus]) {
        
        NSLog(@"Take a Photo");
        
        dato = 65;
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
    
}

- (IBAction) teclado:(id)sender{
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    for (UITouch *touch in touches) {
        [self touchesMoved:touches withEvent:event];
    }
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *) event{
    
    for (UITouch *touch in touches) {
        [self dispatchTouchEvent:[touch view] toPosition:[touch locationInView:self.view]];
    }

}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    for (UITouch *touch in touches) {
        if ([touch locationInView:self.view].x< self.view.frame.size.width) {
            mando1.center = CGPointMake(mando1.center.x, marco1.center.y);
            motor2 = 0;
        }
        else
        {
            mando2.center = CGPointMake(mando2.center.x, marco2.center.y);
            motor1 = 0;
        }
    }
    
}

-(void) dispatchTouchEvent:(UIView *)theView toPosition:(CGPoint)position
{
    
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        if (CGRectContainsPoint([tocar1 frame], position)) {
            mando1.center = CGPointMake(mando1.center.x, position.y);
            
            aux1 = position.y - 210;
            
            if (aux1 <= 195) {
                aux1 = 200-aux1;
                dir1 = 1;
            }
            
            else if (aux1 < 205) {
                aux1 = 0;
            }
            
            else
            {
                aux1 = aux1-200;
                dir1 = 2;
            }
            
            motor2 = aux1/1.9;
            
            
        }
        else if (CGRectContainsPoint([tocar2 frame], position)) {
            mando2.center = CGPointMake(mando2.center.x, position.y);
            
            aux2 = position.y - 210;
            
            if (aux2 <= 195) {
                aux2 = 200-aux2;
                dir2 = 1;
            }
            
            else if (aux2 < 205) {
                aux2 = 0;
            }
            
            else
            {
                aux2 = aux2-200;
                dir2 = 2;
            }
            
            motor1 = aux2/1.9;
            
        }
        
        else if (CGRectContainsPoint([marcoCamara frame], position)) {
            
            mandoCamara.center = CGPointMake(position.x, position.y);
            
            x = 133-((position.x-160)/6);
            y = 70 - ((position.y-145)/7.5);
        }
        
    }
    
    else
    {
        if (CGRectContainsPoint([tocar1 frame], position)) {
            mando1.center = CGPointMake(mando1.center.x, position.y);
            
            aux1 = position.y - 70;
            
            if (aux1 <= 95) {
                aux1 = 100-aux1;
                dir1 = 1;
            }
            
            else if (aux1 < 105) {
                aux1 = 0;
            }
            
            else
            {
                aux1 = aux1-100;
                dir1 = 2;
            }
            
            motor2 = aux1*1.05;
            
            
        }
        else if (CGRectContainsPoint([tocar2 frame], position)) {
            mando2.center = CGPointMake(mando2.center.x, position.y);
            
            aux2 = position.y - 70;
            
            if (aux2 <= 100) {
                aux2 = 100-aux2;
                dir2 = 1;
            }
            
            else if (aux2 < 105) {
                aux2 = 0;
            }
            
            else
            {
                aux2 = aux2-100;
                dir2 = 2;
            }
            
            motor1 = aux2*1.05;
            
        }
        
        else if (CGRectContainsPoint([marcoCamara frame], position)) {
            
            mandoCamara.center = CGPointMake(position.x, position.y);
            
            x = 133-((position.x-110)/2.8);
            y = 70 - ((position.y-65)/4);
        }
        
    }
      
    if (dir1 == dir2)
    {
        if(dir1==1)
        {
            dir = 1;
        }
        else
        {
            dir = 2;
        }
    }
    else
    {
        if(dir1> dir2)
        {
            dir = 3;
        }
        else
        {
            dir = 4;
        }
    }
}

- (IBAction) pick:(id)sender{
    
    
    if ([outputStream streamStatus]) {
        
        if(resolution.selectedSegmentIndex == 0)
        {
            dato = 40;
            botonCamara.hidden = YES;
        }
        
        else if(resolution.selectedSegmentIndex == 1)
        {
            dato = 41;
            botonCamara.hidden = YES;
        }
        
        else if(resolution.selectedSegmentIndex == 2)
        {
            dato = 42;
            
            botonCamara.hidden = NO;
        }
        
        NSLog(@"Pick -> %d",dato);
        
        NSString *response  = [NSString stringWithFormat:@"%c", dato];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [outputStream write:[data bytes] maxLength:[data length]];
    }
            
}


- (void) modo1{
    
    botonConnect.hidden = NO;
    ip.hidden = NO;
    
    botonDisconnect.hidden = YES;
    botonCamara.hidden = YES;
    botonLights.hidden = YES;
    botonBeep.hidden = YES;
    
    
    mando1.hidden = YES;
    mando2.hidden = YES;
    mandoCamara.hidden = YES;
    
    marco1.hidden = YES;
    marco2.hidden = YES;
    marcoCamara.hidden = YES;
    
    botonPower.hidden = YES;
    resolution.hidden = YES;
    
}

- (void) modo2{
    
    botonConnect.hidden = YES;
    ip.hidden = YES;
    
    botonDisconnect.hidden = NO;
    botonLights.hidden = NO;
    botonBeep.hidden = NO;
    
    
    mando1.hidden = NO;
    mando2.hidden = NO;
    mandoCamara.hidden = NO;
    
    marco1.hidden = NO;
    marco2.hidden = NO;
    marcoCamara.hidden = NO;
    
    botonPower.hidden = NO;
    resolution.hidden = NO;

    
}






@end
