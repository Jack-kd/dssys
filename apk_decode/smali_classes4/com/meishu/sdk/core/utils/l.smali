.class public Lcom/meishu/sdk/core/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/oaid/a;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/l;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .line 9
    const-string v0, "DeviceUtil"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "honor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Lcom/meishu/sdk/core/oaid/honor/a;

    invoke-direct {p1}, Lcom/meishu/sdk/core/oaid/honor/a;-><init>()V

    .line 12
    new-instance v0, Lcom/meishu/sdk/core/utils/l$a;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/utils/l$a;-><init>(Lcom/meishu/sdk/core/utils/l;)V

    .line 13
    iput-object v0, p1, Lcom/meishu/sdk/core/oaid/honor/a;->a:Lcom/meishu/sdk/core/oaid/honor/a$c;

    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/l;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/oaid/honor/a;->a(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/l;->a:Landroid/content/Context;

    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    :try_start_1
    new-instance v1, Lcom/meishu/sdk/core/utils/MiitHelper;

    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/MiitHelper;-><init>()V

    new-instance v2, Lcom/meishu/sdk/core/utils/k;

    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/k;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcom/meishu/sdk/core/utils/MiitHelper;->prepare(Landroid/content/Context;Lcom/meishu/sdk/core/utils/MiitHelper$a;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_2
    sget v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->OAID_INIT_ERROR:I

    invoke-static {v1}, Lcom/meishu/sdk/core/AdSdk;->setOaid_errno(I)V

    .line 19
    const-string v1, "oaid sdk init error"

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 21
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "oaid_e"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sput-object p1, Lcom/meishu/sdk/core/utils/j;->a:Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/g1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oaid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
