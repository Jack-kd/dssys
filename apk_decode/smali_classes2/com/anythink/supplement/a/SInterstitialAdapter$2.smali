.class Lcom/anythink/supplement/a/SInterstitialAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/supplement/a/SInterstitialAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/supplement/a/SInterstitialAdapter;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/anythink/supplement/a/SInterstitialAdapter;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/supplement/a/SInterstitialAdapter$2;->this$0:Lcom/anythink/supplement/a/SInterstitialAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/supplement/a/SInterstitialAdapter$2;->val$activity:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/supplement/a/SInterstitialAdapter$2;->this$0:Lcom/anythink/supplement/a/SInterstitialAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/supplement/a/SInterstitialAdapter;->mRewardVideoAd:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/anythink/supplement/a/SInterstitialAdapter$2;->val$activity:Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->show(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
