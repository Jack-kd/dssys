.class Lcom/sigmob/sdk/nativead/p$1;
.super Lcom/sigmob/sdk/nativead/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/nativead/p;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/p;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/p;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/p$1;->a:Lcom/sigmob/sdk/nativead/p;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/nativead/ad;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const v0, 0x15444

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/p$1;->a:Lcom/sigmob/sdk/nativead/p;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/p;->a(Lcom/sigmob/sdk/nativead/p;)Lcom/sigmob/sdk/nativead/a;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/p$1;->a:Lcom/sigmob/sdk/nativead/p;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/p;->b(Lcom/sigmob/sdk/nativead/p;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/ad;->a()V

    :cond_0
    return-void
.end method
