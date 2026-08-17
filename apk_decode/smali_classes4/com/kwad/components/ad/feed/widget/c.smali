.class public abstract Lcom/kwad/components/ad/feed/widget/c;
.super Lcom/kwad/components/ad/feed/widget/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kwad/sdk/widget/d;


# instance fields
.field private cA:Z

.field private cB:Lcom/kwad/sdk/core/video/videoview/a;

.field private cK:Lcom/kwad/sdk/core/video/videoview/a$a;

.field private cL:Lcom/kwad/components/core/video/a$b;

.field private cM:Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;

.field private ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

.field private cv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile eV:Z

.field private eW:Lcom/kwad/sdk/widget/l;

.field private ev:Landroid/widget/TextView;

.field private final ey:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

.field private fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

.field private fI:Lcom/kwad/components/core/offline/a/c/a;

.field private fU:Lcom/kwad/components/core/l/a$b;

.field private fW:Landroid/view/View;

.field private gQ:Landroid/widget/ImageView;

.field private gX:Landroid/widget/TextView;

.field private hW:Landroid/widget/TextView;

.field private hY:Landroid/widget/ImageView;

.field private ia:Landroid/widget/TextView;

.field private ib:Landroid/widget/TextView;

.field private ic:Landroid/view/View;

.field private ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

.field private if:Z

.field private ig:I

.field protected ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

.field private ik:Landroid/widget/ImageView;

.field private il:Lcom/kwad/components/core/video/e;

.field private im:Lcom/kwad/components/ad/feed/widget/d;

.field private io:Landroid/widget/TextView;

.field private final iq:Lcom/kwad/components/core/video/a$a;

.field private ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

.field private is:Z

.field protected mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

.field private mIsAudioEnable:Z

.field private mLogoView:Lcom/kwad/components/core/widget/KsLogoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/feed/widget/a;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/c;->eV:Z

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/c;->if:Z

    .line 11
    .line 12
    const/16 p1, 0x8

    .line 13
    .line 14
    iput p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ig:I

    .line 15
    .line 16
    new-instance p1, Lcom/kwad/components/ad/feed/widget/c$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/feed/widget/c$1;-><init>(Lcom/kwad/components/ad/feed/widget/c;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->eW:Lcom/kwad/sdk/widget/l;

    .line 22
    .line 23
    new-instance p1, Lcom/kwad/components/ad/feed/widget/c$4;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/feed/widget/c$4;-><init>(Lcom/kwad/components/ad/feed/widget/c;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->iq:Lcom/kwad/components/core/video/a$a;

    .line 29
    .line 30
    new-instance p1, Lcom/kwad/components/ad/feed/widget/c$8;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/feed/widget/c$8;-><init>(Lcom/kwad/components/ad/feed/widget/c;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ey:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

    .line 36
    .line 37
    new-instance p1, Lcom/kwad/components/ad/feed/widget/c$10;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/feed/widget/c$10;-><init>(Lcom/kwad/components/ad/feed/widget/c;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->cM:Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;

    .line 43
    .line 44
    new-instance p1, Lcom/kwad/components/ad/feed/widget/c$2;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/feed/widget/c$2;-><init>(Lcom/kwad/components/ad/feed/widget/c;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->cL:Lcom/kwad/components/core/video/a$b;

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/c;Lcom/kwad/components/ad/feed/widget/d;)Lcom/kwad/components/ad/feed/widget/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->im:Lcom/kwad/components/ad/feed/widget/d;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/c;Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;)Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/c;I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/widget/b;->bY(I)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/c;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/feed/widget/c;->c(J)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/c;Landroid/view/View;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/feed/widget/c;->c(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/kwad/sdk/core/video/videoview/a;ZLandroid/view/View;I)V
    .locals 3

    if-nez p1, :cond_1

    .line 11
    iget-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/c;->is:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 12
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->is:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/video/e;->setAutoRelease(Z)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/kwad/components/ad/feed/widget/c;->getDefaultClickArea()I

    move-result v0

    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    if-eq p3, v2, :cond_3

    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->gX:Landroid/widget/TextView;

    if-eq p3, v2, :cond_3

    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ic:Landroid/view/View;

    if-ne p3, v2, :cond_4

    :cond_3
    move v0, v1

    .line 17
    :cond_4
    iget-boolean p3, p0, Lcom/kwad/components/ad/feed/widget/c;->is:Z

    if-nez p3, :cond_5

    .line 18
    invoke-static {}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->getInstance()Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;

    move-result-object p3

    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    invoke-virtual {p3, p1, v2}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a(Ljava/lang/String;Lcom/kwad/sdk/core/video/videoview/a;)V

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/kwad/components/ad/feed/widget/a;->cp()V

    .line 20
    new-instance p1, Lcom/kwad/components/core/e/d/a$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 21
    invoke-virtual {p1, p3}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    move-result-object p1

    iget-object p3, p0, Lcom/kwad/components/ad/feed/widget/c;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 22
    invoke-virtual {p1, p3}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/e/d/a$a;->as(Z)Lcom/kwad/components/core/e/d/a$a;

    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    if-nez p2, :cond_6

    const-wide/16 p2, 0x0

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->getPlayDuration()J

    move-result-wide p2

    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/kwad/components/core/e/d/a$a;->D(J)Lcom/kwad/components/core/e/d/a$a;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/e/d/a$a;->aN(I)Lcom/kwad/components/core/e/d/a$a;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v1}, Lcom/kwad/components/core/e/d/a$a;->aw(Z)Lcom/kwad/components/core/e/d/a$a;

    move-result-object p1

    new-instance p2, Lcom/kwad/components/ad/feed/widget/c$11;

    invoke-direct {p2, p0, p4}, Lcom/kwad/components/ad/feed/widget/c$11;-><init>(Lcom/kwad/components/ad/feed/widget/c;I)V

    .line 27
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/c;Z)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/feed/widget/c;->h(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/feed/widget/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/components/core/widget/b;->zN()V

    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/feed/widget/c;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/c;->cA:Z

    return p1
.end method

.method public static synthetic c(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private c(J)V
    .locals 2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 4
    iget-object p2, p0, Lcom/kwad/components/ad/feed/widget/c;->cv:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/kwad/components/ad/feed/widget/c;->cv:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 6
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    .line 10
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/kwad/components/ad/feed/widget/c$7;

    invoke-direct {v0, p0, p1}, Lcom/kwad/components/ad/feed/widget/c$7;-><init>(Lcom/kwad/components/ad/feed/widget/c;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cA()Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->fI:Lcom/kwad/components/core/offline/a/c/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-static {v0, v1, v2}, Lcom/kwad/components/ad/j/c;->a(Lcom/kwad/components/core/offline/a/c/a;Landroid/content/Context;I)Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    iput-object v4, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/c;->fI:Lcom/kwad/components/core/offline/a/c/a;

    .line 17
    .line 18
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v5, v1, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->cw(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->cx(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->cy(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v8

    .line 46
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    invoke-interface/range {v3 .. v10}, Lcom/kwad/components/core/offline/a/c/a;->getAdLivePlayModule(Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-boolean v2, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 57
    .line 58
    invoke-direct {p0, v2}, Lcom/kwad/components/ad/feed/widget/c;->h(Z)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-interface {v1, v2, v3}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->setAudioEnabled(ZZ)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ey:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

    .line 67
    .line 68
    invoke-interface {v1, v2}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->registerAdLivePlayStateListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 72
    .line 73
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->getView()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/kwad/components/ad/feed/widget/c$5;

    .line 112
    .line 113
    invoke-direct {v0, p0, v2}, Lcom/kwad/components/ad/feed/widget/c$5;-><init>(Lcom/kwad/components/ad/feed/widget/c;Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 120
    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->cM:Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/t/a;->a(Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    return-object v1
.end method

.method private cB()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bA(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/b;->getUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ik:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->fW:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ik:Landroid/widget/ImageView;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ik:Landroid/widget/ImageView;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 37
    .line 38
    new-instance v3, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat$Builder;

    .line 39
    .line 40
    invoke-direct {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat$Builder;-><init>()V

    .line 41
    .line 42
    .line 43
    const/16 v4, 0x32

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat$Builder;->setBlurRadius(I)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat$Builder;->build()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    new-instance v4, Lcom/kwad/components/ad/feed/widget/c$6;

    .line 54
    .line 55
    invoke-direct {v4, p0}, Lcom/kwad/components/ad/feed/widget/c$6;-><init>(Lcom/kwad/components/ad/feed/widget/c;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v0, v2, v3, v4}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptionsCompat;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ik:Landroid/widget/ImageView;

    .line 63
    .line 64
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_ad_live_end:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private cD()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/widget/DownloadProgressView;->aA(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/kwad/sdk/widget/h;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/kwad/components/core/e/d/d;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/kwad/components/ad/widget/DownloadProgressView;->getAppDownloadListener()Lcom/kwad/sdk/api/KsAppDownloadListener;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v0, v1, v3, v2}, Lcom/kwad/components/core/e/d/d;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/kwad/components/ad/widget/DownloadProgressView;->getAppDownloadListener()Lcom/kwad/sdk/api/KsAppDownloadListener;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/d;->d(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/e/d/d;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/e/d/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private cs()V
    .locals 3

    .line 1
    sget v0, Lcom/kwad/sdk/R$id;->ksad_h5_desc:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ib:Landroid/widget/TextView;

    .line 10
    .line 11
    sget v0, Lcom/kwad/sdk/R$id;->ksad_h5_open_btn:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->gX:Landroid/widget/TextView;

    .line 20
    .line 21
    sget v0, Lcom/kwad/sdk/R$id;->ksad_h5_open_cover:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ic:Landroid/view/View;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ib:Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/kwad/components/ad/feed/f;->p(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->gX:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aK(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ic:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ib:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->gX:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/kwad/sdk/widget/h;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ic:Landroid/view/View;

    .line 73
    .line 74
    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/kwad/sdk/widget/h;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ib:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/kwad/sdk/widget/h;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->gX:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private ct()V
    .locals 5

    .line 1
    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_icon:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->gQ:Landroid/widget/ImageView;

    .line 10
    .line 11
    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_title:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ev:Landroid/widget/TextView;

    .line 20
    .line 21
    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_desc:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ia:Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->gQ:Landroid/widget/ImageView;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ev:Landroid/widget/TextView;

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    new-array v3, v3, [Landroid/view/View;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    aput-object v1, v3, v4

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    aput-object v2, v3, v1

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    aput-object v0, v3, v1

    .line 46
    .line 47
    invoke-static {p0, v3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/view/View$OnClickListener;[Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/kwad/sdk/widget/h;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->gQ:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/kwad/sdk/widget/h;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ev:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/kwad/sdk/widget/h;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ia:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/kwad/components/ad/feed/widget/c;->cC()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ev:Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->cs(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ev:Landroid/widget/TextView;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aB(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->gQ:Landroid/widget/ImageView;

    .line 113
    .line 114
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_default_app_icon:I

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->gQ:Landroid/widget/ImageView;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->cv(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 128
    .line 129
    iget v3, p0, Lcom/kwad/components/ad/feed/widget/c;->ig:I

    .line 130
    .line 131
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ia:Landroid/widget/TextView;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 137
    .line 138
    invoke-static {v1}, Lcom/kwad/components/ad/feed/f;->p(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->if:Z

    .line 146
    .line 147
    if-eqz v0, :cond_1

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/kwad/components/ad/feed/widget/a;->cq()V

    .line 150
    .line 151
    .line 152
    :cond_1
    return-void
.end method

.method private cy()V
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/components/core/offline/a/c/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/components/core/offline/a/c/a;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->fI:Lcom/kwad/components/core/offline/a/c/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/kwad/components/core/offline/a/c/a;->tu()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cY(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->is:Z

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->cB()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private cz()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->getView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->is:Z

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->getView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 29
    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->getView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 69
    .line 70
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->getView()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 80
    .line 81
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->getView()Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/c;->fI:Lcom/kwad/components/core/offline/a/c/a;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 91
    .line 92
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getAppId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cw(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cx(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cy(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v8

    .line 118
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    invoke-interface/range {v3 .. v10}, Lcom/kwad/components/core/offline/a/c/a;->getAdLivePlayModule(Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 129
    .line 130
    iget-boolean v2, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 131
    .line 132
    invoke-interface {v0, v2, v1}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->setAudioEnabled(ZZ)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ey:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

    .line 138
    .line 139
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->registerAdLivePlayStateListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 143
    .line 144
    if-eqz v0, :cond_2

    .line 145
    .line 146
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onResume()V

    .line 147
    .line 148
    .line 149
    :cond_2
    const/4 v0, 0x1

    .line 150
    return v0

    .line 151
    :cond_3
    return v1
.end method

.method public static synthetic d(Lcom/kwad/components/ad/feed/widget/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/c;->io:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/core/l/a$b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->getCurrentVoiceItem()Lcom/kwad/components/core/l/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/feed/widget/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method private getCurrentVoiceItem()Lcom/kwad/components/core/l/a$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->fU:Lcom/kwad/components/core/l/a$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/core/l/a$b;

    .line 6
    .line 7
    new-instance v1, Lcom/kwad/components/ad/feed/widget/c$3;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/feed/widget/c$3;-><init>(Lcom/kwad/components/ad/feed/widget/c;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/kwad/components/core/l/a$b;-><init>(Lcom/kwad/components/core/l/a$c;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->fU:Lcom/kwad/components/core/l/a$b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->fU:Lcom/kwad/components/core/l/a$b;

    .line 18
    .line 19
    return-object v0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private h(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->hO()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/components/core/t/a;->wE()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/t/a;->bd(Z)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/components/core/t/a;->wD()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 6
    :cond_3
    iget-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/c;->cA:Z

    if-nez p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/kwad/components/core/t/a;->bd(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/c;->cA:Z

    .line 8
    :cond_4
    iget-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/c;->cA:Z

    return p1
.end method

.method public static synthetic i(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/video/videoview/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/ad/feed/widget/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/c;->im:Lcom/kwad/components/ad/feed/widget/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/core/video/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/kwad/components/ad/feed/widget/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/feed/widget/c;->is:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic s(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->cA()Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/kwad/components/ad/feed/widget/c;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;FFFF)V
    .locals 0

    .line 9
    iget-object p2, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/d;->eD(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    iget-object p3, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    if-ne p1, p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/16 p4, 0x99

    invoke-direct {p0, p2, p3, p1, p4}, Lcom/kwad/components/ad/feed/widget/c;->a(Lcom/kwad/sdk/core/video/videoview/a;ZLandroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public final ae()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/widget/b;->ae()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/kwad/components/ad/widget/DownloadProgressView;->getAppDownloadListener()Lcom/kwad/sdk/api/KsAppDownloadListener;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/d;->b(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final af()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/widget/b;->af()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/sdk/utils/o;->fp(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onDestroy()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->onDestroy()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 27
    .line 28
    :cond_1
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->fU:Lcom/kwad/components/core/l/a$b;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->c(Lcom/kwad/components/core/l/a$b;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final b(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .locals 9
    .param p1    # Lcom/kwad/sdk/api/KsAdVideoPlayConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 4
    instance-of v0, p1, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->getVideoSoundValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->ch(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-boolean v1, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsAudioEnable:Z

    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bv(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cv:Ljava/util/List;

    .line 10
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->is:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bA(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/b;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/b;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ik:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ik:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ik:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1, v0, v3}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ik:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ik:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    :goto_1
    new-instance v0, Lcom/kwad/sdk/core/video/videoview/a;

    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/video/videoview/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 20
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->eW:Lcom/kwad/sdk/widget/l;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;->setVisibleListener(Lcom/kwad/sdk/widget/l;)V

    .line 21
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance v0, Lcom/kwad/sdk/widget/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    invoke-direct {v0, v1, v3, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 23
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->cv:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Ga()I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    :cond_3
    if-gez v0, :cond_5

    .line 27
    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->Lx()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kwad/sdk/core/diskcache/b/a;->cO(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v4, v2

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    goto :goto_3

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/c/a;->cm(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;

    move-result-object v3

    .line 31
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Jn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Ga()I

    move-result v0

    .line 33
    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/videocache/f;->fz(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 34
    new-instance v7, Lcom/kwad/sdk/core/network/a/a$a;

    invoke-direct {v7}, Lcom/kwad/sdk/core/network/a/a$a;-><init>()V

    mul-int/lit16 v0, v0, 0x400

    int-to-long v5, v0

    const/4 v8, 0x0

    .line 35
    invoke-virtual/range {v3 .. v8}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/String;JLcom/kwad/sdk/core/network/a/a$a;Lcom/kwad/sdk/export/proxy/AdHttpResponseListener;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/videocache/f;->fx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 37
    :cond_7
    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/videocache/f;->fx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 38
    :cond_8
    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/videocache/f;->fx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    :cond_9
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_4

    .line 40
    :cond_a
    new-instance v0, Lcom/kwad/sdk/contentalliance/a/a/b$a;

    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/contentalliance/a/a/b$a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 41
    invoke-virtual {v0, v4}, Lcom/kwad/sdk/contentalliance/a/a/b$a;->dQ(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/a/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 42
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eP(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/h;->b(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/a/a/b$a;->dR(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/a/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    .line 43
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/a/a/b$a;->a(Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;)Lcom/kwad/sdk/contentalliance/a/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 44
    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/a/a/a;->cm(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/contentalliance/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/a/a/b$a;->b(Lcom/kwad/sdk/contentalliance/a/a/a;)Lcom/kwad/sdk/contentalliance/a/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/a/a/b$a;->IG()Lcom/kwad/sdk/contentalliance/a/a/b;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/core/video/videoview/a;->a(Lcom/kwad/sdk/contentalliance/a/a/b;Ljava/util/Map;)V

    .line 46
    new-instance v0, Lcom/kwad/components/ad/feed/widget/c$9;

    invoke-direct {v0, p0}, Lcom/kwad/components/ad/feed/widget/c$9;-><init>(Lcom/kwad/components/ad/feed/widget/c;)V

    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cK:Lcom/kwad/sdk/core/video/videoview/a$a;

    .line 47
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/video/videoview/a;->setExternalPlayerListener(Lcom/kwad/sdk/core/video/videoview/a$a;)V

    .line 48
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    iget-boolean v1, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    invoke-direct {p0, v1}, Lcom/kwad/components/ad/feed/widget/c;->h(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/a;->setVideoSoundEnable(Z)V

    .line 49
    new-instance v0, Lcom/kwad/components/core/video/e;

    iget-object v1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v4, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    invoke-direct {v0, v1, v3, v4, p1}, Lcom/kwad/components/core/video/e;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/video/videoview/c;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    .line 50
    invoke-virtual {p0}, Lcom/kwad/components/ad/feed/widget/c;->getVideoAdClickListener()Lcom/kwad/components/core/video/a$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/components/core/video/a;->setAdClickListener(Lcom/kwad/components/core/video/a$a;)V

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/components/ad/feed/widget/a;->hP:J

    .line 52
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cL:Lcom/kwad/components/core/video/a$b;

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/video/a;->setVideoPlayCallback(Lcom/kwad/components/core/video/a$c;)V

    .line 53
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/video/videoview/a;->setController(Lcom/kwad/sdk/core/video/videoview/b;)V

    .line 54
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 55
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :cond_b
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lcom/kwad/components/ad/feed/widget/c;->cC()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 60
    sget p1, Lcom/kwad/sdk/R$id;->ksad_feed_bottombar_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_c
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 64
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance p1, Lcom/kwad/sdk/widget/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    invoke-direct {p1, v0, v1, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 66
    iget-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    if-eqz p1, :cond_d

    .line 67
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cM:Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/t/a;->a(Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;)V

    :cond_d
    :goto_4
    return-void
.end method

.method public final bA()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/widget/b;->bA()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onPause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->fU:Lcom/kwad/components/core/l/a$b;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->c(Lcom/kwad/components/core/l/a$b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public bC()V
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_desc:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->hW:Landroid/widget/TextView;

    .line 10
    .line 11
    sget v0, Lcom/kwad/sdk/R$id;->ksad_feed_ad_video_container:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kwad/components/ad/feed/widget/c;->cx()V

    .line 22
    .line 23
    .line 24
    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_dislike:I

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->hY:Landroid/widget/ImageView;

    .line 33
    .line 34
    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_first_frame_container:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ik:Landroid/widget/ImageView;

    .line 43
    .line 44
    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_dislike_logo:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/kwad/components/core/widget/KsLogoView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mLogoView:Lcom/kwad/components/core/widget/KsLogoView;

    .line 53
    .line 54
    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_download_btn:I

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 63
    .line 64
    sget v0, Lcom/kwad/sdk/R$id;->ksad_live_end_text:I

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->io:Landroid/widget/TextView;

    .line 73
    .line 74
    sget v0, Lcom/kwad/sdk/R$id;->ksad_live_end_bg_mantle:I

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->fW:Landroid/view/View;

    .line 81
    .line 82
    return-void
.end method

.method public final bz()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/widget/b;->bz()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->cL:Lcom/kwad/components/core/video/a$b;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/video/a;->setVideoPlayCallback(Lcom/kwad/components/core/video/a$c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->getCurrentVoiceItem()Lcom/kwad/components/core/l/a$b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->a(Lcom/kwad/components/core/l/a$b;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->is:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->cA()Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onResume()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final cC()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->fj(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/kwad/components/model/FeedType;->isNewVerticalType(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->fk(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-object v1, Lcom/kwad/components/model/FeedType$FeedDefaultType;->FEED_VERTICAL_NOVEL_DEFAULT:Lcom/kwad/components/model/FeedType$FeedDefaultType;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/kwad/components/model/FeedType$FeedDefaultType;->getDefaultType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->fk(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sget-object v1, Lcom/kwad/components/model/FeedType$FeedDefaultType;->FEED_VERTICAL_BISERIAL_DEFAULT:Lcom/kwad/components/model/FeedType$FeedDefaultType;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/kwad/components/model/FeedType$FeedDefaultType;->getDefaultType()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v0, v1, :cond_1

    .line 40
    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    return v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    return v0
.end method

.method public final cw()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/widget/b;->cw()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/kwad/components/ad/widget/DownloadProgressView;->getAppDownloadListener()Lcom/kwad/sdk/api/KsAppDownloadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/d;->c(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->cM:Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/t/a;->b(Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public cx()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 2
    .line 3
    const v1, 0x3f0f5c29    # 0.56f

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/KSRelativeLayout;->setRatio(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d(Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .locals 2
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Lcom/kwad/components/core/widget/b;->d(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 3
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->hW:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/components/ad/feed/f;->p(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->mLogoView:Lcom/kwad/components/core/widget/KsLogoView;

    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/widget/KsLogoView;->bl(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 5
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->cy()V

    .line 6
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 7
    sget p1, Lcom/kwad/sdk/R$id;->ksad_ad_download_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    sget p1, Lcom/kwad/sdk/R$id;->ksad_ad_h5_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->ct()V

    .line 10
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->cD()V

    goto :goto_0

    .line 11
    :cond_0
    sget p1, Lcom/kwad/sdk/R$id;->ksad_ad_h5_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    sget p1, Lcom/kwad/sdk/R$id;->ksad_ad_download_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcom/kwad/components/ad/feed/widget/c;->cC()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->ct()V

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->cs()V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->hW:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->hY:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance p1, Lcom/kwad/sdk/widget/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->hW:Landroid/widget/TextView;

    invoke-direct {p1, v0, v1, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 20
    new-instance p1, Lcom/kwad/sdk/widget/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    invoke-direct {p1, v0, v1, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 21
    new-instance p1, Lcom/kwad/sdk/widget/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->hY:Landroid/widget/ImageView;

    invoke-direct {p1, v0, v1, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 22
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getDefaultClickArea()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getVideoAdClickListener()Lcom/kwad/components/core/video/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->iq:Lcom/kwad/components/core/video/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->hY:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kwad/components/core/widget/b;->zO()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kwad/sdk/core/video/videoview/a;->isIdle()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/kwad/sdk/utils/o;->fq(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/a/a/a;->cm(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/contentalliance/a/a/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/video/videoview/a;->setKsPlayLogParam(Lcom/kwad/sdk/contentalliance/a/a/a;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/videoview/a;->start()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->hW:Landroid/widget/TextView;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    const/16 v0, 0x19

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 54
    .line 55
    const/16 v2, 0x64

    .line 56
    .line 57
    if-ne p1, v0, :cond_3

    .line 58
    .line 59
    :goto_0
    move v0, v2

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 62
    .line 63
    if-eq p1, v0, :cond_a

    .line 64
    .line 65
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->gX:Landroid/widget/TextView;

    .line 66
    .line 67
    if-eq p1, v0, :cond_a

    .line 68
    .line 69
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ic:Landroid/view/View;

    .line 70
    .line 71
    if-ne p1, v0, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->gQ:Landroid/widget/ImageView;

    .line 75
    .line 76
    if-ne p1, v0, :cond_5

    .line 77
    .line 78
    const/16 v0, 0xd

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ev:Landroid/widget/TextView;

    .line 82
    .line 83
    if-ne p1, v0, :cond_6

    .line 84
    .line 85
    const/16 v0, 0xe

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ia:Landroid/widget/TextView;

    .line 89
    .line 90
    if-eq p1, v0, :cond_9

    .line 91
    .line 92
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ib:Landroid/widget/TextView;

    .line 93
    .line 94
    if-ne p1, v0, :cond_7

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 98
    .line 99
    if-ne p1, v0, :cond_8

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_8
    const/16 v0, 0x23

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_9
    :goto_1
    const/16 v0, 0x65

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_a
    :goto_2
    move v0, v1

    .line 109
    :goto_3
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 110
    .line 111
    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/c;->ie:Lcom/kwad/components/ad/widget/DownloadProgressView;

    .line 112
    .line 113
    if-ne p1, v3, :cond_b

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_b
    const/4 v1, 0x0

    .line 117
    :goto_4
    invoke-direct {p0, v2, v1, p1, v0}, Lcom/kwad/components/ad/feed/widget/c;->a(Lcom/kwad/sdk/core/video/videoview/a;ZLandroid/view/View;I)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/kwad/sdk/widget/KSFrameLayout;->onWindowFocusChanged(Z)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_4

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/kwad/components/ad/feed/widget/c;->cz()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 41
    .line 42
    if-eq v0, v1, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 92
    .line 93
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/video/videoview/a;->setVideoSoundEnable(Z)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 99
    .line 100
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 101
    .line 102
    iput-boolean v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsAudioEnable:Z

    .line 103
    .line 104
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/kwad/components/ad/feed/widget/c;->getVideoAdClickListener()Lcom/kwad/components/core/video/a$a;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/video/a;->setAdClickListener(Lcom/kwad/components/core/video/a$a;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/kwad/components/core/video/a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdWebVideoPageShowing:Z

    .line 121
    .line 122
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/kwad/components/core/video/e;->xH()V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    .line 128
    .line 129
    const/4 v0, 0x1

    .line 130
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/video/e;->setAutoRelease(Z)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object p1, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->getInstance()Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->remove(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 150
    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->getView()Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p1, :cond_5

    .line 158
    .line 159
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 160
    .line 161
    if-eqz p1, :cond_5

    .line 162
    .line 163
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    .line 166
    :cond_5
    :goto_1
    return-void

    .line 167
    :goto_2
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public setRadiusDp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ig:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoPlayConfig(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/c;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 2
    .line 3
    instance-of v0, p1, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    check-cast p1, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->getVideoSoundValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->isVideoSoundEnable()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->ch(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 33
    .line 34
    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsAudioEnable:Z

    .line 35
    .line 36
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->fH:Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLiveOfflineView;->getView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 51
    .line 52
    invoke-direct {p0, v1}, Lcom/kwad/components/ad/feed/widget/c;->h(Z)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-interface {v0, v1, v2}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->setAudioEnabled(ZZ)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-boolean v1, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 66
    .line 67
    invoke-direct {p0, v1}, Lcom/kwad/components/ad/feed/widget/c;->h(Z)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/a;->setVideoSoundEnable(Z)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/c;->mIsAudioEnable:Z

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lcom/kwad/components/core/widget/b;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c;->cM:Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/t/a;->a(Lcom/kwad/components/offline/api/core/api/OfflineOnAudioConflictListener;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {p1}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->getDataFlowAutoStartValue()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->il:Lcom/kwad/components/core/video/e;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->isDataFlowAutoStart()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/video/a;->setDataAutoStart(Z)V

    .line 104
    .line 105
    .line 106
    :cond_4
    return-void
.end method

.method public setmIsShowComplianceView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/c;->if:Z

    .line 2
    .line 3
    return-void
.end method
