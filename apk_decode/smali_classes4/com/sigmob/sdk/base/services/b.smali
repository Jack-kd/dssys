.class public Lcom/sigmob/sdk/base/services/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/services/f$a;


# static fields
.field private static final c:Ljava/lang/String; = "BuriedPointConfig"


# instance fields
.field a:Lcom/sigmob/sdk/base/services/a;

.field b:Lcom/sigmob/sdk/base/services/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/services/g;->b:Lcom/sigmob/sdk/base/services/g;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/b;->b:Lcom/sigmob/sdk/base/services/g;

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/b;->a:Lcom/sigmob/sdk/base/services/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/services/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/services/a;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/b;->a:Lcom/sigmob/sdk/base/services/a;

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/base/o;Landroid/content/Context;)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->S()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->J()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    move v4, v3

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->K()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/utils/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-static {v1, v3, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->c()V

    return-void
.end method

.method public static a()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/czhj/sdk/common/Constants;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "canOpen_last_day"

    const-string v3, ""

    const-string v4, "BuriedPointConfig"

    invoke-static {v1, v4, v2, v3}, Lcom/sigmob/sdk/base/utils/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/o;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/services/b;->a(Lcom/sigmob/sdk/base/o;Landroid/content/Context;)V

    return-void
.end method

.method public static c()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/czhj/sdk/common/Constants;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "BuriedPointConfig"

    const-string v3, "canOpen_last_day"

    invoke-static {v1, v2, v3, v0}, Lcom/sigmob/sdk/base/utils/y;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/czhj/sdk/common/Constants;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "last_day"

    const-string v2, ""

    const-string v3, "BuriedPointConfig"

    invoke-static {p0, v3, v1, v2}, Lcom/sigmob/sdk/base/utils/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static d()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/i;->i()Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->L()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/base/services/j;

    invoke-direct {v3, v1, v0}, Lcom/sigmob/sdk/base/services/j;-><init>(Lcom/sigmob/sdk/base/o;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->submit(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic e(Landroid/content/Context;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/sigmob/sdk/base/services/b;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    invoke-static {v3, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Landroid/content/pm/PackageInfo;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/czhj/sdk/common/Constants;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BuriedPointConfig"

    const-string v2, "last_day"

    invoke-static {p0, v1, v2, v0}, Lcom/sigmob/sdk/base/utils/y;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "update app info"

    invoke-static {v0, p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/base/services/b;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static i()V
    .locals 3

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/b;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/base/services/i;

    invoke-direct {v2, v0}, Lcom/sigmob/sdk/base/services/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static j()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/i;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getOptions()Lcom/sigmob/windad/WindAdOptions;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->ab()I

    move-result v2

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v3

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/o;->Q()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdOptions;->getCustomController()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseAppList()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "BuriedPointManager getInstance"

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLklOU1RBTExfUEFDS0FHRQ=="

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_1

    const-string v1, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLklOU1RBTExfRkFJTFVSRQ=="

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string v1, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlBBQ0tBR0VfQURERUQ="

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlBBQ0tBR0VfUkVNT1ZFRA=="

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlBBQ0tBR0VfUkVQTEFDRUQ="

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/b;->a:Lcom/sigmob/sdk/base/services/a;

    invoke-static {p1, v1, v0}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/base/services/b;->a:Lcom/sigmob/sdk/base/services/a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public e()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/services/b;->b:Lcom/sigmob/sdk/base/services/g;

    sget-object v1, Lcom/sigmob/sdk/base/services/g;->a:Lcom/sigmob/sdk/base/services/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/services/b;->a(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/services/b;->b:Lcom/sigmob/sdk/base/services/g;

    const/4 v0, 0x1

    return v0
.end method

.method public f()Lcom/sigmob/sdk/base/services/g;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/services/b;->b:Lcom/sigmob/sdk/base/services/g;

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/b;->b:Lcom/sigmob/sdk/base/services/g;

    sget-object v1, Lcom/sigmob/sdk/base/services/g;->a:Lcom/sigmob/sdk/base/services/g;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/services/b;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/sigmob/sdk/base/services/g;->b:Lcom/sigmob/sdk/base/services/g;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/b;->b:Lcom/sigmob/sdk/base/services/g;

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/Error;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
