.class Lcom/czhj/devicehelper/cnoaid/impl/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/devicehelper/cnoaid/d;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/k;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bun.msa.action.start.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.mdid.msa"

    const-string v2, "com.mdid.msa.service.MsaKlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.bun.msa.param.pkgname"

    iget-object v2, p0, Lcom/czhj/devicehelper/cnoaid/impl/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/k;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/media/session/a;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-static {v0}, Lcom/czhj/devicehelper/cnoaid/g;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/k;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/czhj/devicehelper/cnoaid/impl/k;->b()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bun.msa.action.bindto.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.mdid.msa"

    const-string v2, "com.mdid.msa.service.MsaIdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.bun.msa.param.pkgname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/k;->a:Landroid/content/Context;

    new-instance v2, Lcom/czhj/devicehelper/cnoaid/impl/k$1;

    invoke-direct {v2, p0}, Lcom/czhj/devicehelper/cnoaid/impl/k$1;-><init>(Lcom/czhj/devicehelper/cnoaid/impl/k;)V

    invoke-static {v1, v0, p1, v2}, Lcom/czhj/devicehelper/cnoaid/impl/n;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/impl/n$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/k;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.mdid.msa"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/czhj/devicehelper/cnoaid/g;->a(Ljava/lang/Object;)V

    return v1
.end method
