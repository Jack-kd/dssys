.class public final synthetic Lio/flutter/plugin/platform/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lio/flutter/plugin/platform/PlatformViewsController2;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/A;->b:Lio/flutter/plugin/platform/PlatformViewsController2;

    iput p2, p0, Lio/flutter/plugin/platform/A;->c:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/A;->b:Lio/flutter/plugin/platform/PlatformViewsController2;

    iget v1, p0, Lio/flutter/plugin/platform/A;->c:I

    invoke-static {v0, v1, p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController2;->a(Lio/flutter/plugin/platform/PlatformViewsController2;ILandroid/view/View;Z)V

    return-void
.end method
