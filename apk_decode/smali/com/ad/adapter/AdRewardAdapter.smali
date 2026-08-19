.class public Lcom/ad/adapter/AdRewardAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;
.source "SourceFile"


# instance fields
.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Lcom/windmill/sdk/reward/WMRewardAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ad/adapter/AdRewardAdapter;->t:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/ad/adapter/AdRewardAdapter;)Lcom/windmill/sdk/reward/WMRewardAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ad/adapter/AdRewardAdapter;->u:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/ad/adapter/AdRewardAdapter;Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/reward/WMRewardAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/adapter/AdRewardAdapter;->u:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic c(Lcom/ad/adapter/AdRewardAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ad/adapter/AdRewardAdapter;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/adapter/AdRewardAdapter;->u:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->destroy()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ad/adapter/AdRewardAdapter;->u:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 8
    .line 9
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ad/adapter/a;->a()Lcom/ad/adapter/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ad/adapter/a;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/adapter/AdRewardAdapter;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ad/adapter/a;->a()Lcom/ad/adapter/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ad/adapter/a;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/adapter/AdRewardAdapter;->u:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->isReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string p3, "app_id"

    .line 2
    .line 3
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iput-object p3, p0, Lcom/ad/adapter/AdRewardAdapter;->r:Ljava/lang/String;

    .line 8
    .line 9
    const-string p3, "unit_id"

    .line 10
    .line 11
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iput-object p3, p0, Lcom/ad/adapter/AdRewardAdapter;->s:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p3, p0, Lcom/ad/adapter/AdRewardAdapter;->r:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-nez p3, :cond_1

    .line 24
    .line 25
    iget-object p3, p0, Lcom/ad/adapter/AdRewardAdapter;->s:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/ad/adapter/a;->a()Lcom/ad/adapter/a;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    new-instance v0, Lcom/ad/adapter/AdRewardAdapter$a;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lcom/ad/adapter/AdRewardAdapter$a;-><init>(Lcom/ad/adapter/AdRewardAdapter;Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p1, p2, v0}, Lcom/ad/adapter/a;->d(Landroid/content/Context;Ljava/util/Map;Lcom/ad/adapter/a$b;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    :goto_0
    const-string p1, ""

    .line 51
    .line 52
    const-string p2, "TbAd appid or unitId is empty."

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :catchall_0
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ad/adapter/AdRewardAdapter$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ad/adapter/AdRewardAdapter$c;-><init>(Lcom/ad/adapter/AdRewardAdapter;Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lg/b;->b(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public startBiddingRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBiddingListener;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 p4, 0x1

    .line 2
    iput-boolean p4, p0, Lcom/ad/adapter/AdRewardAdapter;->t:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/ad/adapter/AdRewardAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method

.method public startLoadAd(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    const-string v0, "tbAdn reward context must be activity."

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Lcom/ad/adapter/AdRewardAdapter$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/ad/adapter/AdRewardAdapter$b;-><init>(Lcom/ad/adapter/AdRewardAdapter;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lg/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :catchall_0
    return-void
.end method
