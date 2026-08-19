.class public Lcom/sigmob/sdk/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/b$a;,
        Lcom/sigmob/sdk/b$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/content/Context; = null

.field private static c:Lcom/sigmob/sdk/b$a; = null

.field private static d:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z = false

.field private static f:Lcom/czhj/sdk/common/mta/DeviceContext;

.field private static g:Landroid/os/Handler;

.field private static h:Lcom/sigmob/sdk/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sigmob/sdk/b;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    sput-object p0, Lcom/sigmob/sdk/b;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .line 3
    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sigmob/sdk/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .line 4
    const-class v0, Lcom/sigmob/sdk/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/b;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/sigmob/sdk/b;->b:Landroid/content/Context;

    const-string v1, "wind"

    invoke-static {p0, v1}, Lcom/sigmob/sdk/base/utils/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/o;->e()V

    sget-object p0, Lcom/sigmob/sdk/b;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/sigmob/sdk/b;->b(Landroid/content/Context;)V

    sget-object p0, Lcom/sigmob/sdk/b;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/sigmob/sdk/base/db/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    sget-object v1, Lcom/sigmob/sdk/b;->b:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/sigmob/sdk/b;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Z)V
    .locals 0

    .line 5
    sput-boolean p0, Lcom/sigmob/sdk/b;->e:Z

    return-void
.end method

.method public static b()Lcom/czhj/sdk/common/mta/DeviceContext;
    .locals 2

    .line 1
    sget-object v0, Lcom/sigmob/sdk/b;->f:Lcom/czhj/sdk/common/mta/DeviceContext;

    if-nez v0, :cond_1

    sget-object v1, Lcom/sigmob/sdk/b;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/b$1;

    invoke-direct {v0}, Lcom/sigmob/sdk/b$1;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/b;->f:Lcom/czhj/sdk/common/mta/DeviceContext;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    sput-object p0, Lcom/sigmob/sdk/b;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic b(Landroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/sigmob/sdk/b;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/sigmob/sdk/base/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/network/Networking;->AddSigmobServerURL(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/network/Networking;->AddSigmobServerURL(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/o;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/network/Networking;->AddSigmobServerURL(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/network/Networking;->AddSigmobServerURL(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeV2(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeSigRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    return-void
.end method

.method public static c()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Lcom/sigmob/sdk/b;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private static c(Landroid/app/Activity;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/b;->q()V

    invoke-static {p0}, Lcom/sigmob/sdk/b;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public static d()V
    .locals 1

    .line 1
    sget-object v0, Lcom/sigmob/sdk/b;->c:Lcom/sigmob/sdk/b$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/b$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/b$a;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/b;->c:Lcom/sigmob/sdk/b$a;

    :cond_0
    return-void
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v2

    const-string v3, "0"

    iput-object v3, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    const-string v2, "open_deeplink_failed"

    invoke-static {v0, v2, v1}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isSkipSigmobBrowser()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-static {p0, v1}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "can\'t open load "

    invoke-static {v0, p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-class v1, Lcom/sigmob/sdk/base/common/AdActivity;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sigmob/sdk/base/BaseAdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static e()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static f()Z
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/b;->h:Lcom/sigmob/sdk/b$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/b$b;

    invoke-direct {v0}, Lcom/sigmob/sdk/b$b;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/b;->h:Lcom/sigmob/sdk/b$b;

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/b;->h:Lcom/sigmob/sdk/b$b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/b$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 3

    sget-object v0, Lcom/sigmob/sdk/b;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static h()Landroid/app/Application;
    .locals 2

    sget-object v0, Lcom/sigmob/sdk/b;->b:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static i()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/b;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static j()V
    .locals 0

    invoke-static {}, Lcom/sigmob/sdk/b;->o()V

    invoke-static {}, Lcom/sigmob/sdk/b;->p()V

    return-void
.end method

.method public static synthetic k()Z
    .locals 1

    sget-boolean v0, Lcom/sigmob/sdk/b;->e:Z

    return v0
.end method

.method public static synthetic l()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic m()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/b;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private static n()V
    .locals 3

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getOptions()Lcom/sigmob/windad/WindAdOptions;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdOptions;->getCustomController()Lcom/sigmob/windad/WindCustomController;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->isCanUseAppList()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sigmob/windad/WindCustomController;->getInstallPackageInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Landroid/content/pm/PackageInfo;I)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private static o()V
    .locals 4

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->f()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v2, "open_pkg"

    invoke-static {v0, v2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    const-string v3, "1"

    invoke-static {v2, v3, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method private static p()V
    .locals 3

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v1

    const-string v2, "1"

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDeeplinkUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "open_deeplink"

    invoke-static {v0, v2, v1}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static q()V
    .locals 4

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->f()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v2, "open_pkg"

    const-string v3, "0"

    invoke-static {v2, v3, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method
