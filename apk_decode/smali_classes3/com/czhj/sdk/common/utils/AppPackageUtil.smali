.class public Lcom/czhj/sdk/common/utils/AppPackageUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/pm/PackageInfo;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->d:Ljava/lang/String;

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    sget-object p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static getAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->a:Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->b:Ljava/lang/String;

    :cond_1
    sget-object p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, "Failed to retrieve PackageInfo#versionName."

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHWID(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->e:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "com.huawei.hwid"

    invoke-static {p0, v0}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    sput p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->e:I

    :catchall_0
    :goto_0
    sget p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->e:I

    return p0
.end method

.method public static getOsMarket(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->f:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->getRomInfo()Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/czhj/sdk/common/utils/RomUtils$RomInfo;->getOsMarket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v0}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    sput p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->f:I

    :cond_1
    sget p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->f:I

    return p0
.end method

.method public static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    sget-object v0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->c:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    sput-object p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->c:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    :cond_2
    :goto_1
    sget-object p0, Lcom/czhj/sdk/common/utils/AppPackageUtil;->c:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public static getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
