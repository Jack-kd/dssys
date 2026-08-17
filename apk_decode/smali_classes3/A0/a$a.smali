.class public LA0/a$a;
.super Lk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA0/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/api/ATInterstitial;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk/a;-><init>(Lcom/anythink/interstitial/api/ATInterstitial;Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 1
    const-string p1, "interstitial"

    .line 2
    .line 3
    const-string v0, "onClick"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 1
    const-string p1, "interstitial"

    .line 2
    .line 3
    const-string v0, "onClose"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Lcom/anythink/core/api/AdError;)V
    .locals 1

    .line 1
    const-string p1, "adDemo"

    .line 2
    .line 3
    const-string v0, "onInterstitialAdError \u5e7f\u544a\u64ad\u653e\u51fa\u9519"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string p1, "interstitial"

    .line 9
    .line 10
    const-string v0, "onError"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public i(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 1
    const-string p1, "interstitial"

    .line 2
    .line 3
    const-string v0, "onShow"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onInterstitialAdLoadFail \u5e7f\u544a\u52a0\u8f7d\u5931\u8d25"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "adDemo"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const-string p1, "interstitial"

    .line 28
    .line 29
    const-string v0, "onError"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
