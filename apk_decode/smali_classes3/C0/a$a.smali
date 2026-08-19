.class public LC0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/rewardvideo/api/ATRewardVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC0/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC0/a$a;->a:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReward(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 1
    const-string p1, "rewardVideo"

    .line 2
    .line 3
    const-string v0, "onRewardVerify:true"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V
    .locals 1

    .line 1
    const-string p1, "rewardVideo"

    .line 2
    .line 3
    const-string v0, "onError"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 2

    .line 1
    sget-object v0, LC0/a;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->isAdReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, LC0/a;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 12
    .line 13
    iget-object v1, p0, LC0/a$a;->a:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->show(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 1
    const-string p1, "rewardVideo"

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

.method public onRewardedVideoAdPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    const-string p1, "rewardVideo"

    .line 2
    .line 3
    const-string p2, "onError"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lx0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRewardedVideoAdPlayStart(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 1
    const-string p1, "rewardVideo"

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
