.class public final synthetic Lcom/sigmob/windad/rewardVideo/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

.field public final synthetic c:Lcom/sigmob/windad/rewardVideo/WindRewardInfo;

.field public final synthetic d:Lcom/sigmob/sdk/videoAd/l;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Lcom/sigmob/sdk/videoAd/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/rewardVideo/b;->b:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    iput-object p2, p0, Lcom/sigmob/windad/rewardVideo/b;->c:Lcom/sigmob/windad/rewardVideo/WindRewardInfo;

    iput-object p3, p0, Lcom/sigmob/windad/rewardVideo/b;->d:Lcom/sigmob/sdk/videoAd/l;

    iput-object p4, p0, Lcom/sigmob/windad/rewardVideo/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/b;->b:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    iget-object v1, p0, Lcom/sigmob/windad/rewardVideo/b;->c:Lcom/sigmob/windad/rewardVideo/WindRewardInfo;

    iget-object v2, p0, Lcom/sigmob/windad/rewardVideo/b;->d:Lcom/sigmob/sdk/videoAd/l;

    iget-object v3, p0, Lcom/sigmob/windad/rewardVideo/b;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->i(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Lcom/sigmob/sdk/videoAd/l;Ljava/lang/String;)V

    return-void
.end method
