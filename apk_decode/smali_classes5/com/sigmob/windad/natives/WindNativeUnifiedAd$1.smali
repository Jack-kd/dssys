.class Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/nativead/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/natives/WindNativeUnifiedAd;-><init>(Lcom/sigmob/windad/natives/WindNativeAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/natives/WindNativeAdRequest;

.field final synthetic b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;Lcom/sigmob/windad/natives/WindNativeAdRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    iput-object p2, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->a:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(ILjava/lang/String;Lcom/sigmob/windad/natives/WindNativeAdRequest;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-static {v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->b(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sigmob/windad/WindAdError;->getWindAdError(I)Lcom/sigmob/windad/WindAdError;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/windad/WindAdError;->setErrorMessage(ILjava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-static {p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->b(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    move-result-object p1

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;->onAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;ILjava/lang/String;Lcom/sigmob/windad/natives/WindNativeAdRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->a(ILjava/lang/String;Lcom/sigmob/windad/natives/WindNativeAdRequest;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-static {v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->b(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-static {v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->b(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-static {v1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->c(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;->onAdLoad(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onNativeAdLoadFail(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->b(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-static {v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->a:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    new-instance v2, Lcom/sigmob/windad/natives/c;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/sigmob/windad/natives/c;-><init>(Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;ILjava/lang/String;Lcom/sigmob/windad/natives/WindNativeAdRequest;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNativeAdLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/windad/natives/WindNativeAdData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-static {v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/natives/b;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/natives/b;-><init>(Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
