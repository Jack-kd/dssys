.class public abstract Lcom/sigmob/sdk/c;
.super Lcom/sigmob/sdk/base/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sigmob/sdk/manager/f;",
        ">",
        "Lcom/sigmob/sdk/base/m;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/os/Handler;

.field protected b:I

.field protected c:Lcom/sigmob/sdk/manager/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected d:Lcom/sigmob/sdk/manager/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field protected f:Lcom/sigmob/sdk/videoAd/k;

.field protected g:Lcom/sigmob/sdk/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/sdk/c<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/WindAdRequest;ZI)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/m;-><init>(Lcom/sigmob/windad/WindAdRequest;Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sigmob/sdk/c;->m:Ljava/lang/String;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    iput p3, p0, Lcom/sigmob/sdk/c;->b:I

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lcom/sigmob/sdk/base/common/h;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/c;->createAdManager()Lcom/sigmob/sdk/manager/f;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method private a(Lcom/sigmob/sdk/manager/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/sigmob/sdk/manager/b;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/base/m;->a(Lcom/sigmob/sdk/base/common/z;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/c;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1, v1, v0}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method public static synthetic c(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method public static synthetic d(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method public static synthetic e(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method public static synthetic f(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p0
.end method

.method public static synthetic f(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method public static synthetic g(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method public static synthetic g(Lcom/sigmob/sdk/c;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/c;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/videoAd/l;)V
    .locals 0

    .line 4
    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/c;->f:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/c;->f:Lcom/sigmob/sdk/videoAd/k;

    invoke-interface {v1, p1, v0}, Lcom/sigmob/sdk/videoAd/k;->onAdPreLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/c;->f:Lcom/sigmob/sdk/videoAd/k;

    invoke-interface {v1, p1, v0}, Lcom/sigmob/sdk/videoAd/k;->onAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 6
    const-string v0, "error"

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;->SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    move-result-object p1

    iget p2, p0, Lcom/sigmob/sdk/c;->b:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/manager/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 7

    .line 8
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->g()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/c$a;->a()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_4

    :cond_1
    :goto_0
    new-instance v2, Lcom/sigmob/sdk/c$a;

    iget-object v3, p0, Lcom/sigmob/sdk/c;->f:Lcom/sigmob/sdk/videoAd/k;

    invoke-direct {v2, p0, v3}, Lcom/sigmob/sdk/c$a;-><init>(Lcom/sigmob/sdk/c;Lcom/sigmob/sdk/videoAd/k;)V

    iput-object v2, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    iget-object v2, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/c;->createAdManager()Lcom/sigmob/sdk/manager/f;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/sigmob/sdk/manager/f;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v4, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/c$a;->onAdPreLoadSuccess(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/c$a;->onAdLoadSuccess(Ljava/lang/String;)V

    return v3

    :cond_3
    :goto_1
    new-instance v2, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v4, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    invoke-direct {v2, v4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Lcom/sigmob/windad/WindAdRequest;)V

    iput-object v2, p0, Lcom/sigmob/sdk/c;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->getBid_token()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setBidToken(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v2, p0, Lcom/sigmob/sdk/c;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->getBidFloor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setBidFloor(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/sigmob/sdk/c;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setCurrency(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    iget-object v4, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v4, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/sigmob/sdk/c;->createAdManager()Lcom/sigmob/sdk/manager/f;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    iget-object v4, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v2, p0, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    :goto_2
    invoke-direct {p0, v2}, Lcom/sigmob/sdk/c;->a(Lcom/sigmob/sdk/manager/f;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/sigmob/sdk/c;->f:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoAdLoadSuccess: placementId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/sdk/c;->f:Lcom/sigmob/sdk/videoAd/k;

    invoke-interface {v2, v0}, Lcom/sigmob/sdk/videoAd/k;->onAdLoadSuccess(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v2, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v2, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_6
    :goto_3
    return v3

    :goto_4
    sget-object v3, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "error"

    invoke-static {v6, v4, v5}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;->SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    move-result-object v4

    iget v5, p0, Lcom/sigmob/sdk/c;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVideoAdLoadError: error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", placementId = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", adStatus = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/sdk/c;->f:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sigmob/sdk/c;->f:Lcom/sigmob/sdk/videoAd/k;

    invoke-interface {v2, v3, v0}, Lcom/sigmob/sdk/videoAd/k;->onAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_7
    return v1
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/manager/f;->m()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/sigmob/sdk/manager/b;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    return-object v0
.end method

.method public abstract createAdManager()Lcom/sigmob/sdk/manager/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/c$a;->a()V

    iput-object v1, p0, Lcom/sigmob/sdk/c;->g:Lcom/sigmob/sdk/c$a;

    :cond_0
    iput-object v1, p0, Lcom/sigmob/sdk/c;->f:Lcom/sigmob/sdk/videoAd/k;

    iget-object v0, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/manager/f;->s()V

    iput-object v1, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/manager/f;->s()V

    iput-object v1, p0, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    :cond_2
    return-void
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/manager/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEcpm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/manager/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->f()Z

    move-result v0

    return v0
.end method

.method public loadAd()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sigmob/sdk/base/m;->loadAd()Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/c;->a()Z

    move-result v0

    return v0
.end method

.method public loadAd(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/m;->loadAd(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/c;->a()Z

    move-result p1

    return p1
.end method

.method public setAdLoadListener(Lcom/sigmob/sdk/videoAd/k;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/c;->f:Lcom/sigmob/sdk/videoAd/k;

    return-void
.end method

.method public show(Ljava/util/HashMap;Lcom/sigmob/sdk/videoAd/m;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sigmob/sdk/videoAd/m;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sigmob/sdk/c;->show(Ljava/util/HashMap;Lcom/sigmob/sdk/videoAd/m;Lcom/sigmob/sdk/videoAd/l;)Z

    move-result p1

    return p1
.end method

.method public show(Ljava/util/HashMap;Lcom/sigmob/sdk/videoAd/m;Lcom/sigmob/sdk/videoAd/l;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sigmob/sdk/videoAd/m;",
            "Lcom/sigmob/sdk/videoAd/l;",
            ")Z"
        }
    .end annotation

    .line 2
    const-string v0, "scene_desc"

    const-string v1, "scene_id"

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/sigmob/sdk/c;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-nez v3, :cond_1

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/windad/WindAdError;

    const-string p3, "loadAdRequest is null."

    invoke-virtual {p0, p1, p3}, Lcom/sigmob/sdk/c;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/sigmob/sdk/videoAd/m;->onAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sigmob/sdk/c;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setAd_scene_id(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sigmob/sdk/c;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setAd_scene_desc(Ljava/lang/String;)V

    :cond_3
    iget p1, p0, Lcom/sigmob/sdk/c;->b:I

    if-ne p1, v2, :cond_4

    invoke-virtual {p0, p3}, Lcom/sigmob/sdk/c;->a(Lcom/sigmob/sdk/videoAd/l;)V

    :cond_4
    iget-object p1, p0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    iget-object p3, p0, Lcom/sigmob/sdk/c;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    new-instance v0, Lcom/sigmob/sdk/c$1;

    invoke-direct {v0, p0, p2}, Lcom/sigmob/sdk/c$1;-><init>(Lcom/sigmob/sdk/c;Lcom/sigmob/sdk/videoAd/m;)V

    invoke-virtual {p1, p3, v0}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/videoAd/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/sigmob/sdk/c;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "show: error = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_2
    return v2
.end method
