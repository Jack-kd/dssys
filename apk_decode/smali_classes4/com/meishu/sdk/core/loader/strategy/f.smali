.class public Lcom/meishu/sdk/core/loader/strategy/f;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/loader/strategy/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/strategy/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCacheKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_2

    .line 28
    .line 29
    new-instance v1, Ljava/util/HashSet;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-ge v1, v2, :cond_2

    .line 61
    .line 62
    if-nez v1, :cond_0

    .line 63
    .line 64
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 65
    .line 66
    iget-boolean v2, v2, Lcom/meishu/sdk/core/loader/strategy/e;->r:Z

    .line 67
    .line 68
    if-nez v2, :cond_0

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_2

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 82
    .line 83
    iget-boolean v3, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->g:Z

    .line 84
    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 88
    .line 89
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    .line 90
    .line 91
    check-cast v2, Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 92
    .line 93
    iget-object v3, v2, Lcom/meishu/sdk/core/loader/concurrent/e;->i:Landroid/os/Handler;

    .line 94
    .line 95
    new-instance v4, Lcom/meishu/sdk/core/loader/concurrent/c;

    .line 96
    .line 97
    invoke-direct {v4, v2}, Lcom/meishu/sdk/core/loader/concurrent/c;-><init>(Lcom/meishu/sdk/core/loader/concurrent/e;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 105
    .line 106
    invoke-static {v3, v2}, Lcom/meishu/sdk/core/loader/strategy/e;->b(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/loadbean/a;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    sget-object v1, Lcom/meishu/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcom/meishu/sdk/core/loader/cache/CacheManager;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 115
    .line 116
    iget-object v3, v2, Lcom/meishu/sdk/core/loader/strategy/e;->c:Ljava/util/List;

    .line 117
    .line 118
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v1, v0, v3, v2}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->handleCurrentList(Ljava/lang/String;Ljava/util/List;I)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/f;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/loader/strategy/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    :cond_3
    return-void

    .line 133
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    return-void
.end method
