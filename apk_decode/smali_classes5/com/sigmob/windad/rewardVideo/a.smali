.class public final synthetic Lcom/sigmob/windad/rewardVideo/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/videoAd/l;


# instance fields
.field public final synthetic a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

.field public final synthetic b:Lcom/sigmob/sdk/videoAd/l;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;Lcom/sigmob/sdk/videoAd/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/rewardVideo/a;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    iput-object p2, p0, Lcom/sigmob/windad/rewardVideo/a;->b:Lcom/sigmob/sdk/videoAd/l;

    return-void
.end method


# virtual methods
.method public final onVideoAdRewarded(Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/a;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    iget-object v1, p0, Lcom/sigmob/windad/rewardVideo/a;->b:Lcom/sigmob/sdk/videoAd/l;

    invoke-static {v0, v1, p1, p2}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->j(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;Lcom/sigmob/sdk/videoAd/l;Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V

    return-void
.end method
