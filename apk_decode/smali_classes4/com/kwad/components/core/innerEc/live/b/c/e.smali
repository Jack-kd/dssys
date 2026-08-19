.class public final Lcom/kwad/components/core/innerEc/live/b/c/e;
.super Lcom/kwad/components/core/innerEc/live/b/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/base/f;
.implements Lcom/kwad/components/core/webview/tachikoma/j;


# instance fields
.field private KG:Z

.field private TD:Lcom/kwad/sdk/core/response/model/LiveInfo;

.field private final UA:Lcom/kwad/components/core/innerEc/live/base/a;

.field private UV:Lcom/kwad/components/core/innerEc/live/config/b;

.field private final UY:Lcom/kwad/components/core/innerEc/live/config/a;

.field private VG:Lcom/kwad/components/core/webview/tachikoma/i;

.field private VH:Lcom/kwad/components/core/innerEc/live/a/c;

.field private VI:Lcom/kwad/components/core/innerEc/live/a/i;

.field private VJ:Lcom/kwad/components/core/innerEc/live/a/g;

.field private VK:Lcom/kwad/components/core/innerEc/live/a/f;

.field private VL:Lcom/kwad/components/core/innerEc/live/a/h;

.field private VM:Lcom/kwad/components/core/innerEc/live/a/l;

.field private VN:Lcom/kwad/components/core/innerEc/live/base/d;

.field private VO:Lcom/kwad/components/core/innerEc/live/base/c;

.field private VP:Lcom/kwad/components/core/innerEc/live/base/e;

.field private VQ:Lcom/kwad/components/core/innerEc/live/f/a;

.field private VR:Lcom/kwad/components/core/innerEc/live/a/d;

.field private VS:Lcom/kwad/components/core/innerEc/live/a/b;

.field private VT:Lcom/kwad/components/core/innerEc/live/a/n;

.field private VU:Lcom/kwad/components/core/innerEc/live/a/k;

.field private VV:Lcom/kwad/components/core/innerEc/live/a/a;

.field private VW:Lcom/kwad/components/core/innerEc/live/a/o;

.field private VX:Lcom/kwad/components/core/innerEc/live/a/m;

.field private final VY:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;

.field private final VZ:Lcom/kwad/components/core/innerEc/live/g/b;

.field private final Wa:Lcom/kwad/components/core/innerEc/live/g/e;

.field private final Wb:Lcom/kwad/components/core/innerEc/live/end/c;

.field private Wc:Lcom/kwad/components/core/innerEc/live/g/d;

.field private final Wd:Lcom/kwad/sdk/core/j/c;

.field private dG:Landroid/widget/FrameLayout;

.field private do:Lcom/kwad/components/core/webview/jshandler/az;

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->KG:Z

    .line 6
    .line 7
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/e$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/e$1;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->UA:Lcom/kwad/components/core/innerEc/live/base/a;

    .line 13
    .line 14
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/e$3;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/e$3;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VY:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;

    .line 20
    .line 21
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/e$4;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/e$4;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VZ:Lcom/kwad/components/core/innerEc/live/g/b;

    .line 27
    .line 28
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/e$5;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/e$5;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wa:Lcom/kwad/components/core/innerEc/live/g/e;

    .line 34
    .line 35
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/e$6;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/e$6;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->UY:Lcom/kwad/components/core/innerEc/live/config/a;

    .line 41
    .line 42
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/e$7;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/e$7;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wb:Lcom/kwad/components/core/innerEc/live/end/c;

    .line 48
    .line 49
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/e$9;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/e$9;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wd:Lcom/kwad/sdk/core/j/c;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/m;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VX:Lcom/kwad/components/core/innerEc/live/a/m;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/e;Lcom/kwad/components/core/innerEc/live/base/c;)Lcom/kwad/components/core/innerEc/live/base/c;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VO:Lcom/kwad/components/core/innerEc/live/base/c;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/e;Lcom/kwad/components/core/innerEc/live/base/d;)Lcom/kwad/components/core/innerEc/live/base/d;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VN:Lcom/kwad/components/core/innerEc/live/base/d;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/e;Lcom/kwad/components/core/innerEc/live/base/e;)Lcom/kwad/components/core/innerEc/live/base/e;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VP:Lcom/kwad/components/core/innerEc/live/base/e;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/e;Lcom/kwad/components/core/innerEc/live/f/a;)Lcom/kwad/components/core/innerEc/live/f/a;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VQ:Lcom/kwad/components/core/innerEc/live/f/a;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/e;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->KG:Z

    return p1
.end method

.method private static aL(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/LiveInfo;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->liveInfo:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v0, v1, Lcom/kwad/sdk/core/response/model/LiveInfo;->rewardInfo:Lcom/kwad/sdk/core/response/model/LiveRewardInfo;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mLiveDetailRewardFromAdLive:Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->countDownSecond:J

    .line 22
    .line 23
    iput-wide v2, v0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;->rewardTimeSecond:J

    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->success:Z

    .line 26
    .line 27
    iput-boolean p0, v0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;->rewardVerified:Z

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "initLiveDetailInfo rewardTimeSecond = "

    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v1, Lcom/kwad/sdk/core/response/model/LiveInfo;->rewardInfo:Lcom/kwad/sdk/core/response/model/LiveRewardInfo;

    .line 37
    .line 38
    iget-wide v2, v0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;->rewardTimeSecond:J

    .line 39
    .line 40
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", rewardVerified:"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v0, v1, Lcom/kwad/sdk/core/response/model/LiveInfo;->rewardInfo:Lcom/kwad/sdk/core/response/model/LiveRewardInfo;

    .line 49
    .line 50
    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;->rewardVerified:Z

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string v0, "LiveDetailTKPresenter"

    .line 60
    .line 61
    invoke-static {v0, p0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-object v1
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/b/c/e;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VJ:Lcom/kwad/components/core/innerEc/live/a/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VN:Lcom/kwad/components/core/innerEc/live/base/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/f;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VK:Lcom/kwad/components/core/innerEc/live/a/f;

    return-object p0
.end method

.method public static synthetic h(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VO:Lcom/kwad/components/core/innerEc/live/base/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VL:Lcom/kwad/components/core/innerEc/live/a/h;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/base/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VP:Lcom/kwad/components/core/innerEc/live/base/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VI:Lcom/kwad/components/core/innerEc/live/a/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VR:Lcom/kwad/components/core/innerEc/live/a/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VM:Lcom/kwad/components/core/innerEc/live/a/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VQ:Lcom/kwad/components/core/innerEc/live/f/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/webview/jshandler/az;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private se()Lcom/kwad/components/core/innerEc/live/g/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wc:Lcom/kwad/components/core/innerEc/live/g/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/e$8;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/kwad/components/core/innerEc/live/b/c/e$8;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/e;Lcom/kwad/components/core/innerEc/live/b/a/b;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wc:Lcom/kwad/components/core/innerEc/live/g/d;

    .line 14
    .line 15
    return-object v0
.end method

.method private sf()V
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/i;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VG:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "initTKLiveAdPage LiveDetailFragment mLiveDetailInfo: "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->TD:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "LiveDetailTKPresenter"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/a;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/a;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VV:Lcom/kwad/components/core/innerEc/live/a/a;

    .line 39
    .line 40
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/o;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/o;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VW:Lcom/kwad/components/core/innerEc/live/a/o;

    .line 46
    .line 47
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/c;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->TD:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 50
    .line 51
    invoke-direct {v0, v2}, Lcom/kwad/components/core/innerEc/live/a/c;-><init>(Lcom/kwad/sdk/core/response/model/LiveInfo;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VH:Lcom/kwad/components/core/innerEc/live/a/c;

    .line 55
    .line 56
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/i;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/i;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VI:Lcom/kwad/components/core/innerEc/live/a/i;

    .line 62
    .line 63
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/g;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/g;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VJ:Lcom/kwad/components/core/innerEc/live/a/g;

    .line 69
    .line 70
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/d;

    .line 71
    .line 72
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/d;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VR:Lcom/kwad/components/core/innerEc/live/a/d;

    .line 76
    .line 77
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/l;

    .line 78
    .line 79
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/l;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VM:Lcom/kwad/components/core/innerEc/live/a/l;

    .line 83
    .line 84
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/f;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/f;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VK:Lcom/kwad/components/core/innerEc/live/a/f;

    .line 90
    .line 91
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/h;

    .line 92
    .line 93
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/h;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VL:Lcom/kwad/components/core/innerEc/live/a/h;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 99
    .line 100
    new-instance v2, Lcom/kwad/components/core/innerEc/live/a/p;

    .line 101
    .line 102
    invoke-direct {v2}, Lcom/kwad/components/core/innerEc/live/a/p;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v2, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->US:Lcom/kwad/components/core/innerEc/live/a/p;

    .line 106
    .line 107
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/n;

    .line 108
    .line 109
    new-instance v2, Lcom/kwad/components/core/innerEc/live/b/c/e$10;

    .line 110
    .line 111
    invoke-direct {v2, p0}, Lcom/kwad/components/core/innerEc/live/b/c/e$10;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v2}, Lcom/kwad/components/core/innerEc/live/a/n;-><init>(Lcom/kwad/components/core/innerEc/live/a/n$a;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VT:Lcom/kwad/components/core/innerEc/live/a/n;

    .line 118
    .line 119
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/b;

    .line 120
    .line 121
    new-instance v2, Lcom/kwad/components/core/innerEc/live/b/c/e$2;

    .line 122
    .line 123
    invoke-direct {v2, p0}, Lcom/kwad/components/core/innerEc/live/b/c/e$2;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v2}, Lcom/kwad/components/core/innerEc/live/a/b;-><init>(Lcom/kwad/components/core/innerEc/live/a/b$a;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VS:Lcom/kwad/components/core/innerEc/live/a/b;

    .line 130
    .line 131
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/k;

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-direct {v0, v2}, Lcom/kwad/components/core/innerEc/live/a/k;-><init>(Landroid/app/Activity;)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VU:Lcom/kwad/components/core/innerEc/live/a/k;

    .line 141
    .line 142
    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/m;

    .line 143
    .line 144
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/m;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VX:Lcom/kwad/components/core/innerEc/live/a/m;

    .line 148
    .line 149
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VG:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string v3, "cardMarginBottom"

    .line 157
    .line 158
    invoke-virtual {v0, v3, v2}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v2, "initTKLiveAdPage mAdResultData: "

    .line 164
    .line 165
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/kwad/components/core/innerEc/live/b/a/b;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/logger/a;->aV(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VG:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 196
    .line 197
    iget-object v2, v2, Lcom/kwad/components/core/innerEc/live/b/a/b;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 198
    .line 199
    invoke-virtual {v0, v1, v2, p0}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Landroid/app/Activity;Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/core/webview/tachikoma/j;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/jshandler/a$a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/jshandler/ae$a;)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->bB(Landroid/content/Context;)F

    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->getTKContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Lcom/kwad/components/core/webview/jshandler/ae$a;->width:I

    .line 53
    invoke-virtual {p0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->getTKContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Lcom/kwad/components/core/webview/jshandler/ae$a;->height:I

    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/jshandler/az;)V
    .locals 1

    .line 55
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->do:Lcom/kwad/components/core/webview/jshandler/az;

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/jshandler/az;->bm(Z)V

    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTkLoadFailed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveDetailTKPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->do:Lcom/kwad/components/core/webview/jshandler/az;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yz()V

    .line 16
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->do:Lcom/kwad/components/core/webview/jshandler/az;

    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yA()V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->dG:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UR:Lcom/kwad/components/core/innerEc/live/d/b;

    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/live/d/b;->b(Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V

    .line 19
    sget-object p1, Lcom/kwad/components/core/innerEc/live/b;->Tr:Lcom/kwad/components/core/innerEc/live/a;

    if-eqz p1, :cond_1

    .line 20
    invoke-interface {p1}, Lcom/kwad/components/core/innerEc/live/a;->rt()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/tachikoma/b/o;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/tachikoma/b/p;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/tachikoma/c/n;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/tachikoma/c/u;)V
    .locals 0

    .line 5
    return-void
.end method

.method public final a(Lcom/kwad/sdk/commercial/model/WebCloseStatus;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/components/t;Lcom/kwad/sdk/core/webview/b;)V
    .locals 2

    .line 21
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VH:Lcom/kwad/components/core/innerEc/live/a/c;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 22
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VI:Lcom/kwad/components/core/innerEc/live/a/i;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 23
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VI:Lcom/kwad/components/core/innerEc/live/a/i;

    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UM:Lcom/kwad/components/core/innerEc/live/config/net/g;

    invoke-virtual {p2, v0}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 24
    new-instance p2, Lcom/kwad/components/core/innerEc/live/a/g;

    invoke-direct {p2}, Lcom/kwad/components/core/innerEc/live/a/g;-><init>()V

    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VJ:Lcom/kwad/components/core/innerEc/live/a/g;

    .line 25
    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 26
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VN:Lcom/kwad/components/core/innerEc/live/base/d;

    if-eqz p2, :cond_0

    .line 27
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VJ:Lcom/kwad/components/core/innerEc/live/a/g;

    invoke-virtual {v0, p2}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 28
    :cond_0
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    new-instance v0, Lcom/kwad/components/core/innerEc/live/a/e;

    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/a/e;-><init>()V

    iput-object v0, p2, Lcom/kwad/components/core/innerEc/live/b/a/b;->UT:Lcom/kwad/components/core/innerEc/live/a/e;

    .line 29
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    iget-object p2, p2, Lcom/kwad/components/core/innerEc/live/b/a/b;->UT:Lcom/kwad/components/core/innerEc/live/a/e;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 30
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VK:Lcom/kwad/components/core/innerEc/live/a/f;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 31
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VO:Lcom/kwad/components/core/innerEc/live/base/c;

    if-eqz p2, :cond_1

    .line 32
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VK:Lcom/kwad/components/core/innerEc/live/a/f;

    invoke-virtual {v0, p2}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 33
    :cond_1
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VL:Lcom/kwad/components/core/innerEc/live/a/h;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 34
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VP:Lcom/kwad/components/core/innerEc/live/base/e;

    if-eqz p2, :cond_2

    .line 35
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VL:Lcom/kwad/components/core/innerEc/live/a/h;

    invoke-virtual {v0, p2}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 36
    :cond_2
    new-instance p2, Lcom/kwad/components/core/innerEc/live/a/l;

    invoke-direct {p2}, Lcom/kwad/components/core/innerEc/live/a/l;-><init>()V

    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VM:Lcom/kwad/components/core/innerEc/live/a/l;

    .line 37
    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 38
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VQ:Lcom/kwad/components/core/innerEc/live/f/a;

    if-eqz p2, :cond_3

    .line 39
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VM:Lcom/kwad/components/core/innerEc/live/a/l;

    invoke-virtual {v0, p2}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 40
    :cond_3
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VR:Lcom/kwad/components/core/innerEc/live/a/d;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 41
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    iget-object p2, p2, Lcom/kwad/components/core/innerEc/live/b/a/b;->UK:Lcom/kwad/components/core/innerEc/live/end/a;

    invoke-interface {p2}, Lcom/kwad/components/core/innerEc/live/end/a;->sD()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 42
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VR:Lcom/kwad/components/core/innerEc/live/a/d;

    invoke-static {}, Lcom/kwad/components/core/innerEc/live/a/d$a;->rw()Lcom/kwad/components/core/innerEc/live/a/d$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/a/d$a;->aK(Z)Lcom/kwad/components/core/innerEc/live/a/d$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 43
    :cond_4
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VT:Lcom/kwad/components/core/innerEc/live/a/n;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 44
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VS:Lcom/kwad/components/core/innerEc/live/a/b;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 45
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VU:Lcom/kwad/components/core/innerEc/live/a/k;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 46
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VV:Lcom/kwad/components/core/innerEc/live/a/a;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 47
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VW:Lcom/kwad/components/core/innerEc/live/a/o;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 48
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VX:Lcom/kwad/components/core/innerEc/live/a/m;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 49
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    iget-object p2, p2, Lcom/kwad/components/core/innerEc/live/b/a/b;->US:Lcom/kwad/components/core/innerEc/live/a/p;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 50
    new-instance p2, Lcom/kwad/components/core/innerEc/live/a/j;

    invoke-direct {p2, p0}, Lcom/kwad/components/core/innerEc/live/a/j;-><init>(Lcom/kwad/components/core/innerEc/live/base/f;)V

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/webview/d/b/a;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/webview/d/b/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    return-void
.end method

.method public final aE()V
    .locals 3

    .line 1
    const-string v0, "LiveDetailTKPresenter"

    .line 2
    .line 3
    const-string v1, "onTkLoadSuccess: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yx()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yy()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->KG:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yB()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->dG:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UR:Lcom/kwad/components/core/innerEc/live/d/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/d/b;->sJ()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UO:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/kwad/sdk/g/b;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, v2}, Lcom/kwad/sdk/g/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget-object v0, Lcom/kwad/components/core/innerEc/live/b;->Tr:Lcom/kwad/components/core/innerEc/live/a;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/kwad/components/core/innerEc/live/a;->rs()V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/logger/a;->aW(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final aF()V
    .locals 0

    return-void
.end method

.method public final aG()V
    .locals 0

    return-void
.end method

.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UF:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->UV:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->aL(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->TD:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->UA:Lcom/kwad/components/core/innerEc/live/base/a;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UA:Lcom/kwad/components/core/innerEc/live/base/a;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UE:Lcom/kwad/components/core/widget/a/b;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wd:Lcom/kwad/sdk/core/j/c;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/widget/a/a;->a(Lcom/kwad/sdk/core/j/c;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UE:Lcom/kwad/components/core/widget/a/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->Aa()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->sf()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->UV:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->UY:Lcom/kwad/components/core/innerEc/live/config/a;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/config/b;->a(Lcom/kwad/components/core/innerEc/live/config/a;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VY:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;

    .line 59
    .line 60
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->registerSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->se()Lcom/kwad/components/core/innerEc/live/g/d;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->registerSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VZ:Lcom/kwad/components/core/innerEc/live/g/b;

    .line 79
    .line 80
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->registerSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wa:Lcom/kwad/components/core/innerEc/live/g/e;

    .line 88
    .line 89
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->registerSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UK:Lcom/kwad/components/core/innerEc/live/end/a;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wb:Lcom/kwad/components/core/innerEc/live/end/c;

    .line 97
    .line 98
    invoke-interface {v0, v1}, Lcom/kwad/components/core/innerEc/live/end/a;->a(Lcom/kwad/components/core/innerEc/live/end/c;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final b(Lcom/kwad/sdk/core/response/model/LiveDetailReward;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateLiveDetailReward: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveDetailTKPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p1, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->success:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "REWARD_LIVE_ACTION_VERIFY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/af;->dj(Landroid/content/Context;)Lcom/kwad/sdk/utils/af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/utils/af;->i(Landroid/content/Intent;)Z

    return-void

    .line 6
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "REWARD_LIVE_ACTION_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    const-string v1, "countDownSecond"

    iget-wide v2, p1, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->countDownSecond:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8
    const-string v1, "hasRewardTime"

    iget-wide v2, p1, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->hasRewardTime:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/af;->dj(Landroid/content/Context;)Lcom/kwad/sdk/utils/af;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/utils/af;->i(Landroid/content/Intent;)Z

    return-void
.end method

.method public final g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getRegisterViewKey()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTKContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->dG:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTKReaderScene()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "tk_adinnerec_full_live_card"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTkTemplateId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->ei(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getTouchCoordsView()Lcom/kwad/sdk/widget/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_live_ad_container:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->dG:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/video/a/b;->destroy()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yz()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yA()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UE:Lcom/kwad/components/core/widget/a/b;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wd:Lcom/kwad/sdk/core/j/c;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/widget/a/a;->b(Lcom/kwad/sdk/core/j/c;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VG:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->kV()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->UV:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->UY:Lcom/kwad/components/core/innerEc/live/config/a;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/config/b;->b(Lcom/kwad/components/core/innerEc/live/config/a;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VY:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;

    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->unregisterSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wc:Lcom/kwad/components/core/innerEc/live/g/d;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->registerSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VZ:Lcom/kwad/components/core/innerEc/live/g/b;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->unregisterSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wa:Lcom/kwad/components/core/innerEc/live/g/e;

    .line 71
    .line 72
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->unregisterSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UK:Lcom/kwad/components/core/innerEc/live/end/a;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->Wb:Lcom/kwad/components/core/innerEc/live/end/c;

    .line 80
    .line 81
    invoke-interface {v0, v1}, Lcom/kwad/components/core/innerEc/live/end/a;->b(Lcom/kwad/components/core/innerEc/live/end/c;)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VN:Lcom/kwad/components/core/innerEc/live/base/d;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e;->VQ:Lcom/kwad/components/core/innerEc/live/f/a;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UO:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    .line 95
    .line 96
    return-void
.end method
