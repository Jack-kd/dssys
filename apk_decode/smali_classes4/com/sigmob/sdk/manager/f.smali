.class public abstract Lcom/sigmob/sdk/manager/f;
.super Lcom/sigmob/sdk/manager/b;

# interfaces
.implements Lcom/sigmob/sdk/base/common/h$b;
.implements Lcom/sigmob/sdk/base/common/p;
.implements Lcom/sigmob/sdk/base/network/f$a;


# instance fields
.field protected final h:Landroid/os/Handler;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:J

.field protected m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field protected n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field protected o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/sigmob/sdk/mraid/i;

.field protected q:Lcom/sigmob/sdk/videoAd/k;

.field protected r:Lcom/sigmob/sdk/videoAd/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/manager/b;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/manager/f$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/manager/f$1;-><init>(Lcom/sigmob/sdk/manager/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/manager/f;->h:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V
    .locals 7

    .line 5
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "load_success"

    goto :goto_0

    :cond_0
    const-string v2, "load_failure"

    :goto_0
    invoke-static {p1, v2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    iget-object v5, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    const/4 v6, 0x0

    const-string v1, "loadend"

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f;->h:Landroid/os/Handler;

    const/16 v3, 0x2001

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p0, p1, v2}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    :cond_3
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreate_time()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sigmob/sdk/manager/f;->l:J

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void

    :cond_4
    sget-object v6, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v6, p2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v5

    const-string v2, "load"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdError;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v6}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->g()V

    :cond_6
    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/manager/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/manager/f;->p(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/manager/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/manager/f;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/manager/f;->b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 2

    .line 4
    const-string v0, "respond"

    const-string v1, "0"

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/base/models/LoadAdRequest;Ljava/lang/String;)Z
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setTraceId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setRequestSceneType(I)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isExistCache: placementId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->n()V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/b;->l(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic o(Lcom/sigmob/sdk/manager/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/manager/f;->t()V

    return-void
.end method

.method private p(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 6

    .line 3
    iget-object v4, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    const/4 v5, 0x0

    const-string v0, "loadstart"

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    const-string p1, "load"

    invoke-static {v2, p1}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lcom/sigmob/sdk/manager/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/manager/f;->u()V

    return-void
.end method

.method private q(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    .line 2
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDisableAutoLoad()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getBid_token()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setLastCampid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setLastCrid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    sget-object v0, Lcom/sigmob/sdk/base/j;->b:Lcom/sigmob/sdk/base/j;

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/j;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic t()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method

.method private synthetic u()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    sget-object v1, Lcom/sigmob/sdk/base/j;->b:Lcom/sigmob/sdk/base/j;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/b;->h(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 1

    .line 2
    invoke-direct {p0, p4}, Lcom/sigmob/sdk/manager/f;->b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    const-string p3, "respond"

    const-string v0, "0"

    invoke-static {p3, v0, p1, p2, p4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-static {p1}, Lcom/sigmob/windad/WindAdError;->getWindAdError(I)Lcom/sigmob/windad/WindAdError;

    move-result-object p3

    if-nez p3, :cond_0

    sget-object p3, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p3, p1, p2}, Lcom/sigmob/windad/WindAdError;->setErrorMessage(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p3}, Lcom/sigmob/sdk/manager/f;->b(Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {p0, p3}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/manager/f;->p(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/j;)V
    .locals 2

    .line 6
    new-instance v0, Lcom/sigmob/sdk/manager/f$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/manager/f$2;-><init>(Lcom/sigmob/sdk/manager/f;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/j;Ljava/lang/String;Lcom/sigmob/sdk/base/network/f$a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/j;Ljava/lang/String;Lcom/sigmob/sdk/base/network/f$a;)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->g()V

    invoke-static {p2}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/j;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/manager/b;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setOriginVid(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/manager/b;->e:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setOriginPrice(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/j;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setRequest_scene_type(I)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->d()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setExpired(Z)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/manager/b;->j()Ljava/lang/String;

    move-result-object p3

    :goto_1
    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p2, p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setTraceId(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-static {p1, p4}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/network/f$a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/videoAd/m;)V
    .locals 4

    .line 8
    iput-object p2, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    iput-object p1, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->p()Lcom/sigmob/sdk/mraid/i;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    iput-object p2, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sigmob/sdk/manager/f;->j:Ljava/lang/String;

    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdSceneDesc()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2, p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setLoad_id(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setAd_scene_id(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setAd_scene_desc(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p2

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_ADSCENE_"

    invoke-virtual {p2, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_ADSCENEID_"

    invoke-virtual {p2, v1, v0}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/common/h;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_VMD5_"

    invoke-virtual {p2, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_VURL_"

    invoke-virtual {p2, v1, v0}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result p2

    sget-object v0, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_4

    new-instance p2, Lcom/sigmob/sdk/base/common/e;

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-direct {p2, v0, p0, v2}, Lcom/sigmob/sdk/base/common/e;-><init>(Ljava/util/List;Lcom/sigmob/sdk/base/common/h$b;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/base/common/e;->a(Z)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2, v0}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2, v0}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2, v0, p0}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/h$b;)V

    :cond_5
    :goto_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->isEnable_keep_on()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v1

    :goto_3
    const-string v3, "enablekeepon"

    invoke-virtual {p2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->isEnable_screen_lock_displayad()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :cond_9
    :goto_4
    const-string v0, "enablescreenlockdisplayad"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, v0, p2}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V

    sget-object p1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object p1, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sigmob/sdk/manager/f;->l:J

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Ljava/lang/String;)V
    .locals 4

    .line 9
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/Sigmob;->getSigMobError()Lcom/sigmob/windad/WindAdError;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd: error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    const-string v1, "load"

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;->SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->g()V

    :cond_2
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->o()Lcom/sigmob/sdk/mraid/i;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/manager/f;->b(Lcom/sigmob/sdk/base/models/LoadAdRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->b(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/h;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setLastCampid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/h;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setLastCrid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    sget-object v0, Lcom/sigmob/sdk/base/j;->c:Lcom/sigmob/sdk/base/j;

    invoke-virtual {p0, p1, v0, p2, p0}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/j;Ljava/lang/String;Lcom/sigmob/sdk/base/network/f$a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f;->h:Landroid/os/Handler;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/o;->v()J

    move-result-wide v0

    const/16 p2, 0x2001

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_7
    :goto_0
    const-string p1, "loadAd: request or placementId is null."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoAd/k;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/sigmob/sdk/manager/f;->q:Lcom/sigmob/sdk/videoAd/k;

    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/manager/b;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    :goto_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->q:Lcom/sigmob/sdk/videoAd/k;

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/videoAd/k;->onAdLoadSuccess(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-interface {v1, p1, v0}, Lcom/sigmob/sdk/videoAd/k;->onAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/j;)V
    .locals 0

    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/j;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->f()Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getBidToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setLastCampid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setLastCrid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p0, p1, p3}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            ")V"
        }
    .end annotation

    .line 17
    const-string v0, "0"

    const-string v1, "respond"

    :try_start_0
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/manager/f;->b(Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3, p2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sigmob/sdk/manager/f;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v3}, Lcom/sigmob/sdk/manager/b;->a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v4, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->o()Lcom/sigmob/sdk/mraid/i;

    move-result-object v4

    iput-object v4, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    :cond_1
    iget-object v4, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    invoke-virtual {v4, v3}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->n()V

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/h;->a(Ljava/util/List;)V

    iget-object v4, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v5}, Lcom/sigmob/sdk/manager/b;->n(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sigmob/sdk/base/common/h;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreate_time()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sigmob/sdk/manager/f;->l:J

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    :cond_5
    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v5

    sget-object v6, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v6

    if-ne v5, v6, :cond_6

    new-instance v4, Lcom/sigmob/sdk/base/common/e;

    iget-object v5, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-direct {v4, p1, p0, v5}, Lcom/sigmob/sdk/base/common/e;-><init>(Ljava/util/List;Lcom/sigmob/sdk/base/common/h$b;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-virtual {v4, v2}, Lcom/sigmob/sdk/base/common/e;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    invoke-virtual {v2, p1, v3}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :cond_6
    const/4 p1, 0x2

    if-ne v4, p1, :cond_8

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    invoke-virtual {v2, p1, v3}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    invoke-virtual {p1, v3, p0}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/h$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->g()V

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, p1}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    invoke-static {v1, v0, v3, p1, p2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/b;->i(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    .line 2
    const-string v0, "start"

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->q()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->g()V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/manager/b;)V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/videoAd/m;->onAdShow(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDisableAutoLoad()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getBid_token()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setLastCampid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setLastCrid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f;->h:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/manager/o;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/manager/o;-><init>(Lcom/sigmob/sdk/manager/f;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 7

    .line 3
    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->h:Landroid/os/Handler;

    const/16 v2, 0x2001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialFailed: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    const/4 v6, 0x0

    const-string v1, "loadend"

    const-string v2, "0"

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    const-string v2, "load_failure"

    invoke-static {p1, v2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->g()V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v6, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v6, p2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v5

    const-string v2, "load"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {p0, v6}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->q:Lcom/sigmob/sdk/videoAd/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/sigmob/sdk/videoAd/k;->onAdPreLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 1
    const-string v0, "click"

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/videoAd/m;->onAdClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/b;->g(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/h;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    .line 1
    const-string v0, "dismissed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/y;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->r()V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/videoAd/m;->onAdClosed(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/manager/p;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/manager/p;-><init>(Lcom/sigmob/sdk/manager/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/manager/f;->q(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public d()Z
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/sigmob/sdk/manager/f;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/b;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    return v0
.end method

.method public e()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    .line 2
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/h;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/h;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->g()V

    return-void
.end method

.method public f()Lcom/sigmob/sdk/base/models/LoadAdRequest;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    return-object v0
.end method

.method public i()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method public m()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/b;->j(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    goto :goto_0
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->q:Lcom/sigmob/sdk/videoAd/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->onAdPreLoadSuccess(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract o()Lcom/sigmob/sdk/mraid/i;
.end method

.method public o(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/videoAd/m;->onVideoAdPlayEnd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p()Lcom/sigmob/sdk/mraid/i;
    .locals 6

    .line 2
    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v3, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_HAS_PLAYING:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    if-eqz v3, :cond_7

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v3, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v2, v3, :cond_2

    const-string v1, "ad status is not ready"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    if-nez v2, :cond_3

    const-string v1, "interstitial object is null"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/f;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_EXPIRED:Lcom/sigmob/windad/WindAdError;

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/manager/b;->g(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "check ad unit endcard is invalid"

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "check ad unit info is invalid"

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    :goto_2
    const-string v1, "not ready adUnit"

    goto :goto_0

    :goto_3
    move-object v1, v5

    :goto_4
    if-nez v4, :cond_8

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    invoke-virtual {p0, v0, v2}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/videoAd/m;)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/manager/b;)V

    const-string v2, "play"

    iget-object v3, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {v2, v0, v1, v3}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-object v5

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    return-object v0
.end method

.method public q()V
    .locals 0

    .line 1
    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 2

    const-string v0, "destroy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->g()V

    iput-object v1, p0, Lcom/sigmob/sdk/manager/f;->q:Lcom/sigmob/sdk/videoAd/k;

    iput-object v1, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    iput-object v1, p0, Lcom/sigmob/sdk/manager/f;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/manager/b;)V

    return-void
.end method
