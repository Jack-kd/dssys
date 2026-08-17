.class public Lcom/meishu/sdk/core/loader/strategy/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/strategy/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/loader/strategy/e$f;
    }
.end annotation


# instance fields
.field public A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public a:Lcom/meishu/sdk/core/loader/c;

.field public b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/cache/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/d;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/domain/SdkAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile j:Z

.field public k:Lcom/meishu/sdk/core/loader/concurrent/g;

.field public l:Landroid/os/Handler;

.field public m:J

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:J

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/d;",
            ">;"
        }
    .end annotation
.end field

.field public volatile u:Z

.field public volatile v:Z

.field public w:Z

.field public volatile x:Z

.field public y:I

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->c:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->d:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->e:Ljava/util/List;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->f:Ljava/util/List;

    .line 39
    .line 40
    new-instance v0, Ljava/util/LinkedList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->h:Ljava/util/LinkedList;

    .line 46
    .line 47
    new-instance v0, Landroid/os/Handler;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->l:Landroid/os/Handler;

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    .line 64
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->o:Ljava/util/List;

    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    .line 86
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    .line 105
    .line 106
    const-wide/16 v0, 0x2710

    .line 107
    .line 108
    iput-wide v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->s:J

    .line 109
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->t:Ljava/util/List;

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    iput v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->y:I

    .line 123
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    .line 130
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    .line 137
    .line 138
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->a:Lcom/meishu/sdk/core/loader/c;

    .line 139
    .line 140
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 141
    .line 142
    return-void
.end method

.method public static a(Lcom/meishu/sdk/core/loader/strategy/e;)V
    .locals 9

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 36
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->d()Ljava/util/List;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 40
    iget-object v3, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    .line 41
    :try_start_1
    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    move v6, v4

    .line 42
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 43
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 44
    iget-object v7, v7, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 45
    invoke-virtual {v7}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq_uid()I

    move-result v7

    .line 46
    iget-object v8, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 47
    invoke-virtual {v8}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq_uid()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 48
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    :cond_2
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    .line 50
    instance-of v5, v2, Lcom/meishu/sdk/core/ad/a;

    if-eqz v5, :cond_0

    .line 51
    check-cast v2, Lcom/meishu/sdk/core/ad/a;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/a;->getSdkAd()Ljava/lang/Object;

    move-result-object v2

    .line 52
    instance-of v5, v2, Lcom/qq/e/comm/pi/IBidding;

    if-eqz v5, :cond_0

    .line 53
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v5

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v6

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v6, v3}, Lcom/meishu/sdk/core/loader/strategy/e;->a(IILjava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 55
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string v5, "winPrice"

    iget-object v6, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v4, "lossReason"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v4, "adnId"

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    check-cast v2, Lcom/qq/e/comm/pi/IBidding;

    invoke-interface {v2, v3}, Lcom/qq/e/comm/pi/IBiddingLoss;->sendLossNotification(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static a(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/loadbean/a;ILjava/lang/String;)V
    .locals 2

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 14
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string v0, "__MS_ERRNO__"

    const-string v1, "1026"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "__ERROR_CODE__"

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    .line 21
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "__TIMEOUT__"

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 23
    iget-object p3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->a:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {p3}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p3, p1, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 24
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    if-eqz p1, :cond_3

    .line 25
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 26
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result p1

    if-lez p1, :cond_3

    iget-boolean p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->r:Z

    if-nez p1, :cond_3

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    if-eqz p1, :cond_3

    .line 30
    check-cast p1, Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 31
    iget-object p2, p1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/meishu/sdk/core/loader/concurrent/e;->j:Z

    if-nez p2, :cond_3

    .line 32
    const-string p2, "ConCurrentManager"

    const-string p3, "onRenderFail"

    invoke-static {p2, p3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p4, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public static a(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/loadbean/a;Lcom/meishu/sdk/core/loader/AdPlatformError;)V
    .locals 0

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 63
    :try_start_1
    iput p1, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p2

    .line 64
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 65
    invoke-virtual {p1, p3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->replaceErrorPst(Lcom/meishu/sdk/core/loader/AdPlatformError;)V

    .line 66
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->i()V

    .line 68
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p2

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public static a(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/loadbean/a;Ljava/lang/Object;)V
    .locals 6

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v0

    .line 72
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v2, "bidding"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 74
    const-string v0, "GDT"

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KS"

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BAIDU"

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGM"

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    const-string v0, "GDT"

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->e:Ljava/util/List;

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 78
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    iget-object v0, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setLoadedTime(J)V

    .line 83
    iget-object v0, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 84
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->replace()V

    .line 85
    iput-object p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    .line 86
    const-string p3, "bidding"

    .line 87
    iget-object v0, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 88
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 89
    invoke-virtual {p0, p2}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/loader/loadbean/a;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 90
    iget p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->e:I

    .line 91
    iget-object v0, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 92
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v0

    add-int/2addr v0, p3

    .line 93
    iput v0, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->f:I

    goto :goto_3

    :catchall_1
    move-exception p1

    goto/16 :goto_b

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->i()V

    .line 96
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x3

    .line 97
    :try_start_2
    iput p1, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit p2

    .line 98
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->h()V

    goto/16 :goto_a

    :catchall_2
    move-exception p1

    monitor-exit p2

    throw p1

    .line 100
    :cond_4
    :goto_3
    iget-boolean p3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eqz p3, :cond_8

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/meishu/sdk/core/loader/strategy/e;->m:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/meishu/sdk/core/loader/strategy/e;->s:J

    cmp-long p3, v2, v4

    if-lez p3, :cond_6

    const/4 p3, 0x1

    .line 102
    iput-boolean p3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->x:Z

    .line 103
    iget p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    if-ne p3, v1, :cond_5

    const/16 p3, 0xa

    .line 104
    iput p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    goto :goto_4

    :cond_5
    const/16 p3, 0x8

    .line 105
    iput p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    .line 106
    :goto_4
    iget-object p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    if-eqz p3, :cond_8

    .line 107
    iget-object p3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 109
    invoke-virtual {p3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object p3

    .line 110
    const-string v2, "__MS_ERRNO__"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 111
    const-string v2, "__MS_ERRNO__"

    const-string v3, "1025"

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 112
    const-string v2, "__TIMEOUT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    iget v4, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 115
    iget-object v2, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 116
    invoke-virtual {v2, p3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    .line 117
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 118
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->a:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v3}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {v2, p3, v3}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    goto :goto_5

    .line 119
    :cond_6
    iget p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    if-ne p3, v1, :cond_7

    const/4 p3, 0x6

    .line 120
    iput p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    goto :goto_5

    .line 121
    :cond_7
    iput v0, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    .line 122
    :cond_8
    :goto_5
    iget-boolean p3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->x:Z

    if-nez p3, :cond_e

    .line 123
    iget-boolean p3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    if-nez p3, :cond_d

    .line 124
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoader;->getContext()Landroid/content/Context;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :try_start_4
    iget-object p3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 126
    invoke-virtual {p3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    move-result-object p3

    .line 127
    const-string v2, "__TIMEOUT__"

    iget v3, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 128
    invoke-static {p3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p1, p3, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 129
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    :goto_6
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 132
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_9
    iget p1, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I

    if-ne p1, v0, :cond_e

    .line 134
    monitor-enter p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    :try_start_6
    iput v1, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    monitor-exit p2

    .line 136
    invoke-virtual {p0, p2}, Lcom/meishu/sdk/core/loader/strategy/e;->c(Lcom/meishu/sdk/core/loader/loadbean/a;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 137
    invoke-virtual {p0, p2}, Lcom/meishu/sdk/core/loader/strategy/e;->b(Lcom/meishu/sdk/core/loader/loadbean/a;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_9

    .line 138
    :cond_a
    :try_start_8
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 139
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_3
    move-exception p1

    goto :goto_8

    .line 140
    :cond_b
    :goto_7
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-boolean p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    if-eqz p1, :cond_c

    goto :goto_9

    .line 142
    :cond_c
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    new-instance p2, Lcom/meishu/sdk/core/loader/strategy/d;

    invoke-direct {p2, p0}, Lcom/meishu/sdk/core/loader/strategy/d;-><init>(Lcom/meishu/sdk/core/loader/strategy/e;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->i()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_9

    .line 144
    :goto_8
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :catchall_4
    move-exception p1

    monitor-exit p2

    throw p1

    .line 145
    :cond_d
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    if-eqz p1, :cond_e

    .line 146
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 148
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object p1

    .line 149
    const-string p3, "__MS_ERRNO__"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 150
    const-string p3, "__MS_ERRNO__"

    const-string v0, "1025"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 151
    const-string p3, "__TIMEOUT__"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    iget v1, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 155
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 157
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->a:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {p3}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p2, p1, p3}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 158
    :cond_e
    :goto_9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->h()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_a
    monitor-exit p0

    return-void

    :goto_b
    monitor-exit p0

    throw p1
.end method

.method public static a(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/loadbean/a;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x2710

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAll_timeout()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 3
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAll_timeout()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-wide v5, v2

    goto :goto_1

    :cond_0
    move-wide v4, v2

    .line 4
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getOnce_timeout()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-lez v6, :cond_1

    .line 5
    iget-object v6, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getOnce_timeout()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    move-wide v10, v4

    move-object v4, v6

    move-wide v5, v10

    .line 6
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v4, v5

    .line 7
    :cond_1
    :goto_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/meishu/sdk/core/loader/strategy/e;->m:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    cmp-long v6, v4, v0

    if-gtz v6, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 9
    :goto_3
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->l:Landroid/os/Handler;

    new-instance v3, Lcom/meishu/sdk/core/loader/strategy/c;

    invoke-direct {v3, p0, p1}, Lcom/meishu/sdk/core/loader/strategy/c;-><init>(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/loadbean/a;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public static b(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/loadbean/a;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 3
    new-instance v1, Lcom/meishu/sdk/core/loader/cache/a;

    invoke-direct {v1}, Lcom/meishu/sdk/core/loader/cache/a;-><init>()V

    .line 4
    iget-object v2, p1, Lcom/meishu/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    .line 5
    iput-object v2, v1, Lcom/meishu/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 7
    iput-object v2, v1, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache(Z)V

    .line 9
    iput-object v0, v1, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 11
    iput-object v0, v1, Lcom/meishu/sdk/core/loader/cache/a;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/loadbean/a;->a()I

    move-result p1

    .line 13
    iput p1, v1, Lcom/meishu/sdk/core/loader/cache/a;->c:I

    .line 14
    iget-object p0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->c:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static c(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/loadbean/a;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 6
    iget v2, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->e:I

    iget v3, p1, Lcom/meishu/sdk/core/loader/loadbean/a;->e:I

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/loadbean/a;->a()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/loadbean/a;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/loadbean/a;->a()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_1
    const-string v0, ""

    .line 9
    iget-object p1, p1, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    :goto_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_2
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 267
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 268
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 269
    iget-object v3, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    if-eqz v3, :cond_1

    .line 270
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v2

    if-lt v2, p2, :cond_0

    .line 271
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result v2

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 272
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    .line 273
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 274
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v2

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 275
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 276
    :cond_1
    iget-boolean v2, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->g:Z

    if-eqz v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEcpm()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEcpm()I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEcpm()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 279
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 179
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 180
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    .line 181
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->r:Z

    if-nez v1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 182
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 183
    iput-boolean v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->v:Z

    .line 184
    const-string v1, "\u56de\u8c03adReady,\u6210\u529f\u7684\u5e73\u53f0\u4e3a\uff1a"

    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    iget-object v2, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 186
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", readyAd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v2, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PriceFirstStrategy"

    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    .line 190
    iget-object v2, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    .line 191
    check-cast v1, Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 192
    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->j:Z

    if-nez v3, :cond_3

    .line 193
    const-string v3, "ConCurrentManager"

    const-string v4, "onAdReady"

    invoke-static {v3, v4}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 195
    iget-boolean v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->j:Z

    if-nez v3, :cond_3

    .line 196
    iget-object v3, v1, Lcom/meishu/sdk/core/loader/concurrent/e;->i:Landroid/os/Handler;

    new-instance v4, Lcom/meishu/sdk/core/loader/concurrent/d;

    invoke-direct {v4, v1, v2}, Lcom/meishu/sdk/core/loader/concurrent/d;-><init>(Lcom/meishu/sdk/core/loader/concurrent/e;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v1, :cond_9

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 199
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/loader/loadbean/a;

    if-eqz v2, :cond_4

    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    .line 203
    :cond_5
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/loader/loadbean/a;

    if-eqz v2, :cond_6

    .line 206
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 208
    :cond_7
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 209
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/loader/loadbean/a;

    if-eqz v2, :cond_8

    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 213
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final a(IILjava/lang/String;)V
    .locals 2

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-lez p2, :cond_0

    .line 261
    const-string p1, "bidding"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 263
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    new-instance p2, Lcom/meishu/sdk/core/loader/strategy/e$c;

    invoke-direct {p2, p0}, Lcom/meishu/sdk/core/loader/strategy/e$c;-><init>(Lcom/meishu/sdk/core/loader/strategy/e;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 264
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 7

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 216
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/loader/d;

    .line 218
    invoke-interface {v2}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq_uid()I

    move-result v3

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq_uid()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    .line 219
    :try_start_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v3

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v4

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/meishu/sdk/core/loader/strategy/e;->a(IILjava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 221
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 222
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move v3, v1

    .line 223
    :goto_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v4

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v5

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/meishu/sdk/core/loader/strategy/e;->b(IILjava/lang/String;)V

    .line 224
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 225
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 226
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    :try_start_3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    move-result v4

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v5

    invoke-static {v3, v1, v4, v5}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    move-result v3

    .line 229
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getFinalRsp()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 231
    const-string v5, "__S2__"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {p1, v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setFinalRsp(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 233
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 234
    :cond_3
    :goto_2
    :try_start_5
    check-cast v2, Lcom/meishu/sdk/platform/BasePlatformLoader;

    const/4 p1, 0x1

    invoke-virtual {v2, p1, v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->sendGdtWinResult(ZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 235
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 238
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 239
    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 241
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq_uid()I

    move-result v3

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq_uid()I

    move-result v2

    if-ne v3, v2, :cond_5

    .line 242
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v2

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/meishu/sdk/core/loader/strategy/e;->b(IILjava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 244
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/meishu/sdk/core/loader/strategy/e;->b(Lcom/meishu/sdk/core/domain/SdkAdInfo;I)V

    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 246
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_6
    return-void
.end method

.method public final a(Lcom/meishu/sdk/core/domain/SdkAdInfo;I)V
    .locals 2

    .line 247
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 249
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getLurl()Ljava/lang/String;

    move-result-object p1

    .line 251
    const-string v0, "AUCTION_PRICE"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 252
    const-string p2, "AUCTION_SEAT_ID"

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 253
    const-string p2, "AUCTION_LOSS"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 254
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->a:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p2, p1, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 255
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;)V"
        }
    .end annotation

    .line 280
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/core/loader/strategy/e$e;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/loader/strategy/e$e;-><init>(Lcom/meishu/sdk/core/loader/strategy/e;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final declared-synchronized a(Lcom/meishu/sdk/core/loader/loadbean/a;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 159
    :try_start_0
    iget-object v1, p1, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 160
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v2

    .line 161
    const-string v3, "bidding"

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v3, v2, :cond_1

    const/4 v3, 0x1

    .line 163
    :try_start_1
    iget-object v4, p1, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    if-eqz v4, :cond_0

    .line 164
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__MS_ERRNO__"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, p1, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 166
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v4

    .line 167
    const-string v5, "__MS_ERRNO__"

    const-string v6, "1027"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 168
    const-string v5, "__ERROR_CODE__"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v4, "__TIMEOUT__"

    .line 170
    iget p1, p1, Lcom/meishu/sdk/core/loader/loadbean/a;->d:I

    .line 171
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 172
    const-string v0, "__P__"

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 173
    const-string v0, "__S__"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->a:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v3

    goto :goto_2

    :catch_1
    move-exception p1

    .line 176
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_2
    monitor-exit p0

    return v0

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final b(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 59
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 61
    iget-object v3, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v3

    if-ge v3, p2, :cond_0

    if-lez v3, :cond_0

    .line 63
    iget-object v4, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 64
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result v4

    if-lt v4, v3, :cond_0

    .line 65
    iget-object v3, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 66
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    .line 67
    :cond_0
    :goto_1
    iget-object v3, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 68
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCodPrice()I

    move-result v3

    if-ge v3, p2, :cond_2

    if-lez v3, :cond_2

    .line 69
    iget-object v4, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 70
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v4

    if-lt v4, v3, :cond_2

    .line 71
    iget-object v2, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 72
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 73
    :cond_1
    iget-boolean v2, v2, Lcom/meishu/sdk/core/loader/loadbean/a;->g:Z

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEcpm()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEcpm()I

    move-result v2

    if-ge v2, p2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEcpm()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 76
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 16
    new-instance v0, Lcom/meishu/sdk/core/loader/loadbean/a;

    invoke-direct {v0}, Lcom/meishu/sdk/core/loader/loadbean/a;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPriority()I

    move-result v1

    rsub-int v1, v1, 0x3e8

    const v2, 0xf4240

    mul-int/2addr v1, v2

    .line 18
    iput v1, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->e:I

    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCacheScore()I

    move-result v1

    .line 20
    iput v1, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->f:I

    .line 21
    monitor-enter v0

    const/4 v1, 0x2

    .line 22
    :try_start_0
    iput v1, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->g:Z

    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b(IILjava/lang/String;)V
    .locals 2

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/meishu/sdk/core/loader/strategy/e;->b(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/meishu/sdk/core/loader/strategy/e;->b(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/meishu/sdk/core/loader/strategy/e;->b(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-lez p2, :cond_0

    .line 54
    const-string p1, "bidding"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->A:Ljava/util/List;

    new-instance p2, Lcom/meishu/sdk/core/loader/strategy/e$d;

    invoke-direct {p2, p0}, Lcom/meishu/sdk/core/loader/strategy/e$d;-><init>(Lcom/meishu/sdk/core/loader/strategy/e;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 57
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final b(Lcom/meishu/sdk/core/domain/SdkAdInfo;I)V
    .locals 3

    .line 42
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getNurl()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "AUCTION_PRICE"

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "HIGHEST_LOSS_PRICE"

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->a:Lcom/meishu/sdk/core/loader/c;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p2, p1, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 49
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final b(Lcom/meishu/sdk/core/loader/loadbean/a;)V
    .locals 3

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->r:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    move-result v0

    .line 27
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_2

    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    if-nez v0, :cond_2

    .line 28
    iput-boolean v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    .line 29
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 30
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->c()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    new-instance v0, Lcom/meishu/sdk/core/loader/strategy/e$a;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/loader/strategy/e$a;-><init>(Lcom/meishu/sdk/core/loader/strategy/e;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    .line 36
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 37
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 41
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final c()V
    .locals 8

    .line 11
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->w:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->w:Z

    .line 13
    iput-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    .line 14
    monitor-enter p0

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->d()Ljava/util/List;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v0

    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 19
    iget-object v4, v3, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 20
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v5

    .line 21
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v6

    .line 22
    const-string v7, "bidding"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-lez v5, :cond_0

    const-string v5, "GDT"

    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 23
    iget-object v5, p0, Lcom/meishu/sdk/core/loader/strategy/e;->f:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v1

    goto :goto_2

    .line 24
    :cond_0
    :goto_1
    const-string v5, "GDT"

    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 25
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/strategy/e;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 27
    sget-object v1, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 28
    sget-object v1, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 29
    new-instance v2, Lcom/meishu/sdk/core/loader/strategy/f;

    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/loader/strategy/f;-><init>(Lcom/meishu/sdk/core/loader/strategy/e;)V

    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 30
    :try_start_2
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->d:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v0

    .line 31
    :goto_3
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 32
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/loader/d;

    .line 33
    invoke-interface {v2}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v4

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v5

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3}, Lcom/meishu/sdk/core/loader/strategy/e;->a(IILjava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 36
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 37
    :try_start_3
    check-cast v2, Lcom/meishu/sdk/platform/BasePlatformLoader;

    invoke-virtual {v2, v0, v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->sendGdtWinResult(ZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    .line 38
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 39
    :cond_4
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->e:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v0

    .line 40
    :goto_5
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 41
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 42
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v3

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v4

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/meishu/sdk/core/loader/strategy/e;->a(IILjava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 44
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->z:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 45
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :goto_7
    monitor-exit p0

    throw v0

    :cond_6
    :goto_8
    return-void
.end method

.method public final c(Lcom/meishu/sdk/core/loader/loadbean/a;)Z
    .locals 5

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 51
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    iget v2, v1, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 55
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 58
    :cond_1
    iget v2, v1, Lcom/meishu/sdk/core/loader/loadbean/a;->e:I

    .line 59
    iget v3, p1, Lcom/meishu/sdk/core/loader/loadbean/a;->e:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    return v4

    :cond_2
    if-ne v2, v3, :cond_0

    .line 60
    iget-boolean v2, v1, Lcom/meishu/sdk/core/loader/loadbean/a;->g:Z

    if-nez v2, :cond_3

    .line 61
    iget-object v2, v1, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 62
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bidding"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/loadbean/a;->a()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    return v4

    .line 63
    :cond_3
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/loadbean/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/loadbean/a;->a()I

    move-result v2

    if-le v1, v2, :cond_0

    return v4

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/loader/loadbean/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCacheKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    sget-object v2, Lcom/meishu/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcom/meishu/sdk/core/loader/cache/CacheManager;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/core/loader/cache/CacheManager;->getCacheListByKey(Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-lez v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/meishu/sdk/core/loader/cache/a;

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/cache/a;->a()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    new-instance v3, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 65
    .line 66
    invoke-direct {v3}, Lcom/meishu/sdk/core/loader/loadbean/a;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v4, v2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 70
    .line 71
    iput-object v4, v3, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 72
    .line 73
    iget-object v4, v2, Lcom/meishu/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object v4, v3, Lcom/meishu/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    .line 76
    .line 77
    iget v4, v2, Lcom/meishu/sdk/core/loader/cache/a;->c:I

    .line 78
    .line 79
    iput v4, v3, Lcom/meishu/sdk/core/loader/loadbean/a;->f:I

    .line 80
    .line 81
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const/4 v4, 0x2

    .line 83
    :try_start_1
    iput v4, v3, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    :try_start_2
    monitor-exit v3

    .line 86
    iget-boolean v2, v2, Lcom/meishu/sdk/core/loader/cache/a;->e:Z

    .line 87
    .line 88
    iput-boolean v2, v3, Lcom/meishu/sdk/core/loader/loadbean/a;->g:Z

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    iput-boolean v2, v3, Lcom/meishu/sdk/core/loader/loadbean/a;->h:Z

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v1

    .line 98
    goto :goto_1

    .line 99
    :catchall_1
    move-exception v1

    .line 100
    monitor-exit v3

    .line 101
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :cond_1
    return-object v0

    .line 103
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    return-object v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/core/loader/strategy/e$b;

    .line 3
    .line 4
    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/loader/strategy/e$b;-><init>(Lcom/meishu/sdk/core/loader/strategy/e;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "PriceFirstStrategy"

    .line 18
    .line 19
    const-string v1, "handleFinish loadFinish=true"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->e()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->i()V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->g()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->c()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final declared-synchronized g()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->u:Z

    .line 3
    .line 4
    if-nez v0, :cond_7

    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-lez v0, :cond_6

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->q:Ljava/util/List;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-lez v3, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-lez v3, :cond_7

    .line 39
    .line 40
    iget-boolean v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->r:Z

    .line 41
    .line 42
    if-nez v3, :cond_7

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    .line 49
    .line 50
    if-eqz v3, :cond_7

    .line 51
    .line 52
    iget-boolean v3, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->g:Z

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    iget-boolean v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    .line 57
    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    .line 61
    .line 62
    if-eqz v2, :cond_7

    .line 63
    .line 64
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 67
    .line 68
    .line 69
    iput-boolean v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->u:Z

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCache()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-gtz v3, :cond_2

    .line 83
    .line 84
    const-string v3, "PriceFirstStrategy"

    .line 85
    .line 86
    const-string v4, "handleReturnAd, loadFinished=true"

    .line 87
    .line 88
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iput-boolean v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    .line 92
    .line 93
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 96
    .line 97
    .line 98
    :cond_2
    iput-boolean v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->u:Z

    .line 99
    .line 100
    iget-object v3, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 101
    .line 102
    invoke-virtual {p0, v3}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->h:Ljava/util/LinkedList;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    .line 111
    .line 112
    iget-object v4, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 115
    .line 116
    check-cast v3, Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 117
    .line 118
    iget-object v5, v3, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    if-nez v5, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSourceEventUrl()[Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-static {v7, v6}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v5, v6}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->setEventUrl([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catch_0
    move-exception v5

    .line 140
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    :goto_1
    iget-boolean v5, v3, Lcom/meishu/sdk/core/loader/concurrent/e;->g:Z

    .line 144
    .line 145
    if-eqz v5, :cond_4

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    iput-boolean v1, v3, Lcom/meishu/sdk/core/loader/concurrent/e;->g:Z

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getFinalRsp()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v5, "__TIMEOUT__"

    .line 159
    .line 160
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    .line 166
    .line 167
    move-result-wide v5

    .line 168
    iget-object v2, v3, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 169
    .line 170
    iget-wide v7, v2, Lcom/meishu/sdk/core/loader/c;->startLoadTime:J

    .line 171
    .line 172
    sub-long/2addr v5, v7

    .line 173
    invoke-static {v1, v5, v6}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v2, v3, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v3, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    if-eqz v1, :cond_5

    .line 197
    .line 198
    const-string v1, "onFinalAdLoaded: "

    .line 199
    .line 200
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v2, ",group\uff1a"

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getGroup()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    const-string v1, "ConCurrentManager"

    .line 228
    .line 229
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, v3, Lcom/meishu/sdk/core/loader/concurrent/e;->e:Lcom/meishu/sdk/core/loader/c;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-interface {v0, v4}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->a()V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    .line 246
    .line 247
    if-eqz v0, :cond_7

    .line 248
    .line 249
    iput-boolean v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->u:Z

    .line 250
    .line 251
    const-string v0, "PriceFirstStrategy"

    .line 252
    .line 253
    const-string v1, "\u65e0\u5e7f\u544a\u8fd4\u56de\uff0conAllError"

    .line 254
    .line 255
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    .line 260
    .line 261
    :cond_7
    :goto_3
    monitor-exit p0

    .line 262
    return-void

    .line 263
    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    :try_start_1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->x:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_2

    .line 17
    :catch_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->h:Ljava/util/LinkedList;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->h:Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 43
    .line 44
    sget-object v1, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 45
    .line 46
    new-instance v2, Lcom/meishu/sdk/core/loader/strategy/e$f;

    .line 47
    .line 48
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/core/loader/strategy/e$f;-><init>(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/loadbean/a;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e;->p:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/meishu/sdk/core/loader/strategy/e;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    throw v0
.end method

.method public final i()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e;->n:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/meishu/sdk/core/loader/strategy/e;->j:Z

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/meishu/sdk/core/loader/strategy/e;->c(Lcom/meishu/sdk/core/loader/loadbean/a;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/meishu/sdk/core/loader/strategy/e;->b(Lcom/meishu/sdk/core/loader/loadbean/a;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return-void

    .line 44
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
