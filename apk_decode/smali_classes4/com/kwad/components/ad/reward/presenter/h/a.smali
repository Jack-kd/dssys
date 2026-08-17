.class public final Lcom/kwad/components/ad/reward/presenter/h/a;
.super Lcom/kwad/components/ad/reward/presenter/f/g;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/webview/tachikoma/j;


# instance fields
.field private AI:Lcom/kwad/components/ad/reward/k/a/d;

.field private Bu:Z

.field private Bv:Lcom/kwad/components/core/webview/tachikoma/f;

.field private Bw:J

.field private final kf:Lcom/kwad/components/core/video/m;

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private final wH:Lcom/kwad/components/core/n/a/a;

.field private yc:Z

.field private yd:Z

.field private ye:Lcom/kwad/components/ad/reward/g$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/f/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/h/a$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/h/a$1;-><init>(Lcom/kwad/components/ad/reward/presenter/h/a;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->ye:Lcom/kwad/components/ad/reward/g$b;

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/h/a$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/h/a$2;-><init>(Lcom/kwad/components/ad/reward/presenter/h/a;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->wH:Lcom/kwad/components/core/n/a/a;

    .line 17
    .line 18
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/h/a$3;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/h/a$3;-><init>(Lcom/kwad/components/ad/reward/presenter/h/a;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->kf:Lcom/kwad/components/core/video/m;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/widget/KSFrameLayout;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/f/g;->Ba:Lcom/kwad/sdk/widget/KSFrameLayout;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/h/a;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->Bu:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/widget/KSFrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/f/g;->Ba:Lcom/kwad/sdk/widget/KSFrameLayout;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/reward/presenter/h/a;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->yc:Z

    return p1
.end method

.method public static synthetic c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->Bv:Lcom/kwad/components/core/webview/tachikoma/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/reward/presenter/h/a;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/reward/presenter/h/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->Bw:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/reward/presenter/h/a;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->yc:Z

    return p0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/reward/presenter/h/a;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private iT()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/i;->z(Lcom/kwad/components/ad/reward/g;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onPlayCompleted: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "jky"

    .line 22
    .line 23
    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/h/a$6;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/h/a$6;-><init>(Lcom/kwad/components/ad/reward/presenter/h/a;)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v1, 0xc8

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/by;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sy:Lcom/kwad/components/ad/reward/e/b;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/kwad/components/ad/reward/e/b;->onRewardVerify()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/m/e;->pause()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/g;->gW()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static synthetic j(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private kA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/f/g;->Ba:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/m/e;->pause()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->yd:Z

    .line 18
    .line 19
    return-void
.end method

.method private kB()Lcom/kwad/components/core/webview/tachikoma/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/h/a$5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/h/a$5;-><init>(Lcom/kwad/components/ad/reward/presenter/h/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic l(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/k/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->AI:Lcom/kwad/components/ad/reward/k/a/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/kwad/components/ad/reward/presenter/h/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/h/a;->kA()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/kwad/components/ad/reward/presenter/h/a;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/jshandler/ae$a;)V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->bB(Landroid/content/Context;)F

    move-result v0

    .line 28
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/utils/bt;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lcom/kwad/components/core/webview/jshandler/ae$a;->width:I

    .line 29
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/utils/bt;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, p1, Lcom/kwad/components/core/webview/jshandler/ae$a;->height:I

    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/jshandler/az;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V
    .locals 1

    .line 8
    const-string p1, "TkRewardVideoTaskPresenter"

    const-string v0, "onTkLoadFailed: "

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/f/g;->Ba:Lcom/kwad/sdk/widget/KSFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

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
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/kwad/sdk/commercial/model/WebCloseStatus;->interactSuccess:Z

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, v0, Lcom/kwad/components/ad/reward/g;->sR:Z

    .line 31
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/components/core/r/a;->wn()I

    move-result p1

    .line 32
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object v3, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    if-eqz v3, :cond_2

    .line 33
    iget-boolean v0, v0, Lcom/kwad/components/ad/reward/g;->sR:Z

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v3}, Lcom/kwad/components/ad/reward/m/e;->lp()V

    if-ne p1, v2, :cond_1

    .line 35
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/h/a;->iT()V

    move v1, v2

    .line 36
    :cond_1
    iget-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->yd:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->Bu:Z

    if-nez p1, :cond_2

    if-nez v1, :cond_2

    .line 37
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object p1, p1, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/m/e;->resume()V

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/f/g;->Ba:Lcom/kwad/sdk/widget/KSFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/components/t;Lcom/kwad/sdk/core/webview/b;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/h/a;->kB()Lcom/kwad/components/core/webview/tachikoma/f;

    move-result-object p2

    iput-object p2, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->Bv:Lcom/kwad/components/core/webview/tachikoma/f;

    .line 11
    invoke-interface {p1, p2}, Lcom/kwad/sdk/components/t;->c(Lcom/kwad/sdk/core/webview/c/a;)V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/webview/d/b/a;)V
    .locals 2
    .param p1    # Lcom/kwad/sdk/core/webview/d/b/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sy:Lcom/kwad/components/ad/reward/e/b;

    invoke-interface {v0}, Lcom/kwad/components/ad/reward/e/b;->dc()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdClicked convertPageType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/kwad/sdk/core/webview/d/b/a;->bdg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jky"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aU(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    move-result-object v0

    iget v1, p1, Lcom/kwad/sdk/core/webview/d/b/a;->bdg:I

    invoke-virtual {v0, v1}, Lcom/kwad/components/core/r/a;->bU(I)V

    .line 16
    iget p1, p1, Lcom/kwad/sdk/core/webview/d/b/a;->bdg:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 17
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/r/a;->bc(Z)V

    .line 18
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/r/a;->bV(I)V

    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 21
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/components/core/r/a;->wr()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 22
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    move-result-object p1

    const/4 v0, 0x3

    .line 23
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/r/a;->bV(I)V

    return-void

    .line 24
    :cond_1
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/r/a;->bV(I)V

    return-void

    .line 26
    :cond_2
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/r/a;->bc(Z)V

    :cond_3
    return-void
.end method

.method public final aF()V
    .locals 0

    return-void
.end method

.method public final ay()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/reward/presenter/f/d;->ay()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/sdk/utils/as;->VM()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->Bu:Z

    .line 16
    .line 17
    const-string v0, "TkRewardVideoTaskPresenter"

    .line 18
    .line 19
    const-string v1, "onBind: "

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->AI:Lcom/kwad/components/ad/reward/k/a/d;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    new-instance v1, Lcom/kwad/components/ad/reward/k/a/d;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    new-instance v6, Lcom/kwad/components/ad/reward/presenter/h/a$4;

    .line 37
    .line 38
    invoke-direct {v6, p0}, Lcom/kwad/components/ad/reward/presenter/h/a$4;-><init>(Lcom/kwad/components/ad/reward/presenter/h/a;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v3, -0x1

    .line 42
    .line 43
    invoke-direct/range {v1 .. v6}, Lcom/kwad/components/ad/reward/k/a/d;-><init>(Lcom/kwad/components/ad/reward/g;JLandroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->AI:Lcom/kwad/components/ad/reward/k/a/d;

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aR(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-long v0, v0

    .line 63
    const-wide/16 v2, 0x3e8

    .line 64
    .line 65
    mul-long/2addr v0, v2

    .line 66
    iput-wide v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->Bw:J

    .line 67
    .line 68
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->kf:Lcom/kwad/components/core/video/m;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/m/e;->a(Lcom/kwad/components/core/video/m;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->ye:Lcom/kwad/components/ad/reward/g$b;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/g$b;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/kwad/components/core/n/a;->abk:Ljava/util/List;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->wH:Lcom/kwad/components/core/n/a/a;

    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getTKReaderScene()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "tk_reward_task_card"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTkTemplateId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->el(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getTouchCoordsView()Lcom/kwad/sdk/widget/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 4
    .line 5
    return-object v0
.end method

.method public final jj()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$id;->ksad_js_task:I

    .line 2
    .line 3
    return v0
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/reward/presenter/f/d;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->kf:Lcom/kwad/components/core/video/m;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/m/e;->b(Lcom/kwad/components/core/video/m;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->ye:Lcom/kwad/components/ad/reward/g$b;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->b(Lcom/kwad/components/ad/reward/g$b;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/kwad/components/core/n/a;->abk:Ljava/util/List;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->wH:Lcom/kwad/components/core/n/a/a;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->AI:Lcom/kwad/components/ad/reward/k/a/d;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/k/a/d;->kV()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->AI:Lcom/kwad/components/ad/reward/k/a/d;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/f/g;->Ba:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/kwad/components/core/r/a;->clear()V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->yc:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->yd:Z

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a;->Bu:Z

    .line 61
    .line 62
    return-void
.end method
