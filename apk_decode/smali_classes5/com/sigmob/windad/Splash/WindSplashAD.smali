.class public final Lcom/sigmob/windad/Splash/WindSplashAD;
.super Lcom/sigmob/sdk/base/m;

# interfaces
.implements Lcom/czhj/sdk/common/utils/AdLifecycleManager$LifecycleListener;


# instance fields
.field private a:Lcom/sigmob/windad/Splash/WindSplashADListener;

.field private b:Landroid/view/ViewGroup;

.field private final c:I

.field private d:Landroid/widget/RelativeLayout;

.field private final e:Z

.field private f:Z

.field private g:Z

.field private final m:Lcom/sigmob/sdk/splash/f;

.field private final n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/windad/Splash/WindSplashADListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/base/m;-><init>(Lcom/sigmob/windad/WindAdRequest;Z)V

    iput-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashADListener;

    new-instance p2, Lcom/sigmob/sdk/splash/f;

    new-instance v0, Lcom/sigmob/windad/Splash/WindSplashAD$1;

    invoke-direct {v0, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$1;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    invoke-direct {p2, p1, v0}, Lcom/sigmob/sdk/splash/f;-><init>(Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/windad/Splash/WindSplashADListener;)V

    iput-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getFetchDelay()I

    move-result p2

    iput p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:I

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->isDisableAutoHideAd()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashADListener;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSplashError: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/Splash/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/Splash/d;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->l()V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method private synthetic b(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashADListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    .line 4
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/manager/b;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/Splash/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/Splash/c;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/windad/Splash/WindSplashAD;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Z

    return p0
.end method

.method public static synthetic c(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method public static synthetic c(Lcom/sigmob/windad/Splash/WindSplashAD;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->i()V

    return-void
.end method

.method private synthetic c(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashADListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic d(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashADListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:Z

    invoke-interface {v0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/windad/Splash/WindSplashAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->l()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_NOT_READY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a()V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/Splash/b;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/Splash/b;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-void
.end method

.method public static synthetic i(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->c(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/sigmob/windad/Splash/WindSplashAD;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->m()V

    return-void
.end method

.method private j()Z
    .locals 10

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->getBidFloor()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/splash/f;->c()Z

    move-result v1

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v1, v2, :cond_0

    const-string v0, "load: ready"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return v9

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->g()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {}, Lcom/czhj/sdk/common/utils/AdLifecycleManager;->getInstance()Lcom/czhj/sdk/common/utils/AdLifecycleManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/czhj/sdk/common/utils/AdLifecycleManager;->addLifecycleListener(Lcom/czhj/sdk/common/utils/AdLifecycleManager$LifecycleListener;)V

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {}, Lcom/sigmob/sdk/manager/b;->j()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v8}, Lcom/sigmob/sdk/base/m;->a(Lcom/sigmob/sdk/base/common/z;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->getBid_token()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lcom/sigmob/sdk/base/j;->c:Lcom/sigmob/sdk/base/j;

    invoke-virtual/range {v1 .. v8}, Lcom/sigmob/sdk/splash/f;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/j;Ljava/lang/String;)V

    return v9
.end method

.method private k()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x802

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static synthetic k(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method private l()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    :cond_1
    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method public static synthetic l(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->d(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic m()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/f;->a(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/Splash/a;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/Splash/a;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/splash/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    .line 2
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/f;->s()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/sigmob/sdk/manager/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    return-object v0
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "splash ad %s is Destroy"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/f;->n()V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashADListener;

    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Landroid/view/ViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:Z

    if-nez v2, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/f;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEcpm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/f;->q()Ljava/lang/String;

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
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Z

    invoke-super {p0}, Lcom/sigmob/sdk/base/m;->loadAd()Z

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->j()Z

    move-result v0

    return v0
.end method

.method public loadAd(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/m;->loadAd(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->j()Z

    move-result p1

    return p1
.end method

.method public loadAndShow(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_ADCONTAINER_IS_NULL:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/sigmob/sdk/base/m;->loadAd()Z

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Z

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->j()Z

    return-void
.end method

.method public loadAndShow(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    .line 2
    if-nez p2, :cond_0

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_ADCONTAINER_IS_NULL:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/m;->loadAd(Ljava/lang/String;)Z

    iput-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Z

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->j()Z

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/splash/f;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/splash/f;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_EXPIRED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_ADCONTAINER_IS_NULL:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->i()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {p1, p1}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/manager/b;)V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_NOT_READY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {p1, p1}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/manager/b;)V

    :cond_5
    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_NOT_READY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method
