.class public final Lcom/kwad/components/ad/c/e/a;
.super Lcom/kwad/components/ad/c/e/c;
.source "SourceFile"


# instance fields
.field private cA:Z

.field private dm:Landroid/widget/FrameLayout;

.field private dn:Z

.field private do:Lcom/kwad/components/core/webview/jshandler/az;

.field private dp:Lcom/kwad/components/core/webview/tachikoma/b/o;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/c/e/c;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/kwad/components/ad/c/e/a;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/core/webview/jshandler/az;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/e/a;->do:Lcom/kwad/components/core/webview/jshandler/az;

    return-object p0
.end method

.method private a(Lcom/kwad/sdk/core/webview/b;)Lcom/kwad/components/core/webview/jshandler/z;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 15
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/z;

    new-instance v1, Lcom/kwad/components/ad/c/e/a$2;

    invoke-direct {v1, p0}, Lcom/kwad/components/ad/c/e/a$2;-><init>(Lcom/kwad/components/ad/c/e/a;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/kwad/components/core/webview/jshandler/z;-><init>(Lcom/kwad/sdk/core/webview/b;Lcom/kwad/components/core/e/d/d;Lcom/kwad/sdk/core/webview/d/a/a;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/c/e/a;Z)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/c/e/a;->f(Z)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kf()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 5
    new-instance v0, Lcom/kwad/components/core/widget/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/components/core/widget/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    new-instance p1, Lcom/kwad/components/ad/c/e/a$1;

    invoke-direct {p1, p0}, Lcom/kwad/components/ad/c/e/a$1;-><init>(Lcom/kwad/components/ad/c/e/a;)V

    invoke-virtual {v0, p1}, Lcom/kwad/components/core/widget/a;->setViewCallback(Lcom/kwad/components/core/widget/a$a;)V

    .line 8
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a;->zM()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/c/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/c/e/a;->dn:Z

    return p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/c/e/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/c/e/a;->dn:Z

    return p1
.end method

.method public static synthetic c(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/core/webview/tachikoma/b/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/e/a;->dp:Lcom/kwad/components/core/webview/tachikoma/b/o;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    return-object p0
.end method

.method private f(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/t/a;->bd(Z)Z

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kh()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/components/core/t/a;->wE()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/t/a;->bd(Z)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/components/core/t/a;->wD()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 7
    :cond_3
    iget-boolean p1, p0, Lcom/kwad/components/ad/c/e/a;->cA:Z

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/kwad/components/core/t/a;->bd(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/components/ad/c/e/a;->cA:Z

    .line 9
    :cond_4
    iget-boolean p1, p0, Lcom/kwad/components/ad/c/e/a;->cA:Z

    return p1
.end method

.method public static synthetic g(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/jshandler/ae$a;)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    iget-object v1, v1, Lcom/kwad/components/ad/c/b;->bQ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->px2dip(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Lcom/kwad/components/core/webview/jshandler/ae$a;->width:I

    .line 10
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    iget-object v1, v1, Lcom/kwad/components/ad/c/b;->bQ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->px2dip(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Lcom/kwad/components/core/webview/jshandler/ae$a;->height:I

    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/jshandler/az;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/kwad/components/ad/c/e/c;->a(Lcom/kwad/components/core/webview/jshandler/az;)V

    .line 12
    iput-object p1, p0, Lcom/kwad/components/ad/c/e/a;->do:Lcom/kwad/components/core/webview/jshandler/az;

    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a;->do:Lcom/kwad/components/core/webview/jshandler/az;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/jshandler/az;->yz()V

    .line 5
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a;->do:Lcom/kwad/components/core/webview/jshandler/az;

    invoke-virtual {p1}, Lcom/kwad/components/core/webview/jshandler/az;->yA()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a;->dm:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/kwad/components/ad/c/b;->bY:Z

    .line 8
    iget-object p1, p1, Lcom/kwad/components/ad/c/b;->bR:Lcom/kwad/components/ad/c/b$a;

    invoke-interface {p1}, Lcom/kwad/components/ad/c/b$a;->ad()V

    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/tachikoma/b/o;)V
    .locals 1

    .line 23
    iput-object p1, p0, Lcom/kwad/components/ad/c/e/a;->dp:Lcom/kwad/components/core/webview/tachikoma/b/o;

    .line 24
    new-instance v0, Lcom/kwad/components/ad/c/e/a$3;

    invoke-direct {v0, p0}, Lcom/kwad/components/ad/c/e/a$3;-><init>(Lcom/kwad/components/ad/c/e/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/tachikoma/b/o;->a(Lcom/kwad/components/core/webview/tachikoma/b/o$a;)V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/commercial/model/WebCloseStatus;)V
    .locals 2

    .line 16
    iget-object p1, p0, Lcom/kwad/components/ad/c/e/a;->do:Lcom/kwad/components/core/webview/jshandler/az;

    invoke-virtual {p1}, Lcom/kwad/components/core/webview/jshandler/az;->yA()V

    .line 17
    iget-object p1, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    iget-object p1, p1, Lcom/kwad/components/ad/c/b;->bQ:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    invoke-virtual {p0}, Lcom/kwad/components/ad/c/e/a;->onDestroy()V

    .line 19
    iget-object p1, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    invoke-virtual {p1}, Lcom/kwad/components/ad/c/b;->ac()V

    .line 20
    iget-object p1, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    iget-object p1, p1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 21
    invoke-static {p1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 22
    :goto_0
    invoke-static {p1, v1, v0}, Lcom/kwad/components/ad/c/c/c;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/components/t;Lcom/kwad/sdk/core/webview/b;)V
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/kwad/components/ad/c/e/c;->a(Lcom/kwad/sdk/components/t;Lcom/kwad/sdk/core/webview/b;)V

    .line 14
    invoke-direct {p0, p2}, Lcom/kwad/components/ad/c/e/a;->a(Lcom/kwad/sdk/core/webview/b;)Lcom/kwad/components/core/webview/jshandler/z;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    return-void
.end method

.method public final aE()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/kwad/components/ad/c/b;->bY:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-wide v1, v0, Lcom/kwad/components/ad/c/b;->bU:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    iget-object v1, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 28
    .line 29
    iget-wide v5, v1, Lcom/kwad/components/ad/c/b;->bU:J

    .line 30
    .line 31
    sub-long/2addr v3, v5

    .line 32
    invoke-static {v0, v2, v3, v4}, Lcom/kwad/sdk/commercial/convert/d;->b(IIJ)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 39
    .line 40
    iget-object v3, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iget-object v4, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 47
    .line 48
    iget-wide v4, v4, Lcom/kwad/components/ad/c/b;->bU:J

    .line 49
    .line 50
    sub-long v4, v0, v4

    .line 51
    .line 52
    const/4 v7, 0x2

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v6, 0x2

    .line 55
    invoke-static/range {v3 .. v8}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JIIZ)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 61
    .line 62
    invoke-static {v0, v2, v2}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_2
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yB()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yx()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yy()V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a;->dm:Landroid/widget/FrameLayout;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final ay()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/c/e/c;->ay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getTKContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a;->dm:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTKReaderScene()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "tk_splash"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTkTemplateId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->cQ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdDataV2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdDataV2;->bannerTKInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdBannerTKInfo;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$BaseMatrixTemplate;->templateId:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/c/d/a;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->banner_full_tk_card_view:I

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
    iput-object v0, p0, Lcom/kwad/components/ad/c/e/a;->dm:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/kwad/components/ad/c/e/a;->b(Landroid/view/ViewGroup;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUnbind()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yz()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/c/e/a;->do:Lcom/kwad/components/core/webview/jshandler/az;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yA()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/kwad/components/ad/c/e/c;->onUnbind()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
