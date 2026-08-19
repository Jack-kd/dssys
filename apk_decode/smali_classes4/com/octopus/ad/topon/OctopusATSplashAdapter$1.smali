.class Lcom/octopus/ad/topon/OctopusATSplashAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATSplashAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$1;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$1;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$100(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$1;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$200(Lcom/octopus/ad/topon/OctopusATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "80000"

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$1;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {v0, p1, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$1;->this$0:Lcom/octopus/ad/topon/OctopusATSplashAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATSplashAdapter$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/octopus/ad/topon/OctopusATSplashAdapter;->access$000(Lcom/octopus/ad/topon/OctopusATSplashAdapter;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
