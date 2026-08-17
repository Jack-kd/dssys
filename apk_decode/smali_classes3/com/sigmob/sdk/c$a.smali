.class public Lcom/sigmob/sdk/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/videoAd/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/c;

.field private b:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/c;Lcom/sigmob/sdk/videoAd/k;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/c$a;->b:Lcom/sigmob/sdk/videoAd/k;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/c$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/c$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/videoAd/k;->onAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/videoAd/k;->onAdPreLoadSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/c$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/c$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/videoAd/k;->onAdPreLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/videoAd/k;->onAdLoadSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/c$a;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/c$a;->b(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/c$a;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/c$a;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/c$a;->b:Lcom/sigmob/sdk/videoAd/k;

    return-void
.end method

.method public onAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoadError: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    invoke-static {v1}, Lcom/sigmob/sdk/c;->e(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    invoke-static {v0}, Lcom/sigmob/sdk/c;->f(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;

    move-result-object v0

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/c;->c(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/sdk/u;-><init>(Lcom/sigmob/sdk/c$a;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdLoadSuccess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoadSuccess: placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    invoke-static {v1}, Lcom/sigmob/sdk/c;->a(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    invoke-static {v0}, Lcom/sigmob/sdk/c;->b(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;

    move-result-object v0

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/c;->a(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/r;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/r;-><init>(Lcom/sigmob/sdk/c$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdPreLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdPreLoadFail: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    invoke-static {v1}, Lcom/sigmob/sdk/c;->c(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    invoke-static {v0}, Lcom/sigmob/sdk/c;->d(Lcom/sigmob/sdk/c;)Lcom/czhj/sdk/common/models/AdStatus;

    move-result-object v0

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/c;->b(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/sdk/s;-><init>(Lcom/sigmob/sdk/c$a;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdPreLoadSuccess: placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c$a;->a:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/t;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/t;-><init>(Lcom/sigmob/sdk/c$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
