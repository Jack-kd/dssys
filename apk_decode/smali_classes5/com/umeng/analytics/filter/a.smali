.class public Lcom/umeng/analytics/filter/a;
.super Lcom/umeng/analytics/filter/EventList;
.source "SourceFile"


# instance fields
.field private a:Lcom/umeng/analytics/filter/d;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/filter/EventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/umeng/analytics/filter/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public eventListChange()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/umeng/analytics/filter/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iput-object v1, p0, Lcom/umeng/analytics/filter/a;->a:Lcom/umeng/analytics/filter/d;

    .line 14
    .line 15
    new-instance v1, Lcom/umeng/analytics/filter/d;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v1, v3, v2}, Lcom/umeng/analytics/filter/d;-><init>(ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/umeng/analytics/filter/a;->a:Lcom/umeng/analytics/filter/d;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v1

    .line 30
    :cond_0
    return-void
.end method

.method public matchHit(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/umeng/analytics/filter/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/filter/a;->a:Lcom/umeng/analytics/filter/d;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/umeng/analytics/filter/d;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v2, v1, v3}, Lcom/umeng/analytics/filter/d;-><init>(ZLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/umeng/analytics/filter/a;->a:Lcom/umeng/analytics/filter/d;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/umeng/analytics/filter/a;->a:Lcom/umeng/analytics/filter/d;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/umeng/analytics/filter/d;->a(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    monitor-exit v0

    .line 36
    return p1

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1

    .line 39
    :cond_1
    return v1
.end method

.method public setMD5ClearFlag(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_BL:Z

    .line 2
    .line 3
    return-void
.end method
