.class public Lcom/meishu/sdk/core/utils/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/p0$a;,
        Lcom/meishu/sdk/core/utils/p0$b;
    }
.end annotation


# instance fields
.field public a:Lcom/meishu/sdk/core/utils/p0$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 25
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_3

    .line 26
    :try_start_1
    invoke-static {p2}, Lcom/meishu/sdk/core/utils/g1;->a(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_1

    .line 27
    array-length v2, p2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    invoke-static {}, Lcom/meishu/sdk/core/MSAdConfig;->initUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 30
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-object v2, v0

    .line 31
    :goto_0
    :try_start_3
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 32
    invoke-static {p1, p0}, Lcom/meishu/sdk/core/utils/v1;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 33
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 34
    invoke-static {p3, p2}, Lcom/meishu/sdk/core/utils/p0;->a([Ljava/lang/String;I)V

    return-object p0

    .line 35
    :cond_0
    invoke-static {p3, v1}, Lcom/meishu/sdk/core/utils/p0;->a([Ljava/lang/String;I)V

    .line 36
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p0;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x2

    .line 37
    invoke-static {p3, p2}, Lcom/meishu/sdk/core/utils/p0;->a([Ljava/lang/String;I)V

    .line 38
    invoke-static {p1, p0}, Lcom/meishu/sdk/core/utils/v1;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 39
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 40
    :cond_2
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p0;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    return-object p0

    .line 41
    :catchall_0
    :try_start_4
    invoke-static {p3, v1}, Lcom/meishu/sdk/core/utils/p0;->a([Ljava/lang/String;I)V

    .line 42
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p0;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x4

    .line 43
    invoke-static {p3, p0}, Lcom/meishu/sdk/core/utils/p0;->a([Ljava/lang/String;I)V

    .line 44
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p0;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p0

    .line 45
    :goto_2
    invoke-static {p4, p1, p0}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    :try_start_5
    invoke-static {p3, v1}, Lcom/meishu/sdk/core/utils/p0;->a([Ljava/lang/String;I)V

    .line 47
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p0;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object p0

    :catchall_2
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 53
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    const/high16 v0, 0x10000000

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2

    if-eqz p6, :cond_0

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->startOpenDeepLinkActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance p6, Lcom/meishu/sdk/core/utils/m0;

    const-wide/16 v0, -0x1

    .line 7
    invoke-direct {p6, v0, v1}, Lcom/meishu/sdk/core/utils/m0;-><init>(J)V

    .line 8
    invoke-static {p6}, Lcom/meishu/sdk/core/service/d;->a(Lcom/meishu/sdk/core/service/e;)V

    const/4 p6, 0x0

    .line 9
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-static {p4, p1}, Lcom/meishu/sdk/core/utils/w1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 11
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p4, p1

    .line 12
    :cond_1
    invoke-static {p4, p6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p4

    .line 13
    :try_start_1
    invoke-static {p5, p1, p4}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_3

    .line 15
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 p2, 0x1

    .line 16
    invoke-static {p3, p2}, Lcom/meishu/sdk/core/utils/p0;->a([Ljava/lang/String;I)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {p0, p1, p2, p3, p5}, Lcom/meishu/sdk/core/utils/p0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    .line 18
    :goto_1
    sget-object p2, Lcom/meishu/sdk/core/utils/r0;->f:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 19
    invoke-static {p1, p4}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 20
    :cond_4
    invoke-virtual {p0, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 21
    :goto_2
    const-string p2, "ClickHandler"

    const-string p3, "jumpDeepLink2 error"

    invoke-static {p2, p3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p5, p1, p0}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    invoke-static {p6}, Lcom/meishu/sdk/core/utils/p0;->a(Z)V

    :goto_3
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/utils/p0$b;->a:Lcom/meishu/sdk/core/utils/p0;

    iget-object v1, v0, Lcom/meishu/sdk/core/utils/p0;->a:Lcom/meishu/sdk/core/utils/p0$a;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, p0}, Lcom/meishu/sdk/core/utils/p0$a;->a(Z)V

    const/4 p0, 0x0

    .line 3
    iput-object p0, v0, Lcom/meishu/sdk/core/utils/p0;->a:Lcom/meishu/sdk/core/utils/p0$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a([Ljava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 50
    array-length v0, p0

    if-lez v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
