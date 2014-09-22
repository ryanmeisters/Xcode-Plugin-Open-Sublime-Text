//
//  OSTUtil.m
//  OpenInSublimeText
//
//  Created by Ryan Meisters on 9/17/14.
//  Copyright (c) 2014 Ryan M. All rights reserved.
//
//  Borrowed from XVim Xcode Plugin :)

#import "OSTUtil.h"
#import "DVTFoundation.h"
#import "DVTKit.h"
#import "IDEKit.h"


IDEWorkspaceWindowController* OSTLastActiveWindowController(){

    // TODO: Must update IDEKit.h for Xcodr5
    return [IDEWorkspaceWindow performSelector:@selector(lastActiveWorkspaceWindowController)];
}

IDEWorkspaceTabController* OSTLastActiveWorkspaceTabController(){
    return [OSTLastActiveWindowController() activeWorkspaceTabController];
}

IDEEditorArea* OSTLastActiveEditorArea(){
    return [OSTLastActiveWindowController() editorArea];
}

DVTSourceTextView* OSTLastActiveSourceView(){
    return [[[[OSTLastActiveEditorArea() lastActiveEditorContext] editor] mainScrollView] documentView];
}

@implementation OSTUtil

@end
