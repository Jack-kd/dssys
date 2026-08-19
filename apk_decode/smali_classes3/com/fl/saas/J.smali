.class public Lcom/fl/saas/J;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/J$e;,
        Lcom/fl/saas/J$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Z

.field private c:Z

.field private d:J

.field private e:J

.field private f:Lcom/fl/saas/j;

.field private g:Z

.field private h:Ljava/lang/ref/WeakReference;

.field private i:Lcom/fl/saas/adx/api/FLSpread;

.field private j:Lcom/fl/saas/adx/api/FLInterstitial;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field public q:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/fl/saas/J;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/fl/saas/J;->b:Z

    iput-boolean v1, p0, Lcom/fl/saas/J;->c:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/fl/saas/J;->d:J

    iput-wide v2, p0, Lcom/fl/saas/J;->e:J

    iput-boolean v1, p0, Lcom/fl/saas/J;->g:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/fl/saas/J;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/fl/saas/J;->l:Ljava/lang/String;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/fl/saas/J;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-wide v2, p0, Lcom/fl/saas/J;->n:J

    iput-object v0, p0, Lcom/fl/saas/J;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/fl/saas/J;->p:Ljava/lang/String;

    iput v1, p0, Lcom/fl/saas/J;->q:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fl/saas/J$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/fl/saas/J;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/J;Lcom/fl/saas/adx/api/FLInterstitial;)Lcom/fl/saas/adx/api/FLInterstitial;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/fl/saas/J;->j:Lcom/fl/saas/adx/api/FLInterstitial;

    return-object p1
.end method

.method public static synthetic a(Lcom/fl/saas/J;Lcom/fl/saas/adx/api/FLSpread;)Lcom/fl/saas/adx/api/FLSpread;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/fl/saas/J;->i:Lcom/fl/saas/adx/api/FLSpread;

    return-object p1
.end method

.method public static synthetic a(Lcom/fl/saas/J;Lcom/fl/saas/j;)Lcom/fl/saas/j;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/fl/saas/J;->f:Lcom/fl/saas/j;

    return-object p1
.end method

.method public static synthetic a(Lcom/fl/saas/J;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/J;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/fl/saas/J;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/fl/saas/J;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/J;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/fl/saas/J;->q:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/J;->o:Ljava/lang/String;

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/J;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->enableQuickApp(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->launchWithEnableQuickApp(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fl/saas/J;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/J;Landroid/app/Activity;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/fl/saas/J;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/J;Ljava/util/List;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/fl/saas/J;->a(Ljava/util/List;)V

    return-void
.end method

.method private synthetic a(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/fl/saas/J;->i:Lcom/fl/saas/adx/api/FLSpread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->setSpreadAd(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/fl/saas/adx/base/activity/FLSpreadActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/fl/saas/J;->i:Lcom/fl/saas/adx/api/FLSpread;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseAPI;->getReqId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/u0;

    invoke-virtual {v0}, Lcom/fl/saas/u0;->c()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/u0;->a()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/fl/saas/J;->d:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0}, Lcom/fl/saas/u0;->a()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/fl/saas/J;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/fl/saas/adx/api/FLInterstitial$Builder;

    iget-object v1, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/fl/saas/adx/api/FLInterstitial$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fl/saas/u0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/base/BaseBuilder;->setKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/adx/api/FLInterstitial$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/base/BaseBuilder;->setIsHot(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/adx/api/FLInterstitial$Builder;

    new-instance v0, Lcom/fl/saas/J$b;

    invoke-direct {v0, p0}, Lcom/fl/saas/J$b;-><init>(Lcom/fl/saas/J;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/api/FLInterstitial$Builder;->setInterstitialListener(Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;)Lcom/fl/saas/adx/api/FLInterstitial$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/adx/api/FLInterstitial$Builder;->build()Lcom/fl/saas/adx/api/FLInterstitial;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/J;->j:Lcom/fl/saas/adx/api/FLInterstitial;

    invoke-virtual {p1}, Lcom/fl/saas/adx/api/FLInterstitial;->requestInterstitial()V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 1

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010057

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static synthetic a(Lcom/fl/saas/J;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/fl/saas/J;->b:Z

    return p1
.end method

.method public static b()Lcom/fl/saas/J;
    .locals 1

    .line 5
    invoke-static {}, Lcom/fl/saas/J$e;->a()Lcom/fl/saas/J;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLInterstitial;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/fl/saas/J;->j:Lcom/fl/saas/adx/api/FLInterstitial;

    return-object p0
.end method

.method public static synthetic b(Lcom/fl/saas/J;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/J;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 7

    if-eqz p1, :cond_5

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/u0;

    invoke-virtual {v1}, Lcom/fl/saas/u0;->c()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v1}, Lcom/fl/saas/u0;->a()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/fl/saas/J;->d:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1}, Lcom/fl/saas/u0;->a()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/J;->i:Lcom/fl/saas/adx/api/FLSpread;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/fl/saas/J;->a(Ljava/util/List;)V

    return-void

    :cond_3
    new-instance v0, Lcom/fl/saas/adx/api/FLSpread$Builder;

    iget-object v3, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/fl/saas/adx/api/FLSpread$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/fl/saas/adx/base/base/BaseBuilder;->setIsHot(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/api/FLSpread$Builder;

    invoke-virtual {v1}, Lcom/fl/saas/u0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/base/BaseBuilder;->setKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/api/FLSpread$Builder;

    new-instance v1, Lcom/fl/saas/l1;

    invoke-direct {v1, p0}, Lcom/fl/saas/l1;-><init>(Lcom/fl/saas/J;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/FLSpread$Builder;->setSpreadLoadListener(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;)Lcom/fl/saas/adx/api/FLSpread$Builder;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/J$a;

    invoke-direct {v1, p0, p1}, Lcom/fl/saas/J$a;-><init>(Lcom/fl/saas/J;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/FLSpread$Builder;->setSpreadListener(Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;)Lcom/fl/saas/adx/api/FLSpread$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/adx/api/FLSpread$Builder;->build()Lcom/fl/saas/adx/api/FLSpread;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/J;->i:Lcom/fl/saas/adx/api/FLSpread;

    invoke-virtual {p1}, Lcom/fl/saas/adx/api/FLSpread;->requestSpread()V

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/fl/saas/J;->a(Ljava/util/List;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private b(Landroid/app/Activity;)Z
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010058

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static synthetic c(Lcom/fl/saas/J;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/fl/saas/J;->l:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/fl/saas/J;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/I;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/fl/saas/J;Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/J;->a(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fl/saas/J;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/I;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d(Landroid/app/Activity;)V
    .locals 5

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fl/saas/J;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fl/saas/J;->e:J

    invoke-direct {p0}, Lcom/fl/saas/J;->d()V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/fl/saas/J;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/J;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/fl/saas/J;->f:Lcom/fl/saas/j;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/J;->g:Z

    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/J;->f:Lcom/fl/saas/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/fl/saas/J;->d:J

    sub-long/2addr v1, v3

    const-string v3, "1"

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/fl/saas/E0;->a(Lcom/fl/saas/j;Ljava/lang/String;J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fl/saas/J;->f:Lcom/fl/saas/j;

    :cond_1
    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/E0;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/k1;

    invoke-direct {v0, p0}, Lcom/fl/saas/k1;-><init>(Lcom/fl/saas/J;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/E0;->a(Lcom/fl/saas/E0$e;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/J;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fl/saas/J;->g:Z

    return p0
.end method

.method public static synthetic e(Lcom/fl/saas/J;)Lcom/fl/saas/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/J;->f:Lcom/fl/saas/j;

    return-object p0
.end method

.method private e()V
    .locals 5

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/J;->g:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/fl/saas/J;->d:J

    invoke-direct {p0}, Lcom/fl/saas/J;->c()V

    iget-wide v1, p0, Lcom/fl/saas/J;->d:J

    iget-wide v3, p0, Lcom/fl/saas/J;->n:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/fl/saas/J;->n:J

    const-string v1, ""

    iput-object v1, p0, Lcom/fl/saas/J;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/fl/saas/J;->p:Ljava/lang/String;

    iput v0, p0, Lcom/fl/saas/J;->q:I

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/J;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/J;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/fl/saas/J;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fl/saas/J;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/fl/saas/J;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/J;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLSpread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/J;->i:Lcom/fl/saas/adx/api/FLSpread;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/fl/saas/J;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/J;->h:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/fl/saas/J;->e:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/fl/saas/J;->e:J

    return-void
.end method

.method public a(Lcom/fl/saas/j;)V
    .locals 2

    .line 14
    iput-object p1, p0, Lcom/fl/saas/J;->f:Lcom/fl/saas/j;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/J;->g:Z

    new-instance p1, Lcom/fl/saas/J$c;

    invoke-direct {p1, p0}, Lcom/fl/saas/J$c;-><init>(Lcom/fl/saas/J;)V

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1, p1}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/fl/saas/J;->l:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fl/saas/J;->n:J

    iput-object p1, p0, Lcom/fl/saas/J;->o:Ljava/lang/String;

    iput-object p2, p0, Lcom/fl/saas/J;->p:Ljava/lang/String;

    iput p3, p0, Lcom/fl/saas/J;->q:I

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/J;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/fl/saas/J$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fl/saas/J$d;-><init>(Lcom/fl/saas/J;Lcom/fl/saas/J$a;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/J;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Activity;)Z
    .locals 6

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v5, v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    invoke-direct {p0, p1}, Lcom/fl/saas/J;->b(Landroid/app/Activity;)Z

    move-result v5

    invoke-direct {p0, p1}, Lcom/fl/saas/J;->a(Landroid/app/Activity;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    if-nez v5, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v4

    :catchall_0
    :cond_4
    :goto_3
    return v0
.end method
