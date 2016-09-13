/*
 * YLMoment
 *
 * Copyright 2013 - present Yannick Loriot.
 * http://yannickloriot.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

#import <XCTest/XCTest.h>

#define EXP_SHORTHAND
#import "Expecta.h"

#import "YLMoment.h"

@interface YLMomentTest_LangEs : XCTestCase

@end

@implementation YLMomentTest_LangEs

- (void)setUp
{
    [super setUp];
    
    [[YLMoment proxy] setLocale:[NSLocale localeWithLocaleIdentifier:@"es_ES"]];
}

- (void)tearDown
{
    [[YLMoment proxy] setLocale:[NSLocale currentLocale]];
    
    [super tearDown];
}

- (void)testLangFrom
{
    YLMoment *start = [YLMoment momentWithArray:@[@2007, @1, @28]];
    YLMoment *end;
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:44 forUnitKey:@"s"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"unos segundos");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:45 forUnitKey:@"s"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 minuto");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:89 forUnitKey:@"s"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 minuto");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:90 forUnitKey:@"s"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 minutos");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:44 forUnitKey:@"m"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"44 minutos");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:45 forUnitKey:@"m"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 hora");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:89 forUnitKey:@"m"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 hora");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:90 forUnitKey:@"m"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 horas");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:5 forUnitKey:@"h"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"5 horas");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:21 forUnitKey:@"h"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"21 horas");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:22 forUnitKey:@"h"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 día");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:35 forUnitKey:@"h"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 día");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:36 forUnitKey:@"h"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 días");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:1 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"un día");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:5 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"5 días");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:25 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"25 días");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:26 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 mes");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:30 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 mes");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:45 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 mes");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:46 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 meses");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:74 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 meses");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:76 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"3 meses");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:1 forUnitKey:@"M"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"un mes");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:5 forUnitKey:@"M"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"5 meses");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:344 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"11 meses");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:345 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 año");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:547 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 año");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:548 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 años");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:1 forUnitKey:@"y"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 año");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:5 forUnitKey:@"y"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"5 años");
}

- (void)testLangSuffix
{
    YLMoment *moment = [YLMoment now];
    YLMoment *future = [[YLMoment now] addAmountOfTime:3 forUnitKey:@"s"];
    YLMoment *past   = [[YLMoment now] addAmountOfTime:-3 forUnitKey:@"s"];
    
    expect([future fromMoment:moment]).to.equal(@"en unos segundos");
    expect([past fromMoment:moment]).to.equal(@"hace unos segundos");
}

- (void)testLangNowFromNow
{
    expect([[YLMoment now] fromNow]).to.equal(@"hace unos segundos");
}

- (void)testLangFromNow
{
    YLMoment *reference1 = [[YLMoment now] addAmountOfTime:30 forCalendarUnit:NSCalendarUnitSecond];
    expect([reference1 fromNow]).to.equal(@"en unos segundos");
    
    YLMoment *reference2 = [[YLMoment now] addAmountOfTime:5 forCalendarUnit:NSCalendarUnitDay];
    expect([reference2 fromNow]).to.equal(@"en 5 días");
    
    YLMoment *reference3 = [[YLMoment now] addAmountOfTime:-1 forCalendarUnit:NSCalendarUnitDay];
    expect([reference3 fromNow]).to.equal(@"hace 1 día");
}

- (void)testLangFromNowWithSuffix
{
    YLMoment *reference1 = [[YLMoment now] addAmountOfTime:-3 forCalendarUnit:NSCalendarUnitMonth];
    expect([reference1 fromNowWithSuffix:NO]).to.equal(@"3 meses");
    
    YLMoment *reference2 = [[YLMoment now] addAmountOfTime:9 forCalendarUnit:NSCalendarUnitHour];
    expect([reference2 fromNowWithSuffix:YES]).to.equal(@"en 9 horas");
}

- (void)testLandFromDate {
    YLMoment *reference = [[YLMoment now] subtractAmountOfTime:6 forCalendarUnit:NSCalendarUnitMinute];
    expect([reference fromDate:[NSDate date]]).to.equal(@"hace 6 minutos");
}

@end
