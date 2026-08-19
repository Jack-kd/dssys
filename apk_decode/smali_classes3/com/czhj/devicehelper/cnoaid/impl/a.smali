.class Lcom/czhj/devicehelper/cnoaid/impl/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/devicehelper/cnoaid/d;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.msa.action.ACCESS_DID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.msa.SupplementaryDID"

    const-string v3, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/czhj/devicehelper/cnoaid/impl/a$1;

    invoke-direct {v2, p0}, Lcom/czhj/devicehelper/cnoaid/impl/a$1;-><init>(Lcom/czhj/devicehelper/cnoaid/impl/a;)V

    invoke-static {v1, v0, p1, v2}, Lcom/czhj/devicehelper/cnoaid/impl/n;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/czhj/devicehelper/cnoaid/c;Lcom/czhj/devicehelper/cnoaid/impl/n$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.asus.msa.SupplementaryDID"

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
