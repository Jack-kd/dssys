.class Lcom/czhj/devicehelper/DeviceHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/devicehelper/DeviceHelper;->getOAID(Landroid/content/Context;Lcom/czhj/devicehelper/msaoaId/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/czhj/devicehelper/msaoaId/a$a;


# direct methods
.method public constructor <init>(Lcom/czhj/devicehelper/msaoaId/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/devicehelper/DeviceHelper$2;->a:Lcom/czhj/devicehelper/msaoaId/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/czhj/devicehelper/DeviceHelper;->b()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/czhj/devicehelper/DeviceHelper;->a(Z)Z

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/czhj/devicehelper/DeviceHelper;->a(I)I

    iget-object v0, p0, Lcom/czhj/devicehelper/DeviceHelper$2;->a:Lcom/czhj/devicehelper/msaoaId/a$a;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/czhj/devicehelper/msaoaId/a$a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/czhj/devicehelper/DeviceHelper;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/czhj/devicehelper/DeviceHelper;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/czhj/devicehelper/DeviceHelper;->a(Landroid/os/Handler;)Landroid/os/Handler;

    :cond_1
    return-void
.end method
