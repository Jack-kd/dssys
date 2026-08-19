.class public final synthetic Lio/flutter/plugin/platform/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lio/flutter/plugin/platform/PlatformViewsController;

.field public final synthetic c:Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/g;->b:Lio/flutter/plugin/platform/PlatformViewsController;

    iput-object p2, p0, Lio/flutter/plugin/platform/g;->c:Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/g;->b:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v1, p0, Lio/flutter/plugin/platform/g;->c:Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    invoke-static {v0, v1, p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController;->c(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;Landroid/view/View;Z)V

    return-void
.end method
