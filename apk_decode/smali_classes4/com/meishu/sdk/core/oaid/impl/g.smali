.class public Lcom/meishu/sdk/core/oaid/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/oaid/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/oaid/impl/g;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/core/oaid/a;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meishu/sdk/core/oaid/impl/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lcom/meishu/sdk/core/oaid/OAIDException;

    const-string v1, "Huawei Advertising ID not available"

    invoke-direct {v0, v1}, Lcom/meishu/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/meishu/sdk/core/utils/l;

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/l;->a(Ljava/lang/Exception;)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/core/oaid/impl/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/core/oaid/impl/g;->a:Landroid/content/Context;

    new-instance v2, Lcom/meishu/sdk/core/oaid/impl/g$a;

    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/oaid/impl/g$a;-><init>(Lcom/meishu/sdk/core/oaid/impl/g;)V

    invoke-static {v1, v0, p1, v2}, Lcom/meishu/sdk/core/oaid/impl/m;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/meishu/sdk/core/oaid/a;Lcom/meishu/sdk/core/oaid/impl/m$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 6

    .line 1
    const-string v0, "com.huawei.hwid.tv"

    const-string v1, "com.huawei.hwid"

    iget-object v2, p0, Lcom/meishu/sdk/core/oaid/impl/g;->a:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 4
    iput-object v1, p0, Lcom/meishu/sdk/core/oaid/impl/g;->b:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/g;->b:Ljava/lang/String;

    :goto_0
    return v5

    .line 7
    :cond_2
    const-string v0, "com.huawei.hms"

    iput-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/g;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    return v5

    :catchall_0
    :cond_3
    return v3
.end method
