.class public Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;
.implements Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;


# instance fields
.field platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

.field platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/PlatformViewsController2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;Lio/flutter/view/TextureRegistry;Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/flutter/view/TextureRegistry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/embedding/engine/dart/DartExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/plugin/platform/PlatformViewsController;->attach(Landroid/content/Context;Lio/flutter/view/TextureRegistry;Lio/flutter/embedding/engine/dart/DartExecutor;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 7
    .line 8
    invoke-virtual {p2, p1, p3}, Lio/flutter/plugin/platform/PlatformViewsController2;->attach(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/flutter/plugin/platform/PlatformViewsController;->getPlatformViewsChannel()Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->setPlatformViewsHandler(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V
    .locals 1
    .param p1    # Lio/flutter/view/AccessibilityBridge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public clearFocus(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 10
    .line 11
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->clearFocus(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 18
    .line 19
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->clearFocus(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public createForPlatformViewLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->createForPlatformViewLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public createForTextureLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->createForTextureLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public createPlatformViewHcpp(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->createPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public detachAccessibilityBridge()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detachAccessibilityBridge()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->detachAccessibilityBridge()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public dispose(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 10
    .line 11
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->dispose(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 18
    .line 19
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->dispose(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getPlatformViewById(I)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->getPlatformViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public isHcppEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->isHcppEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public offset(IDD)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 11
    .line 12
    iget-object v1, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    .line 13
    .line 14
    move v2, p1

    .line 15
    move-wide v3, p2

    .line 16
    move-wide v5, p4

    .line 17
    invoke-interface/range {v1 .. v6}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->offset(IDD)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->viewId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 12
    .line 13
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 20
    .line 21
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public resize(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;->viewId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 13
    .line 14
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->resize(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setDirection(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 10
    .line 11
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->setDirection(II)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 18
    .line 19
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->setDirection(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public synchronizeToNativeViewHierarchy(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->synchronizeToNativeViewHierarchy(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public usesVirtualDisplay(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->usesVirtualDisplay(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->usesVirtualDisplay(I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method
