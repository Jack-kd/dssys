.class Lcom/czhj/devicehelper/honor/identifier/b$b;
.super Lcom/czhj/devicehelper/honor/oaid/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/devicehelper/honor/identifier/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/czhj/devicehelper/honor/identifier/b;


# direct methods
.method public constructor <init>(Lcom/czhj/devicehelper/honor/identifier/b;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/devicehelper/honor/identifier/b$b;->a:Lcom/czhj/devicehelper/honor/identifier/b;

    invoke-direct {p0}, Lcom/czhj/devicehelper/honor/oaid/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJZFDLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAIDCallBack handleResult retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvertisingIdPlatform"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/czhj/devicehelper/honor/identifier/b$b;->a:Lcom/czhj/devicehelper/honor/identifier/b;

    iget-object p1, p1, Lcom/czhj/devicehelper/honor/identifier/b;->a:Lcom/czhj/devicehelper/honor/identifier/a$a;

    if-eqz p1, :cond_2

    const-string p1, "oa_id_limit_state"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/czhj/devicehelper/honor/identifier/b$b;->a:Lcom/czhj/devicehelper/honor/identifier/b;

    iget-object p2, p2, Lcom/czhj/devicehelper/honor/identifier/b;->a:Lcom/czhj/devicehelper/honor/identifier/a$a;

    iput-boolean p1, p2, Lcom/czhj/devicehelper/honor/identifier/a$a;->b:Z

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OAIDLimitCallback handleResult error retCode= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/czhj/devicehelper/honor/identifier/b$b;->a:Lcom/czhj/devicehelper/honor/identifier/b;

    iget-object p1, p1, Lcom/czhj/devicehelper/honor/identifier/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
