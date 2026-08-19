.class public abstract LC0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object v0, LC0/a;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 7
    .line 8
    new-instance p1, LC0/a$a;

    .line 9
    .line 10
    invoke-direct {p1, p0}, LC0/a$a;-><init>(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->setAdListener(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, LC0/a;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
