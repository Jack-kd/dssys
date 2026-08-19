.class Lcom/sigmob/windad/Splash/WindSplashAD$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/Splash/WindSplashADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Splash/WindSplashAD;-><init>(Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/windad/Splash/WindSplashADListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/Splash/WindSplashAD;


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD$1;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdSkip(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/windad/Splash/WindSplashAD$1;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdClose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->e(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/windad/Splash/WindSplashAD$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSplashAdClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdClick(Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdClose(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->c(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->d(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Splash/f;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/Splash/f;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSplashAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->d(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Splash/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/Splash/e;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD$1;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSplashAdLoadSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdLoadSuccess(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/Splash/WindSplashAD;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->c(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    :cond_1
    return-void
.end method

.method public onSplashAdShow(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdShow(Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdSkip(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->d(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Splash/g;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/Splash/g;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
