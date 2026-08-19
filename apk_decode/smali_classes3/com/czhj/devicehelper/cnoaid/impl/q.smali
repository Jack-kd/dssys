.class public Lcom/czhj/devicehelper/cnoaid/impl/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/devicehelper/cnoaid/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/q;->b:Z

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/q;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/q;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/q;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "qiku.service.action.id"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.qiku.id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/q;->a:Landroid/content/Context;

    new-instance v2, Lcom/czhj/devicehelper/cnoaid/impl/q$1;

    invoke-direct {v2, p0}, Lcom/czhj/devicehelper/cnoaid/impl/q$1;-><init>(Lcom/czhj/devicehelper/cnoaid/impl/q;)V

    invoke-static {v1, v0, p1, v2}, Lcom/czhj/devicehelper/cnoaid/impl/n;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/impl/n$a;)V

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/com/qiku/id/QikuIdmanager;

    invoke-direct {v0}, Lcom/czhj/devicehelper/cnoaid/com/qiku/id/QikuIdmanager;-><init>()V

    invoke-virtual {v0}, Lcom/czhj/devicehelper/cnoaid/com/qiku/id/QikuIdmanager;->getOAID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Lcom/czhj/devicehelper/cnoaid/c;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/f;

    const-string v1, "OAID/AAID acquire failed"

    invoke-direct {v0, v1}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1, v0}, Lcom/czhj/devicehelper/cnoaid/c;->a(Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/q;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.qiku.id"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/q;->b:Z

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/com/qiku/id/QikuIdmanager;

    invoke-direct {v0}, Lcom/czhj/devicehelper/cnoaid/com/qiku/id/QikuIdmanager;-><init>()V

    invoke-virtual {v0}, Lcom/czhj/devicehelper/cnoaid/com/qiku/id/QikuIdmanager;->isSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/czhj/devicehelper/cnoaid/g;->a(Ljava/lang/Object;)V

    return v1
.end method
