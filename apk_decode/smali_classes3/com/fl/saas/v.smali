.class public Lcom/fl/saas/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/fl/saas/v;


# instance fields
.field private a:Lcom/fl/saas/adx/base/download/DownloadTipDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 7

    const/4 v0, 0x1

    .line 3
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    const-string v3, "m.taobao.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x30008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_0
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    iget-object v2, p2, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->deviceCanHandleIntent(Landroid/content/Intent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "1"

    if-eqz v2, :cond_3

    :try_start_1
    iget v2, p2, Lcom/fl/saas/j;->l0:I

    if-ne v2, v0, :cond_1

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v2

    iget-object v4, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    invoke-virtual {v2, v4, p2}, Lcom/fl/saas/x;->a(Ljava/lang/String;Lcom/fl/saas/j;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/fl/saas/J;->b()Lcom/fl/saas/J;

    move-result-object v4

    iget-object v5, p2, Lcom/fl/saas/j;->i:Ljava/lang/String;

    iget v6, p2, Lcom/fl/saas/j;->h0:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/fl/saas/J;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    iput-object v3, p2, Lcom/fl/saas/j;->p2:Ljava/lang/String;

    invoke-static {}, Lcom/fl/saas/J;->b()Lcom/fl/saas/J;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/fl/saas/J;->a(Lcom/fl/saas/j;)V

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/fl/saas/x;->g(Lcom/fl/saas/j;)V

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/fl/saas/x;->e(Lcom/fl/saas/j;)V

    iget-object v2, p2, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    iget v3, p2, Lcom/fl/saas/j;->n0:I

    iget v4, p2, Lcom/fl/saas/j;->m0:I

    invoke-static {p1, v1, v2, v3, v4}, Lcom/fl/saas/z;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget v2, p2, Lcom/fl/saas/j;->l0:I

    if-ne v2, v0, :cond_4

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v2

    iget-object v4, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    invoke-virtual {v2, v4, p2}, Lcom/fl/saas/x;->a(Ljava/lang/String;Lcom/fl/saas/j;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/fl/saas/J;->b()Lcom/fl/saas/J;

    move-result-object v4

    iget-object v5, p2, Lcom/fl/saas/j;->i:Ljava/lang/String;

    iget v6, p2, Lcom/fl/saas/j;->h0:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/fl/saas/J;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    iget-object v2, p2, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    iget v4, p2, Lcom/fl/saas/j;->n0:I

    iget v5, p2, Lcom/fl/saas/j;->m0:I

    invoke-static {p1, v1, v2, v4, v5}, Lcom/fl/saas/z;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    iput-object v3, p2, Lcom/fl/saas/j;->p2:Ljava/lang/String;

    invoke-static {}, Lcom/fl/saas/J;->b()Lcom/fl/saas/J;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fl/saas/J;->a(Lcom/fl/saas/j;)V

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fl/saas/x;->g(Lcom/fl/saas/j;)V

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fl/saas/x;->e(Lcom/fl/saas/j;)V

    goto :goto_1

    :goto_2
    invoke-virtual {v1, p2}, Lcom/fl/saas/x;->d(Lcom/fl/saas/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_3
    iput v0, p2, Lcom/fl/saas/j;->h2:I

    iget v0, p2, Lcom/fl/saas/j;->i2:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v0, 0x3

    iput v0, p2, Lcom/fl/saas/j;->i2:I

    :cond_6
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fl/saas/x;->f(Lcom/fl/saas/j;)V

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v0

    iget-object v2, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Lcom/fl/saas/x;->a(Ljava/lang/String;Lcom/fl/saas/j;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/fl/saas/v;->a(Landroid/content/Context;Ljava/lang/String;Lcom/fl/saas/j;)V

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/fl/saas/j;Ljava/lang/String;)V
    .locals 3

    const-string v0, "qz_gdt="

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p2, Lcom/fl/saas/j;->w0:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/fl/saas/j;->z1:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->c(Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void

    :cond_2
    iget-object v0, p2, Lcom/fl/saas/j;->w0:Ljava/lang/String;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "ret"

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "data"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "clickid"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/fl/saas/j;->z1:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->g(Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->e(Landroid/content/Context;Lcom/fl/saas/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->e(Landroid/content/Context;Lcom/fl/saas/j;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->e(Landroid/content/Context;Lcom/fl/saas/j;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/fl/saas/j;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 6
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    iget v0, p3, Lcom/fl/saas/j;->h0:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v0

    iget-object p3, p3, Lcom/fl/saas/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->enableQuickApp(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->launchWithEnableQuickApp(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/v;->i(Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/fl/saas/v;->a(Landroid/content/Context;Lcom/fl/saas/j;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Lcom/fl/saas/v;
    .locals 2

    .line 2
    sget-object v0, Lcom/fl/saas/v;->b:Lcom/fl/saas/v;

    if-nez v0, :cond_0

    const-class v0, Lcom/fl/saas/v;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/fl/saas/v;

    invoke-direct {v1}, Lcom/fl/saas/v;-><init>()V

    sput-object v1, Lcom/fl/saas/v;->b:Lcom/fl/saas/v;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/fl/saas/v;->b:Lcom/fl/saas/v;

    return-object v0
.end method

.method public static synthetic b(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/v;->h(Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void
.end method

.method private synthetic h(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/v;->a(Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic i(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/v;->j(Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p2, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    invoke-static {}, Lcom/fl/saas/t;->a()Lcom/fl/saas/t;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x4

    .line 19
    invoke-virtual {v1, p2, v2}, Lcom/fl/saas/t;->a(Lcom/fl/saas/j;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/fl/saas/t;->a()Lcom/fl/saas/t;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1, p2, v0}, Lcom/fl/saas/t;->a(Landroid/content/Context;Lcom/fl/saas/j;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private k(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 5

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    iget-object v0, p2, Lcom/fl/saas/j;->R0:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/fl/saas/j;->s()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "click"

    .line 21
    .line 22
    invoke-static {v0, p2}, Lcom/fl/saas/z;->a(Ljava/lang/String;Lcom/fl/saas/j;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p2, Lcom/fl/saas/j;->R0:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, v1, p2}, Lcom/fl/saas/x;->a(Ljava/lang/String;Lcom/fl/saas/j;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Lcom/fl/saas/v$a;

    .line 56
    .line 57
    invoke-direct {v3, p0, p1, p2}, Lcom/fl/saas/v$a;-><init>(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-virtual {v2, v4, v1, v3}, Lcom/fl/saas/Y;->a(ZLjava/lang/String;Lcom/fl/saas/T;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/v;->a:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/v;->a:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/fl/saas/v;->a:Lcom/fl/saas/adx/base/download/DownloadTipDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/fl/saas/v;->a:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 2

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p2, Lcom/fl/saas/j;->w0:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->g(Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/v;->k(Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void

    :cond_3
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->c(Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void

    :cond_4
    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->f(Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->e(Landroid/content/Context;Lcom/fl/saas/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :try_start_0
    iget-object v1, p2, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p2, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->enableQuickApp(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p2, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->urlIntercept(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getQuickAppInterceptionType()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ne v1, v0, :cond_4

    .line 49
    .line 50
    new-instance v1, Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    const-string v2, "\u8df3\u8f6c\u63d0\u793a"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "\u60f3\u8981\u6253\u5f00\u201c\u5feb\u5e94\u7528\u201d\n\u662f\u5426\u5141\u8bb8"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setContent(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setCanDismiss(Z)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "\u62d2\u7edd"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setCancelName(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "\u5141\u8bb8"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setSubmitName(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Lcom/fl/saas/A2;

    .line 85
    .line 86
    invoke-direct {v2, p0, p1, p2}, Lcom/fl/saas/A2;-><init>(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setOnSubmitListener(Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception v1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/v;->a(Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v2, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v2, p2}, Lcom/fl/saas/x;->a(Ljava/lang/String;Lcom/fl/saas/j;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-direct {p0, p1, v1, p2}, Lcom/fl/saas/v;->a(Landroid/content/Context;Ljava/lang/String;Lcom/fl/saas/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :goto_0
    iput v0, p2, Lcom/fl/saas/j;->h2:I

    .line 118
    .line 119
    iget v0, p2, Lcom/fl/saas/j;->i2:I

    .line 120
    .line 121
    const/4 v2, 0x2

    .line 122
    if-eq v0, v2, :cond_3

    .line 123
    .line 124
    const/4 v0, 0x3

    .line 125
    iput v0, p2, Lcom/fl/saas/j;->i2:I

    .line 126
    .line 127
    :cond_3
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, p2}, Lcom/fl/saas/x;->f(Lcom/fl/saas/j;)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v2, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v2, p2}, Lcom/fl/saas/x;->a(Ljava/lang/String;Lcom/fl/saas/j;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {p0, p1, v0, p2}, Lcom/fl/saas/v;->a(Landroid/content/Context;Ljava/lang/String;Lcom/fl/saas/j;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    :goto_1
    return-void
.end method

.method public d(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "--"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p2, Lcom/fl/saas/j;->g2:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p2, Lcom/fl/saas/j;->g2:Z

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/v;->a()V

    .line 36
    .line 37
    .line 38
    instance-of v0, p1, Landroid/app/Activity;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    move-object v0, p1

    .line 43
    check-cast v0, Landroid/app/Activity;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    move-object v0, p1

    .line 52
    check-cast v0, Landroid/app/Activity;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 71
    :goto_0
    if-eqz v0, :cond_3

    .line 72
    .line 73
    new-instance v1, Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    .line 74
    .line 75
    new-instance v2, Lcom/fl/saas/z2;

    .line 76
    .line 77
    invoke-direct {v2, p0, p1, p2}, Lcom/fl/saas/z2;-><init>(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v0, p2, v2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;-><init>(Landroid/content/Context;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/fl/saas/v;->a:Lcom/fl/saas/adx/base/download/DownloadTipDialog;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->show()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/v;->j(Landroid/content/Context;Lcom/fl/saas/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/v;->j(Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/v;->j(Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    :goto_2
    return-void
.end method

.method public e(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->c(Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 7
    .line 8
    .line 9
    :cond_1
    :goto_0
    return-void
.end method

.method public f(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p2, Lcom/fl/saas/j;->A1:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p2, Lcom/fl/saas/j;->B1:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->userName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p2, Lcom/fl/saas/j;->C1:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p2, Lcom/fl/saas/j;->C1:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-lez v2, :cond_1

    .line 40
    .line 41
    iget-object v2, p2, Lcom/fl/saas/j;->C1:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->path:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 49
    iput v2, v1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->miniprogramType:I

    .line 50
    .line 51
    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->e(Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_2
    return-void
.end method

.method public g(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    :try_start_0
    iget-object v1, p2, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_4

    .line 15
    .line 16
    new-instance v1, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v2, "android.intent.action.VIEW"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p2, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "m.taobao.com"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const v2, 0x30008000

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/high16 v2, 0x10000000

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v2, p2, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->deviceCanHandleIntent(Landroid/content/Intent;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, p2}, Lcom/fl/saas/x;->g(Lcom/fl/saas/j;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, p2}, Lcom/fl/saas/x;->e(Lcom/fl/saas/j;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p2, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    .line 77
    .line 78
    iget v3, p2, Lcom/fl/saas/j;->n0:I

    .line 79
    .line 80
    iget v4, p2, Lcom/fl/saas/j;->m0:I

    .line 81
    .line 82
    invoke-static {p1, v1, v2, v3, v4}, Lcom/fl/saas/z;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;II)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, p2}, Lcom/fl/saas/x;->d(Lcom/fl/saas/j;)V

    .line 96
    .line 97
    .line 98
    const-string v1, "1"

    .line 99
    .line 100
    iput-object v1, p2, Lcom/fl/saas/j;->p2:Ljava/lang/String;

    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    iput v0, p2, Lcom/fl/saas/j;->i2:I

    .line 104
    .line 105
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, p2}, Lcom/fl/saas/x;->f(Lcom/fl/saas/j;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->d(Landroid/content/Context;Lcom/fl/saas/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :goto_1
    const/4 v2, 0x1

    .line 117
    iput v2, p2, Lcom/fl/saas/j;->h2:I

    .line 118
    .line 119
    iget v2, p2, Lcom/fl/saas/j;->i2:I

    .line 120
    .line 121
    if-eq v2, v0, :cond_5

    .line 122
    .line 123
    const/4 v0, 0x3

    .line 124
    iput v0, p2, Lcom/fl/saas/j;->i2:I

    .line 125
    .line 126
    :cond_5
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, p2}, Lcom/fl/saas/x;->f(Lcom/fl/saas/j;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/v;->d(Landroid/content/Context;Lcom/fl/saas/j;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_2
    return-void
.end method
