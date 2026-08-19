.class Lcom/sigmob/sdk/nativead/y$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/nativead/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/y;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/y;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/y$1;->a:Lcom/sigmob/sdk/nativead/y;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x5001

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/y$1;->a:Lcom/sigmob/sdk/nativead/y;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/y;->a(Lcom/sigmob/sdk/nativead/y;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/y$1;->a:Lcom/sigmob/sdk/nativead/y;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/y;->b(Lcom/sigmob/sdk/nativead/y;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/y$1;->a:Lcom/sigmob/sdk/nativead/y;

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Lcom/sigmob/sdk/nativead/y;->a(Lcom/sigmob/sdk/nativead/y;Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
