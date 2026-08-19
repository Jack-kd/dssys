.class Lcom/ubix/ssp/ad/d/k$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/d/k$b;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/k$b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/d/k$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/k$b$a;->a:Lcom/ubix/ssp/ad/d/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/k$b$a;->a:Lcom/ubix/ssp/ad/d/k$b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/d/k$b;->a(Lcom/ubix/ssp/ad/d/k$b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ubix_sp_store"

    const-string v3, "reqInfo"

    invoke-static {v1, v2, v3, v0}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    return-void
.end method
