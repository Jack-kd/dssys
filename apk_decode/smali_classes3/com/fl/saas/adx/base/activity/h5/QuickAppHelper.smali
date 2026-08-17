.class public Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;


# instance fields
.field private collectWebviewWakeup:I

.field private enableQuickApp:Z

.field private isQuickApp:Z

.field private final listQuickKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdxInfo:Lcom/fl/saas/j;

.field private final mapQuickKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private quickAppBlockRatio:D

.field private quickAppFreqDay:I

.field private quickAppInterceptionType:I

.field private final startQuickAppTimesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private webviewWakeupLimit:I

.field private whitelistHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->listQuickKey:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->mapQuickKey:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->collectWebviewWakeup:I

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iput-wide v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppBlockRatio:D

    iput v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->webviewWakeupLimit:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppInterceptionType:I

    iput v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppFreqDay:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->startQuickAppTimesMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->isQuickApp:Z

    return-void
.end method

.method private checkInterceptRatio()Z
    .locals 8

    iget-wide v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppBlockRatio:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_0

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppBlockRatio:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v5
.end method

.method private checkQuickAppFreqDay(ZLjava/lang/String;I)Z
    .locals 6

    iget v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppFreqDay:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v3

    const-string v4, ""

    const-string v5, "lastOpenQuickAppDay"

    invoke-virtual {v3, v5, v4}, Lcom/fl/saas/S0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "lastDayOpenQuickAppDayNumber"

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->checkInterceptRatio()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/fl/saas/S0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/S0;

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    if-eqz p1, :cond_0

    add-int/2addr p3, v2

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->startQuickAppTimesMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/fl/saas/S0;->a(Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppFreqDay:I

    if-ge v0, v3, :cond_4

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->checkInterceptRatio()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/2addr v0, v2

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    if-eqz p1, :cond_3

    add-int/2addr p3, v2

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->startQuickAppTimesMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1

    :cond_4
    return v2

    :cond_5
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->checkInterceptRatio()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    add-int/2addr p3, v2

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->startQuickAppTimesMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return v1

    :cond_7
    return v2
.end method

.method public static getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->sInstance:Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    if-nez v0, :cond_0

    const-class v0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;-><init>()V

    sput-object v1, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->sInstance:Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

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
    sget-object v0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->sInstance:Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    return-object v0
.end method


# virtual methods
.method public addListQuickKey(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->listQuickKey:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->listQuickKey:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addListQuickMatch(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fl/saas/B0;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/B0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/B0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->mapQuickKey:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/fl/saas/B0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->mapQuickKey:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/fl/saas/B0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fl/saas/B0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearHistory()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->mAdxInfo:Lcom/fl/saas/j;

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->startQuickAppTimesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public enableQuickApp(Ljava/lang/String;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->enableQuickApp:Z

    return p1
.end method

.method public getQuickAppInterceptionType()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppInterceptionType:I

    return v0
.end method

.method public reportUrl(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->collectWebviewWakeup:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->mAdxInfo:Lcom/fl/saas/j;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->mAdxInfo:Lcom/fl/saas/j;

    invoke-virtual {v0, v1, p1}, Lcom/fl/saas/E0;->b(Lcom/fl/saas/j;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAdSource(Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->mAdxInfo:Lcom/fl/saas/j;

    .line 2
    .line 3
    return-void
.end method

.method public setCollectWebviewWakeup(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->collectWebviewWakeup:I

    return-void
.end method

.method public setEnableQuickApp(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->enableQuickApp:Z

    return-void
.end method

.method public setQuickAppBlockRatio(D)V
    .locals 0

    iput-wide p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppBlockRatio:D

    return-void
.end method

.method public setQuickAppFreqDay(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppFreqDay:I

    return-void
.end method

.method public setQuickAppInterceptionType(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->quickAppInterceptionType:I

    return-void
.end method

.method public setWebviewWakeupLimit(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->webviewWakeupLimit:I

    return-void
.end method

.method public setWhitelistHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->whitelistHeaders:Ljava/util/List;

    return-void
.end method

.method public urlIntercept(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->whitelistHeaders:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->whitelistHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->isQuickApp:Z

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->listQuickKey:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->listQuickKey:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v2, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->isQuickApp:Z

    :cond_4
    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->isQuickApp:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->mapQuickKey:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->mapQuickKey:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->mapQuickKey:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/fl/saas/a1;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->isQuickApp:Z

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->isQuickApp:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->webviewWakeupLimit:I

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->startQuickAppTimesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->startQuickAppTimesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->webviewWakeupLimit:I

    if-ge v3, v4, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, p1, v1}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->checkQuickAppFreqDay(ZLjava/lang/String;I)Z

    move-result p1

    return p1

    :cond_7
    return v2

    :cond_8
    invoke-direct {p0, v2, p1, v0}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->checkQuickAppFreqDay(ZLjava/lang/String;I)Z

    move-result p1

    return p1

    :cond_9
    invoke-direct {p0, v0, p1, v0}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->checkQuickAppFreqDay(ZLjava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_a
    return v0
.end method
