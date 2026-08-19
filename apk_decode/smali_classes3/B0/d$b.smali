.class public LB0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB0/d;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LB0/d;


# direct methods
.method public constructor <init>(LB0/d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LB0/d$b;->b:LB0/d;

    .line 2
    .line 3
    iput p2, p0, LB0/d$b;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 1
    const-string p1, "adDemo"

    .line 2
    .line 3
    const-string p2, "onAdClicked \u5e7f\u544a\u70b9\u51fb"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LB0/d$b;->b:LB0/d;

    .line 9
    .line 10
    invoke-static {p1}, LB0/d;->e(LB0/d;)Lio/flutter/plugin/common/MethodChannel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "onClick"

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAdImpressed(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    const-string p1, "adDemo"

    .line 2
    .line 3
    const-string p2, "onAdImpressed \u5e7f\u544a\u66dd\u5149"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LB0/d$b;->b:LB0/d;

    .line 9
    .line 10
    iget p2, p0, LB0/d$b;->a:I

    .line 11
    .line 12
    invoke-static {p1, p2}, LB0/d;->f(LB0/d;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onAdVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .locals 0

    .line 1
    return-void
.end method
