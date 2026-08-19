.class public Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;->e:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;->d:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->isInit()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lcom/sigmob/windad/WindAdOptions;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v2, v3, v4}, Lcom/sigmob/windad/WindAdOptions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;->d:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1, v3, v2}, Lcom/sigmob/windad/WindAds;->startWithOptions(Landroid/content/Context;Lcom/sigmob/windad/WindAdOptions;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;->e:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->p(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;->e:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 40
    .line 41
    const-string v2, "Sigmob SDK init failed."

    .line 42
    .line 43
    invoke-virtual {v1, v0, v2}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    iget-object v2, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$a;->e:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v0, v1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
