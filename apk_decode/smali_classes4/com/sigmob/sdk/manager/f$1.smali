.class Lcom/sigmob/sdk/manager/f$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/manager/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/manager/f;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/manager/f;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/manager/f$1;->a:Lcom/sigmob/sdk/manager/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2001

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f$1;->a:Lcom/sigmob/sdk/manager/f;

    iget-object v1, p1, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lcom/sigmob/sdk/manager/f;->h:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f$1;->a:Lcom/sigmob/sdk/manager/f;

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    :cond_0
    return-void
.end method
