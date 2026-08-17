.class Lcom/ubix/ssp/ad/e/a0/c0/h/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/c0/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/a0/c0/c;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pps_track_limit"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; and derestrict="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/c0/c;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "00000000-0000-0000-0000-000000000000"

    const-string v2, "use default oaid"

    const-string v3, "HW_OAID"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/c0/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pps_oaid"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "get huawei oaid2"

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/c;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/c0/c;->a()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_5
    const-string v1, "get huawei oaid1"

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_3
    invoke-interface {p1, v1}, Lcom/ubix/ssp/ad/e/a0/c0/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_4
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/e;

    const-string v1, "Huawei Advertising ID not available"

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/c;->a(Ljava/lang/Exception;)V

    return-void

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->a:Landroid/content/Context;

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/c0/h/g$a;

    invoke-direct {v2, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/g$a;-><init>(Lcom/ubix/ssp/ad/e/a0/c0/h/g;)V

    invoke-static {v1, v0, p1, v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/m;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/h/m$a;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public a()Z
    .locals 5

    .line 2
    const-string v0, "com.huawei.hwid.tv"

    const-string v1, "com.huawei.hwid"

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->a:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->b:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string v0, "com.huawei.hms"

    :try_start_1
    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_3

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    return v3

    :goto_1
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V

    return v3
.end method
