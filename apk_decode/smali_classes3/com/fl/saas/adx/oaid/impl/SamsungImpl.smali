.class Lcom/fl/saas/adx/oaid/impl/SamsungImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/oaid/IOAID;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/oaid/impl/SamsungImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGet(Lcom/fl/saas/adx/oaid/IGetter;)V
    .locals 3

    iget-object v0, p0, Lcom/fl/saas/adx/oaid/impl/SamsungImpl;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.deviceidservice"

    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fl/saas/adx/oaid/impl/SamsungImpl;->context:Landroid/content/Context;

    new-instance v2, Lcom/fl/saas/adx/oaid/impl/SamsungImpl$1;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/oaid/impl/SamsungImpl$1;-><init>(Lcom/fl/saas/adx/oaid/impl/SamsungImpl;)V

    invoke-static {v1, v0, p1, v2}, Lcom/fl/saas/adx/oaid/impl/OAIDService;->bind(Landroid/content/Context;Landroid/content/Intent;Lcom/fl/saas/adx/oaid/IGetter;Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public supported()Z
    .locals 3

    iget-object v0, p0, Lcom/fl/saas/adx/oaid/impl/SamsungImpl;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.android.deviceidservice"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    return v1
.end method
