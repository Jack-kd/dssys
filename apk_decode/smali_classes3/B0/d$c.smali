.class public LB0/d$c;
.super Lcom/anythink/nativead/api/ATNativeDislikeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB0/d;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LB0/d;


# direct methods
.method public constructor <init>(LB0/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB0/d$c;->a:LB0/d;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/anythink/nativead/api/ATNativeDislikeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdCloseButtonClick(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 1
    const-string p1, "adDemo"

    .line 2
    .line 3
    const-string p2, "onAdCloseButtonClick \u5e7f\u544a\u88ab\u5173\u95ed"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LB0/d$c;->a:LB0/d;

    .line 9
    .line 10
    invoke-static {p1}, LB0/d;->e(LB0/d;)Lio/flutter/plugin/common/MethodChannel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "onClose"

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, LB0/d$c;->a:LB0/d;

    .line 21
    .line 22
    invoke-static {p1}, LB0/d;->d(LB0/d;)Lcom/anythink/nativead/api/ATNative;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, LB0/d$c;->a:LB0/d;

    .line 29
    .line 30
    invoke-static {p1}, LB0/d;->d(LB0/d;)Lcom/anythink/nativead/api/ATNative;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNative;->makeAdRequest()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
