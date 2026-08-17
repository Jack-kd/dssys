.class Lcom/anythink/supplement/a/SInterstitialAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/supplement/a/SInterstitialAdapter;->startLoad(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/supplement/a/SInterstitialAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/anythink/supplement/a/SInterstitialAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/supplement/a/SInterstitialAdapter$1;->this$0:Lcom/anythink/supplement/a/SInterstitialAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/supplement/a/SInterstitialAdapter$1;->val$context:Landroid/content/Context;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/supplement/a/SInterstitialAdapter$1;->this$0:Lcom/anythink/supplement/a/SInterstitialAdapter;

    .line 2
    .line 3
    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/anythink/supplement/a/SInterstitialAdapter$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/anythink/supplement/a/SInterstitialAdapter;->access$000(Lcom/anythink/supplement/a/SInterstitialAdapter;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v1, v2, v3}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/anythink/supplement/a/SInterstitialAdapter;->mRewardVideoAd:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/anythink/supplement/a/SInterstitialAdapter$1;->this$0:Lcom/anythink/supplement/a/SInterstitialAdapter;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/anythink/supplement/a/SInterstitialAdapter;->mRewardVideoAd:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 19
    .line 20
    new-instance v1, Lcom/anythink/supplement/a/SInterstitialAdapter$1$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/anythink/supplement/a/SInterstitialAdapter$1$1;-><init>(Lcom/anythink/supplement/a/SInterstitialAdapter$1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->setAdListener(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/anythink/supplement/a/SInterstitialAdapter$1;->this$0:Lcom/anythink/supplement/a/SInterstitialAdapter;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/anythink/supplement/a/SInterstitialAdapter;->mRewardVideoAd:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
