.class Lcom/sigmob/sdk/splash/f$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/splash/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/f;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/splash/f;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x20001

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/sdk/splash/f;)Lcom/czhj/sdk/common/models/AdStatus;

    move-result-object p1

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/f;->b(Lcom/sigmob/sdk/splash/f;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/f;->c(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/sdk/splash/f;ILjava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/sdk/splash/f;Lcom/sigmob/windad/WindAdError;Z)V

    :cond_0
    return-void
.end method
