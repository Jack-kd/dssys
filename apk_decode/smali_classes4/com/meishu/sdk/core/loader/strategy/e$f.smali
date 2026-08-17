.class public Lcom/meishu/sdk/core/loader/strategy/e$f;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/loader/strategy/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/meishu/sdk/core/loader/loadbean/a;

.field public final synthetic b:Lcom/meishu/sdk/core/loader/strategy/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/loadbean/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/loadbean/a;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/meishu/sdk/core/loader/strategy/e;->a:Lcom/meishu/sdk/core/loader/c;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/AdSdk;->initSdkIfNot(Landroid/content/Context;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/meishu/sdk/core/loader/strategy/e;->a:Lcom/meishu/sdk/core/loader/c;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 34
    .line 35
    invoke-virtual {v2, v0, v1}, Lcom/meishu/sdk/core/loader/c;->createDelegate(Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 45
    .line 46
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/loader/strategy/e;->c(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/loadbean/a;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 55
    .line 56
    invoke-static {v0, v1, v3, v2}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/loadbean/a;Lcom/meishu/sdk/core/loader/AdPlatformError;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/strategy/e;->i:Ljava/util/Map;

    .line 65
    .line 66
    invoke-interface {v1, v2}, Lcom/meishu/sdk/core/loader/d;->setLocalParams(Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-interface {v1, v2}, Lcom/meishu/sdk/core/loader/d;->setGroupIndex(I)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/meishu/sdk/core/loader/strategy/e$f$a;

    .line 79
    .line 80
    invoke-direct {v2, p0, v1}, Lcom/meishu/sdk/core/loader/strategy/e$f$a;-><init>(Lcom/meishu/sdk/core/loader/strategy/e$f;Lcom/meishu/sdk/core/loader/d;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, v2}, Lcom/meishu/sdk/core/loader/d;->setConCurrentLoadListener(Lcom/meishu/sdk/core/loader/concurrent/f;)V

    .line 84
    .line 85
    .line 86
    instance-of v2, v1, Lcom/meishu/sdk/platform/bd/banner/BDBannerAdLoader;

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    invoke-virtual {v0, v2, v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setLoadTime(J)V

    .line 96
    .line 97
    .line 98
    const/4 v2, 0x1

    .line 99
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setAlreadyLoaded(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 103
    .line 104
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v2, 0x4

    .line 106
    :try_start_1
    iput v2, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    :try_start_2
    monitor-exit v0

    .line 109
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/IAdLoader;->loadAd()V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/strategy/e;->t:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception v1

    .line 121
    monitor-exit v0

    .line 122
    throw v1

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 126
    .line 127
    invoke-static {v0, v1, v3, v2}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/loadbean/a;Lcom/meishu/sdk/core/loader/AdPlatformError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    return-void
.end method
