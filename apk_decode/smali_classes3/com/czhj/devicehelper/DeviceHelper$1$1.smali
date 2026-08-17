.class Lcom/czhj/devicehelper/DeviceHelper$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/devicehelper/msaoaId/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/devicehelper/DeviceHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/czhj/devicehelper/DeviceHelper$1;


# direct methods
.method public constructor <init>(Lcom/czhj/devicehelper/DeviceHelper$1;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/devicehelper/DeviceHelper$1$1;->a:Lcom/czhj/devicehelper/DeviceHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/czhj/devicehelper/DeviceHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/czhj/devicehelper/DeviceHelper$1$1;->a:Lcom/czhj/devicehelper/DeviceHelper$1;

    iget-object v0, v0, Lcom/czhj/devicehelper/DeviceHelper$1;->b:Lcom/czhj/devicehelper/msaoaId/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/czhj/devicehelper/msaoaId/a$a;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/czhj/devicehelper/DeviceHelper;->a(Z)Z

    invoke-static {}, Lcom/czhj/devicehelper/DeviceHelper;->a()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/czhj/devicehelper/DeviceHelper;->a()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/czhj/devicehelper/DeviceHelper;->a(Landroid/os/Handler;)Landroid/os/Handler;

    :cond_1
    return-void
.end method
