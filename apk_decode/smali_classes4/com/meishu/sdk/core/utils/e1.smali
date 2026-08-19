.class public Lcom/meishu/sdk/core/utils/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/meishu/sdk/core/ad/BaseAdSlot;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 17
    sget-object v0, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x100

    .line 21
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 22
    :cond_1
    sget-object p0, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 23
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 26
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    return v1
.end method

.method public static a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/BaseAdSlot;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/e1;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReward_tmp_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getRewardTmpId()I

    move-result v0

    if-lez v0, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReward_tmp_type()I

    move-result v0

    if-lez v0, :cond_6

    .line 5
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReward_tmp_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/webview/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 6
    :cond_1
    sput-object p1, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 7
    :try_start_0
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 8
    iget-object p1, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getIcon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_6

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/e1;->c(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    return v0

    .line 11
    :cond_3
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/e1;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 12
    sget-object p0, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    .line 14
    :cond_4
    :try_start_1
    sget-object p0, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result p0

    if-ne p0, v0, :cond_5

    .line 15
    sget-object p0, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDirect_market()I

    move-result p0

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_5

    return v0

    .line 16
    :catch_0
    :cond_5
    :try_start_2
    sget-object p0, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result p0

    if-eq p0, v0, :cond_6

    sget-object p0, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p0, :cond_6

    return v0

    :catch_1
    :cond_6
    return v1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    move v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-static {p0}, Lcom/meishu/sdk/platform/ms/splash/k;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    return v0

    .line 34
    :cond_1
    return v3

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWx_username()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/meishu/sdk/core/utils/e1;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWx_appid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "com.tencent.mm"

    .line 31
    .line 32
    const/16 v2, 0x100

    .line 33
    .line 34
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :catch_0
    :cond_0
    return v1
.end method
