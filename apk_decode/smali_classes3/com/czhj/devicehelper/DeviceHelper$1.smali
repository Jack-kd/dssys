.class Lcom/czhj/devicehelper/DeviceHelper$1;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/czhj/devicehelper/msaoaId/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/czhj/devicehelper/msaoaId/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/devicehelper/DeviceHelper$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/czhj/devicehelper/DeviceHelper$1;->b:Lcom/czhj/devicehelper/msaoaId/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "private  getOAID"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/czhj/devicehelper/DeviceHelper$1;->a:Landroid/content/Context;

    new-instance v1, Lcom/czhj/devicehelper/DeviceHelper$1$1;

    invoke-direct {v1, p0}, Lcom/czhj/devicehelper/DeviceHelper$1$1;-><init>(Lcom/czhj/devicehelper/DeviceHelper$1;)V

    invoke-static {v0, v1}, Lcom/czhj/devicehelper/msaoaId/a;->a(Landroid/content/Context;Lcom/czhj/devicehelper/msaoaId/a$a;)V

    return-void
.end method
