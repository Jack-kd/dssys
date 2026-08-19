.class public Lcom/anythink/core/common/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/g$a;
    }
.end annotation


# instance fields
.field A:Z

.field B:Lcom/anythink/core/common/h/by;

.field C:Lcom/anythink/core/common/h/by;

.field protected D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/w/e;",
            ">;"
        }
    .end annotation
.end field

.field E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;"
        }
    .end annotation
.end field

.field protected F:Lcom/anythink/core/common/v/b/d;

.field protected G:Lcom/anythink/core/common/v/b/d;

.field H:Lcom/anythink/core/common/w/j;

.field I:Lcom/anythink/core/common/w/g;

.field J:Lcom/anythink/core/common/a/c$a;

.field K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/api/bridge/ATBaseAdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected L:Lcom/anythink/core/common/v/b/d;

.field M:Lcom/anythink/core/common/h/by;

.field N:D

.field O:Z

.field P:Lcom/anythink/core/common/h/by;

.field Q:Z

.field private final R:Ljava/lang/String;

.field private final S:Lcom/anythink/core/mg/a/a;

.field private T:Lcom/anythink/core/common/h;

.field private U:Z

.field private final V:Lcom/anythink/core/common/f;

.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:Ljava/lang/String;

.field protected e:Lcom/anythink/core/common/h/ce;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/anythink/core/common/h/n;

.field protected j:Lcom/anythink/core/common/h/as;

.field protected k:Lcom/anythink/core/common/d/c;

.field l:Z

.field m:Z

.field n:Z

.field protected o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Ljava/lang/String;

.field u:Lcom/anythink/core/api/AdError;

.field v:J

.field w:I

.field x:I

.field y:Lcom/anythink/core/common/h/by;

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/anythink/core/common/g;->R:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/anythink/core/common/g;->d:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->l:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->m:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->n:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->o:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->r:Z

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->s:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-object v2, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->z:Z

    .line 35
    .line 36
    iput-object v2, p0, Lcom/anythink/core/common/g;->B:Lcom/anythink/core/common/h/by;

    .line 37
    .line 38
    iput-object v2, p0, Lcom/anythink/core/common/g;->C:Lcom/anythink/core/common/h/by;

    .line 39
    .line 40
    iput-object v2, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/v/b/d;

    .line 41
    .line 42
    new-instance v2, Lcom/anythink/core/common/v/b/d;

    .line 43
    .line 44
    sget-object v3, Lcom/anythink/core/common/v/b/e;->dk:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v4, Lcom/anythink/core/common/g$1;

    .line 47
    .line 48
    invoke-direct {v4, p0}, Lcom/anythink/core/common/g$1;-><init>(Lcom/anythink/core/common/g;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3, v4}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/anythink/core/common/g;->L:Lcom/anythink/core/common/v/b/d;

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->O:Z

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->Q:Z

    .line 59
    .line 60
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/anythink/core/common/g;->b:Ljava/lang/ref/WeakReference;

    .line 66
    .line 67
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    .line 76
    .line 77
    const-string p1, "4001"

    .line 78
    .line 79
    invoke-static {p1, v0, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/anythink/core/common/g;->u:Lcom/anythink/core/api/AdError;

    .line 84
    .line 85
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    .line 91
    .line 92
    new-instance p1, Ljava/util/ArrayList;

    .line 93
    .line 94
    const/4 v0, 0x3

    .line 95
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/anythink/core/common/g;->E:Ljava/util/List;

    .line 103
    .line 104
    new-instance p1, Lcom/anythink/core/common/w/j;

    .line 105
    .line 106
    invoke-direct {p1}, Lcom/anythink/core/common/w/j;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 110
    .line 111
    new-instance p1, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    .line 117
    .line 118
    new-instance p1, Lcom/anythink/core/mg/a/a;

    .line 119
    .line 120
    invoke-direct {p1}, Lcom/anythink/core/mg/a/a;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object p1, p0, Lcom/anythink/core/common/g;->S:Lcom/anythink/core/mg/a/a;

    .line 124
    .line 125
    iput-object p2, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    .line 126
    .line 127
    return-void
.end method

.method private declared-synchronized A()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->c()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->d()I

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method private B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/g;->L:Lcom/anythink/core/common/v/b/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/anythink/core/common/g;->L:Lcom/anythink/core/common/v/b/d;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private C()Lcom/anythink/core/common/h/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->e()Lcom/anythink/core/common/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->e()Lcom/anythink/core/common/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/h/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/anythink/core/common/a/c$a;->a()Lcom/anythink/core/common/h/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_2
    return-object v0
.end method

.method private D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

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
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/anythink/core/api/bridge/IATBaseAdAdapter;->destory()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 40
    .line 41
    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0

    .line 45
    throw v1
.end method

.method private declared-synchronized E()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->t()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/w/g;->b(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lez v2, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, v0, v1}, Lcom/anythink/core/common/g;->a(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0
.end method

.method private a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;)Ljava/lang/String;
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkFirmId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/n;->Z()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adSourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/n;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/bx;->aS()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p2}, Lcom/anythink/core/common/h/by;->Y()Lcom/anythink/core/common/h/ad;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 365
    const-string p2, ", hasShow="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ad;->o()Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", bidId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/anythink/core/common/h/z;->token:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", tpBidId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/anythink/core/common/h/ad;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(ILcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;I)V
    .locals 6

    if-eqz p1, :cond_3

    .line 101
    new-instance v0, Lcom/anythink/core/common/h/ay;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/z;->getSortPrice()D

    move-result-wide v4

    move v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/common/h/ay;-><init>(ILcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;D)V

    const/4 p0, 0x1

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v2}, Lcom/anythink/core/common/h/by;->bE()I

    move-result p2

    if-ne p2, p0, :cond_0

    .line 103
    invoke-virtual {v2}, Lcom/anythink/core/common/h/by;->az()D

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/anythink/core/common/h/ay;->d(D)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 104
    invoke-virtual {v2}, Lcom/anythink/core/common/h/by;->bG()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/anythink/core/common/h/ay;->b(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Lcom/anythink/core/common/h/by;->bF()D

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/anythink/core/common/h/ay;->d(D)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    .line 106
    invoke-virtual {v2}, Lcom/anythink/core/common/h/by;->bF()D

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/anythink/core/common/h/ay;->d(D)V

    .line 107
    :cond_2
    :goto_0
    invoke-static {p1, v0, p0, p4}, Lcom/anythink/core/c/d/c;->a(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/ay;ZI)V

    :cond_3
    return-void
.end method

.method private a(ILjava/util/List;Lcom/anythink/core/common/j$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;",
            "Lcom/anythink/core/common/j$a;",
            ")V"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/anythink/core/common/g;->M:Lcom/anythink/core/common/h/by;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/g;->E:Ljava/util/List;

    invoke-static {v0}, Lcom/anythink/core/common/v/ai;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 263
    :goto_1
    new-instance v1, Lcom/anythink/core/common/h/a;

    invoke-direct {v1}, Lcom/anythink/core/common/h/a;-><init>()V

    .line 264
    iget-object v2, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->b:Landroid/content/Context;

    .line 265
    iget-object v2, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->c:Lcom/anythink/core/common/h/as;

    .line 266
    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->d:Ljava/lang/String;

    .line 267
    iget-object v2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->e:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v2}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/e/m;->ap()I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/h/a;->f:I

    .line 269
    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v2}, Lcom/anythink/core/common/h/ce;->k()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/h/a;->g:J

    .line 270
    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v2}, Lcom/anythink/core/common/h/ce;->l()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/h/a;->h:J

    .line 271
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v2}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/anythink/core/common/i;->a(Lcom/anythink/core/e/m;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->l:Ljava/lang/String;

    .line 272
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v2}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/i;->a(Lcom/anythink/core/e/m;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->o:Ljava/lang/String;

    .line 273
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v2}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/i;->b(Lcom/anythink/core/e/m;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->p:Ljava/lang/String;

    .line 274
    iput-object p2, v1, Lcom/anythink/core/common/h/a;->j:Ljava/util/List;

    .line 275
    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    .line 276
    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->s:Lcom/anythink/core/common/h/n;

    .line 277
    iget-object v2, p0, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->q:Ljava/util/Map;

    .line 278
    iget-object v2, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v2}, Lcom/anythink/core/common/w/g;->o()Lcom/anythink/core/common/h/cc;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->v:Lcom/anythink/core/common/h/cc;

    .line 279
    iget-object v2, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v2}, Lcom/anythink/core/common/w/g;->p()Lcom/anythink/core/common/h/bs;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->w:Lcom/anythink/core/common/h/bs;

    .line 280
    iget-object v2, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v2}, Lcom/anythink/core/common/w/g;->q()Lcom/anythink/core/common/h/ac;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/h/a;->x:Lcom/anythink/core/common/h/ac;

    .line 281
    iput-boolean v0, v1, Lcom/anythink/core/common/h/a;->m:Z

    .line 282
    iput p1, v1, Lcom/anythink/core/common/h/a;->t:I

    .line 283
    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    iget-object v0, p0, Lcom/anythink/core/common/g;->P:Lcom/anythink/core/common/h/by;

    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/common/w/g;->a(Ljava/util/List;Lcom/anythink/core/common/h/by;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v1, Lcom/anythink/core/common/h/a;->u:Ljava/util/Map;

    .line 284
    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p1}, Lcom/anythink/core/common/w/g;->a()Lcom/anythink/core/common/w/i;

    move-result-object p1

    iput-object p1, v1, Lcom/anythink/core/common/h/a;->y:Lcom/anythink/core/common/w/i;

    .line 285
    iget-object p1, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    iput-object p1, v1, Lcom/anythink/core/common/h/a;->J:Lcom/anythink/core/common/f;

    .line 286
    new-instance p1, Lcom/anythink/core/c/b;

    invoke-direct {p1, v1}, Lcom/anythink/core/c/b;-><init>(Lcom/anythink/core/common/h/a;)V

    .line 287
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/anythink/core/common/j$b;->a(Z)V

    .line 288
    new-instance p2, Lcom/anythink/core/common/g$2;

    invoke-direct {p2, p0, p3}, Lcom/anythink/core/common/g$2;-><init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/j$a;)V

    invoke-interface {p1, p2}, Lcom/anythink/core/common/j$b;->a(Lcom/anythink/core/common/j$a;)V

    return-void
.end method

.method private a(J)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    invoke-interface {v0, v1, p1, p2}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;J)V

    :cond_0
    return-void
.end method

.method private a(Lcom/anythink/core/api/AdError;)V
    .locals 4

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "placementId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";result_callback:fail;loadType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget v1, v1, Lcom/anythink/core/common/h/as;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-static {v1, v0}, Lcom/anythink/core/common/v/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/u;->a(Landroid/content/Context;)Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 341
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 342
    iget-object v3, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/ce;Lcom/anythink/core/api/AdError;)V

    .line 343
    iget-object p1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    :cond_0
    return-void
.end method

.method private a(Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/anythink/core/common/g;->j()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;I)V
    .locals 8

    .line 387
    invoke-direct {p0}, Lcom/anythink/core/common/g;->u()Z

    .line 388
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->O:Z

    if-nez v0, :cond_3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "placementId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";result_callback:success;loadType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget v1, v1, Lcom/anythink/core/common/h/as;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-static {v1, v0}, Lcom/anythink/core/common/v/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/u;->a(Landroid/content/Context;)Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 391
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 394
    :try_start_1
    iget-object v2, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {v0, v2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V

    .line 396
    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {v0, v2}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V
    :try_end_1
    .catch Lcom/anythink/core/common/h/m; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 397
    :try_start_2
    iget-object v2, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object v4, v2, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    iget-object v5, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    iget-object v0, v0, Lcom/anythink/core/common/h/m;->a:Lcom/anythink/core/api/AdError;

    invoke-virtual {v4, v3, v2, v5, v0}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/ce;Lcom/anythink/core/api/AdError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 398
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 399
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/w/e;)V

    .line 400
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object v2, v0, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    iget-boolean v4, p0, Lcom/anythink/core/common/g;->A:Z

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x2

    :goto_2
    iget-object v4, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v2, v3, v0, v4, p1}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/ce;I)V

    .line 401
    :goto_3
    iget-object p1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iput-object v1, p1, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    .line 402
    :cond_2
    invoke-static {}, Lcom/anythink/core/d/b;->a()Lcom/anythink/core/d/b;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    .line 403
    iget-object p1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Lcom/anythink/core/e/m;->ax()I

    move-result v5

    iget-object v6, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object p0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p0}, Lcom/anythink/core/common/w/g;->b()Lcom/anythink/core/common/h/ac;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/h/ac;->b()Lcom/anythink/core/common/h/by;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/by;)V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    monitor-enter v0

    .line 385
    :try_start_0
    iget-object p0, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/h/by;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->f(Lcom/anythink/core/common/h/by;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/h/by;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/by;I)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/d/c;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/d/c;->onAdSourceAttempt(Lcom/anythink/core/common/h/n;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 382
    sget v0, Lcom/anythink/core/common/w/a/a$b;->a:I

    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/h/by;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;ILcom/anythink/core/common/h/by;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 383
    invoke-static {}, Lcom/anythink/core/common/v/d;->a()Lcom/anythink/core/common/v/d;

    move-result-object p0

    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/h/by;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/core/common/v/d;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;I)V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/w/e;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->c(Lcom/anythink/core/common/w/e;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/w/e;Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;)V
    .locals 2

    .line 367
    new-instance v0, Lcom/anythink/core/common/w/d;

    invoke-direct {v0}, Lcom/anythink/core/common/w/d;-><init>()V

    .line 368
    iget-object v1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->a:Landroid/content/Context;

    .line 369
    iget-object v1, p0, Lcom/anythink/core/common/g;->b:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->b:Ljava/lang/ref/WeakReference;

    .line 370
    iget-object v1, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->c:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->d:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->e:Lcom/anythink/core/e/m;

    .line 373
    iget-object v1, p0, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->f:Ljava/util/Map;

    .line 374
    iget v1, p0, Lcom/anythink/core/common/g;->w:I

    iput v1, v0, Lcom/anythink/core/common/w/d;->g:I

    .line 375
    iput-object p2, v0, Lcom/anythink/core/common/w/d;->h:Lcom/anythink/core/common/h/n;

    .line 376
    iget-object p2, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p2}, Lcom/anythink/core/common/w/g;->q()Lcom/anythink/core/common/h/ac;

    move-result-object p2

    iput-object p2, v0, Lcom/anythink/core/common/w/d;->i:Lcom/anythink/core/common/h/ac;

    .line 377
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/w/e;->a(Lcom/anythink/core/common/w/d;)V

    .line 378
    new-instance p2, Lcom/anythink/core/common/g$6;

    invoke-direct {p2, p0, p3}, Lcom/anythink/core/common/g$6;-><init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/h/by;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/w/e;->a(Lcom/anythink/core/common/w/c;)V

    .line 379
    iget-object p0, p0, Lcom/anythink/core/common/g;->C:Lcom/anythink/core/common/h/by;

    invoke-virtual {p1, p0}, Lcom/anythink/core/common/w/e;->a(Lcom/anythink/core/common/h/by;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;Ljava/lang/String;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/h/by;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/h/by;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/by;Lcom/anythink/core/mg/api/MgComparedResult;)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/by;Lcom/anythink/core/mg/api/MgComparedResult;)V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/h/ay;Lcom/anythink/core/common/h/by;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->bE()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->az()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/h/ay;->d(D)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 110
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->bG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/h/ay;->b(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->bF()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/h/ay;->d(D)V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->bF()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/h/ay;->d(D)V

    :cond_2
    return-void
.end method

.method private declared-synchronized a(Lcom/anythink/core/common/h/by;)V
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/w/g;->b(Lcom/anythink/core/common/h/by;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Lcom/anythink/core/common/h/by;DZ)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->z:Z

    .line 345
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->g(Lcom/anythink/core/common/h/by;)V

    const-wide/16 v1, 0x0

    cmpl-double p2, p2, v1

    if-nez p2, :cond_2

    .line 346
    iget-object p2, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    if-nez p2, :cond_4

    if-eqz p4, :cond_1

    .line 347
    iget-boolean p2, p0, Lcom/anythink/core/common/g;->A:Z

    if-nez p2, :cond_4

    :cond_1
    xor-int/lit8 p2, p4, 0x1

    .line 348
    iput-boolean p2, p0, Lcom/anythink/core/common/g;->A:Z

    goto :goto_0

    .line 349
    :cond_2
    iget-object p2, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    invoke-static {p1, p2}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    move-result p2

    if-gez p2, :cond_4

    .line 350
    iput-object p1, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    if-eqz p4, :cond_3

    .line 351
    iget-boolean p2, p0, Lcom/anythink/core/common/g;->A:Z

    if-nez p2, :cond_4

    :cond_3
    xor-int/lit8 p2, p4, 0x1

    .line 352
    iput-boolean p2, p0, Lcom/anythink/core/common/g;->A:Z

    .line 353
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/anythink/core/common/g;->C:Lcom/anythink/core/common/h/by;

    if-eqz p2, :cond_5

    invoke-static {p2, p1}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    move-result p2

    if-gez p2, :cond_6

    .line 354
    :cond_5
    iput-object p1, p0, Lcom/anythink/core/common/g;->C:Lcom/anythink/core/common/h/by;

    .line 355
    :cond_6
    iget-object p2, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/w/g;->g(Lcom/anythink/core/common/h/by;)Z

    move-result p1

    .line 356
    iget-boolean p2, p0, Lcom/anythink/core/common/g;->o:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lcom/anythink/core/common/g;->n:Z

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 357
    invoke-static {}, Lcom/anythink/core/d/b;->a()Lcom/anythink/core/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    .line 358
    iget-object p1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Lcom/anythink/core/e/m;->ax()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p1}, Lcom/anythink/core/common/w/g;->b()Lcom/anythink/core/common/h/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ac;->b()Lcom/anythink/core/common/h/by;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/by;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private declared-synchronized a(Lcom/anythink/core/common/h/by;I)V
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/w/g;->b(Lcom/anythink/core/common/h/by;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)V
    .locals 0

    monitor-enter p0

    .line 203
    :try_start_0
    invoke-static {p1, p2}, Lcom/anythink/core/common/w/g;->d(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Lcom/anythink/core/common/h/n;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    return-void
.end method

.method private a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;ILcom/anythink/core/common/h/by;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/h/n;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/anythink/core/common/w/a/a$b;->a:I

    if-ne p3, v0, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p1}, Lcom/anythink/core/common/h/bx;->aQ()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/anythink/core/common/w/a/b/d;

    invoke-static {v0, v1}, Lcom/anythink/core/common/w/a/a/d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/anythink/core/common/w/a/b/b;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/w/a/b/d;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 148
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 150
    :cond_2
    const-string v1, ""

    move-object p2, v1

    .line 151
    :goto_0
    invoke-static {p1, v1, p2, p3}, Lcom/anythink/core/common/h/am;->a(Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;I)Lcom/anythink/core/common/h/am;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/anythink/core/common/w/a/b/d;->a(Lcom/anythink/core/common/h/am;)V

    .line 152
    :cond_3
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    .line 153
    sget p2, Lcom/anythink/core/common/w/a/a$b;->a:I

    if-ne p3, p2, :cond_4

    .line 154
    iget-object p2, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/bx;->aQ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p4, p1}, Lcom/anythink/core/a/c;->a(Landroid/content/Context;Lcom/anythink/core/common/h/by;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_4
    sget p2, Lcom/anythink/core/common/w/a/a$b;->c:I

    if-ne p3, p2, :cond_5

    .line 156
    iget-object p2, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/bx;->aQ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p4, p1}, Lcom/anythink/core/a/c;->b(Landroid/content/Context;Lcom/anythink/core/common/h/by;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_5
    sget p2, Lcom/anythink/core/common/w/a/a$b;->b:I

    if-ne p3, p2, :cond_6

    .line 158
    iget-object p2, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/bx;->aQ()Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/anythink/core/a/c;->b(Landroid/content/Context;Lcom/anythink/core/common/h/by;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/h/by;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/d/c;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/d/c;->onAdSourceLoadFail(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;)V

    .line 145
    :cond_0
    sget v0, Lcom/anythink/core/common/w/a/a$b;->c:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;ILcom/anythink/core/common/h/by;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/d/c;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/d/c;->onAdSourceAttempt(Lcom/anythink/core/common/h/n;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 141
    sget v0, Lcom/anythink/core/common/w/a/a$b;->a:I

    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/h/by;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;ILcom/anythink/core/common/h/by;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 142
    invoke-static {}, Lcom/anythink/core/common/v/d;->a()Lcom/anythink/core/common/v/d;

    move-result-object v0

    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/h/by;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/core/common/v/d;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;I)V

    :cond_2
    return-void
.end method

.method private a(Lcom/anythink/core/common/w/e;)V
    .locals 4

    .line 220
    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/w/g;->a(II)V

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/w/e;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->c(Lcom/anythink/core/common/w/e;)V

    .line 224
    iget-object v1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v1}, Lcom/anythink/core/common/w/g;->b()Lcom/anythink/core/common/h/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/h/ac;->b()Lcom/anythink/core/common/h/by;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    invoke-virtual {v2}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    iget-object v2, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    .line 225
    invoke-virtual {v2}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    invoke-virtual {v1}, Lcom/anythink/core/common/a/c$a;->c()V

    :cond_1
    if-nez v0, :cond_2

    .line 227
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V

    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/w/g;->a(I)V

    .line 229
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/w/g;->b(I)Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->e()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/anythink/core/common/g;->a(Ljava/util/List;I)V

    .line 231
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V

    return-void
.end method

.method private varargs a(Lcom/anythink/core/common/w/e;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;Z[Lcom/anythink/core/api/BaseAd;)V
    .locals 6

    const/4 v0, 0x0

    .line 205
    :try_start_0
    invoke-virtual {p4}, Lcom/anythink/core/common/h/n;->i()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/anythink/core/common/h/n;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz p6, :cond_1

    .line 206
    array-length v1, p6

    if-lez v1, :cond_1

    aget-object v1, p6, v0

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v1}, Lcom/anythink/core/api/BaseAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->getInternalNetworkInfoMap()Ljava/util/Map;

    move-result-object v1

    .line 209
    :goto_0
    invoke-virtual {p4, v1}, Lcom/anythink/core/common/h/n;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :catch_0
    :cond_2
    invoke-static {p3, p2}, Lcom/anythink/core/common/v/ai;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/anythink/core/common/h/n;->m(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->e()I

    move-result p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    invoke-static {p3}, Lcom/anythink/core/common/v/o;->a(Lcom/anythink/core/common/h/by;)D

    move-result-wide v4

    goto :goto_1

    :cond_3
    move-wide v4, v1

    .line 212
    :goto_1
    invoke-direct {p0, p3, v4, v5, p5}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;DZ)V

    .line 213
    invoke-static {p2, p3, p4, p6}, Lcom/anythink/core/c/d/c;->a(Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;[Lcom/anythink/core/api/BaseAd;)V

    .line 214
    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p1, p3}, Lcom/anythink/core/common/w/g;->h(Lcom/anythink/core/common/h/by;)V

    .line 215
    iget-wide p1, p0, Lcom/anythink/core/common/g;->N:D

    cmpl-double p5, p1, v1

    if-lez p5, :cond_5

    cmpg-double p1, p1, v4

    if-gez p1, :cond_4

    .line 216
    iput v3, p4, Lcom/anythink/core/common/h/n;->v:I

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    .line 217
    iput p1, p4, Lcom/anythink/core/common/h/n;->v:I

    goto :goto_2

    .line 218
    :cond_5
    iput v0, p4, Lcom/anythink/core/common/h/n;->v:I

    .line 219
    :goto_2
    iget-object p1, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    iget-object p2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object p4, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    const/4 p5, 0x0

    invoke-static {p1, p2, p4, p3, p5}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/w/e;Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;)V
    .locals 2

    .line 126
    new-instance v0, Lcom/anythink/core/common/w/d;

    invoke-direct {v0}, Lcom/anythink/core/common/w/d;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->a:Landroid/content/Context;

    .line 128
    iget-object v1, p0, Lcom/anythink/core/common/g;->b:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->b:Ljava/lang/ref/WeakReference;

    .line 129
    iget-object v1, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->c:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->d:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->e:Lcom/anythink/core/e/m;

    .line 132
    iget-object v1, p0, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    iput-object v1, v0, Lcom/anythink/core/common/w/d;->f:Ljava/util/Map;

    .line 133
    iget v1, p0, Lcom/anythink/core/common/g;->w:I

    iput v1, v0, Lcom/anythink/core/common/w/d;->g:I

    .line 134
    iput-object p2, v0, Lcom/anythink/core/common/w/d;->h:Lcom/anythink/core/common/h/n;

    .line 135
    iget-object p2, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p2}, Lcom/anythink/core/common/w/g;->q()Lcom/anythink/core/common/h/ac;

    move-result-object p2

    iput-object p2, v0, Lcom/anythink/core/common/w/d;->i:Lcom/anythink/core/common/h/ac;

    .line 136
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/w/e;->a(Lcom/anythink/core/common/w/d;)V

    .line 137
    new-instance p2, Lcom/anythink/core/common/g$6;

    invoke-direct {p2, p0, p3}, Lcom/anythink/core/common/g$6;-><init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/h/by;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/w/e;->a(Lcom/anythink/core/common/w/c;)V

    .line 138
    iget-object p2, p0, Lcom/anythink/core/common/g;->C:Lcom/anythink/core/common/h/by;

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/w/e;->a(Lcom/anythink/core/common/h/by;)V

    return-void
.end method

.method private a(Ljava/lang/Double;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/w/g;->a(Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 313
    monitor-exit p0

    return-void

    .line 314
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/w/e;

    .line 315
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/w/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/h/by;)V
    .locals 8

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/anythink/core/common/w/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 160
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->getTrackingInfo()Lcom/anythink/core/common/h/n;

    move-result-object v5

    filled-new-array {p3}, [Lcom/anythink/core/api/BaseAd;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/w/e;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;Z[Lcom/anythink/core/api/BaseAd;)V

    .line 162
    invoke-direct {p0, v4}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;)V

    .line 163
    invoke-direct {p0}, Lcom/anythink/core/common/g;->t()V

    .line 164
    invoke-virtual {v3}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->getTrackingInfo()Lcom/anythink/core/common/h/n;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V

    .line 165
    invoke-virtual {v4}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/w/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/h/by;

    .line 82
    invoke-direct {p0, v0}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/h/by;)V

    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->c()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/w/g;->a(Ljava/util/List;)V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/h/by;

    .line 32
    invoke-direct {p0, v0, p2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/by;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 33
    :cond_1
    monitor-exit p0

    return-void

    .line 34
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;ILjava/lang/String;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;ILjava/lang/String;)Z
    .locals 8

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->s()Lcom/anythink/core/common/h/i;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0, p2}, Lcom/anythink/core/common/h/i;->a(Lcom/anythink/core/common/h/by;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    const-string v4, "Can\'t Load On Showing"

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/v/aa;->a(Ljava/lang/String;Lcom/anythink/core/common/h/n;Ljava/lang/String;Lcom/anythink/core/common/h/by;II)V

    .line 116
    const-string p1, "2011"

    const-string p2, ""

    const-string v1, "Can\'t Load On Showing"

    invoke-static {p1, p2, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    const/4 p2, 0x7

    invoke-static {v3, p2, p1}, Lcom/anythink/core/common/u/f;->a(Lcom/anythink/core/common/h/n;ILcom/anythink/core/api/AdError;)V

    .line 117
    iget-object p1, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/i;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p1, v5, p3}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/by;I)V

    .line 119
    invoke-direct {p0, v5}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;)V

    .line 120
    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p1, p3}, Lcom/anythink/core/common/w/g;->a(I)V

    .line 121
    iget-object p1, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/w/g;->a(II)V

    .line 123
    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p1, p3}, Lcom/anythink/core/common/w/g;->b(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/anythink/core/common/g;->a(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 125
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b(J)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->L:Lcom/anythink/core/common/v/b/d;

    invoke-interface {v0, v1, p1, p2}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;J)V

    return-void
.end method

.method private b(Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static synthetic b(Lcom/anythink/core/common/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/anythink/core/common/g;->p()V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/core/common/g;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/anythink/core/common/g;->K:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/anythink/core/common/g;Lcom/anythink/core/common/h/by;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/h/by;)V

    return-void
.end method

.method private static b(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/by;Lcom/anythink/core/mg/api/MgComparedResult;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 30
    invoke-virtual {p2}, Lcom/anythink/core/mg/api/MgComparedResult;->isMgWin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Lcom/anythink/core/mg/api/MgComparedResult;->isCompared()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x22

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    if-lez p2, :cond_2

    .line 32
    invoke-static {p0, p1, p2}, Lcom/anythink/core/c/d/c;->a(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/by;I)V

    :cond_2
    return-void
.end method

.method private b(Lcom/anythink/core/common/h/by;)V
    .locals 5

    .line 4
    const-string v0, ""

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->M()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4001"

    invoke-static {v2, v0, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/anythink/core/common/g;->u:Lcom/anythink/core/api/AdError;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->n()I

    move-result v3

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/anythink/core/api/AdError;->putNetworkErrorMsg(Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 6
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/w/g;->c(Lcom/anythink/core/common/h/by;)V

    return-void
.end method

.method private b(Lcom/anythink/core/common/h/by;I)V
    .locals 9

    .line 21
    new-instance v5, Lcom/anythink/core/common/w/e;

    iget-object v0, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    invoke-direct {v5, p1, p2, v0}, Lcom/anythink/core/common/w/e;-><init>(Lcom/anythink/core/common/h/by;ILcom/anythink/core/common/f;)V

    .line 22
    invoke-virtual {v5}, Lcom/anythink/core/common/w/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 23
    iget-object v0, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/anythink/core/common/w/g;->a(II)V

    .line 25
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/v/b/d;

    sget-object v8, Lcom/anythink/core/common/v/b/e;->aC:Ljava/lang/String;

    new-instance v0, Lcom/anythink/core/common/g$5;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/common/g$5;-><init>(Lcom/anythink/core/common/g;Ljava/lang/String;Lcom/anythink/core/common/h/by;ILcom/anythink/core/common/w/e;)V

    invoke-direct {v7, v8, v0}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/v/b/c;->b(Lcom/anythink/core/common/v/b/d;)V

    return-void
.end method

.method private b(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/d/c;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/d/c;->onAdSourceLoadFilled(Lcom/anythink/core/common/h/n;)V

    .line 28
    :cond_0
    sget v0, Lcom/anythink/core/common/w/a/a$b;->b:I

    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/h/by;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;ILcom/anythink/core/common/h/by;)V

    .line 29
    invoke-static {}, Lcom/anythink/core/common/v/d;->a()Lcom/anythink/core/common/v/d;

    move-result-object v0

    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/h/by;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/core/common/v/d;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;I)V

    return-void
.end method

.method private b(Lcom/anythink/core/common/w/e;)V
    .locals 2

    .line 33
    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->c()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 36
    iget p1, p0, Lcom/anythink/core/common/g;->x:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/anythink/core/common/g;->x:I

    :cond_2
    :goto_0
    return-void
.end method

.method private static b(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic c(Lcom/anythink/core/common/g;)Lcom/anythink/core/common/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    return-object p0
.end method

.method private declared-synchronized c(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->m()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->n()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/w/g;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/anythink/core/common/g;->a(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic c(Lcom/anythink/core/common/g;Lcom/anythink/core/common/h/by;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/by;)V

    return-void
.end method

.method private c(Lcom/anythink/core/common/h/by;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->n()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/w/g;->f(Lcom/anythink/core/common/h/by;)V

    .line 9
    iget-object v0, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {p1, v0}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->B()I

    move-result v0

    const/16 v1, -0xb

    if-eq v0, v1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->B()I

    move-result v0

    const/16 v1, -0xd

    if-ne v0, v1, :cond_2

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/w/g;->f(Lcom/anythink/core/common/h/by;)V

    .line 13
    iget-object v0, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {p1, v0}, Lcom/anythink/core/common/w/g;->b(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private declared-synchronized c(Lcom/anythink/core/common/w/e;)V
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/g;->s()Lcom/anythink/core/common/h/by;

    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lcom/anythink/core/common/g;->z:Z

    if-eqz v1, :cond_4

    .line 16
    iget-boolean v1, p0, Lcom/anythink/core/common/g;->m:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/anythink/core/common/g;->r:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    invoke-static {v1, v0}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->s:Z

    if-eqz v0, :cond_7

    .line 17
    :cond_2
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->o:Z

    if-nez v0, :cond_3

    .line 18
    iget-object p1, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/anythink/core/common/g;->a(ILcom/anythink/core/common/h/by;)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/w/e;)V

    .line 20
    :goto_1
    invoke-direct {p0}, Lcom/anythink/core/common/g;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 21
    :cond_4
    :try_start_1
    iget-boolean p1, p0, Lcom/anythink/core/common/g;->m:Z

    if-eqz p1, :cond_7

    .line 22
    iget-boolean p1, p0, Lcom/anythink/core/common/g;->Q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    .line 23
    monitor-exit p0

    return-void

    .line 24
    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/anythink/core/common/g;->A()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    invoke-interface {p1, v0}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;)V

    .line 26
    iget-object p1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    invoke-virtual {p1}, Lcom/anythink/core/common/v/b/d;->run()V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 29
    :cond_6
    :try_start_3
    invoke-direct {p0}, Lcom/anythink/core/common/g;->z()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/anythink/core/common/g;->o:Z

    if-nez p1, :cond_7

    .line 30
    invoke-direct {p0}, Lcom/anythink/core/common/g;->y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :cond_7
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private d(I)V
    .locals 8

    .line 26
    invoke-direct {p0}, Lcom/anythink/core/common/g;->u()Z

    .line 27
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->O:Z

    if-nez v0, :cond_3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "placementId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";result_callback:success;loadType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget v1, v1, Lcom/anythink/core/common/h/as;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-static {v1, v0}, Lcom/anythink/core/common/v/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/u;->a(Landroid/content/Context;)Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 33
    :try_start_1
    iget-object v2, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {v0, v2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V

    .line 35
    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {v0, v2}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V
    :try_end_1
    .catch Lcom/anythink/core/common/h/m; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    :try_start_2
    iget-object v2, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object v4, v2, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    iget-object v5, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    iget-object v0, v0, Lcom/anythink/core/common/h/m;->a:Lcom/anythink/core/api/AdError;

    invoke-virtual {v4, v3, v2, v5, v0}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/ce;Lcom/anythink/core/api/AdError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/w/e;)V

    .line 39
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object v2, v0, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    iget-boolean v4, p0, Lcom/anythink/core/common/g;->A:Z

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x2

    :goto_2
    iget-object v4, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v2, v3, v0, v4, p1}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/ce;I)V

    .line 40
    :goto_3
    iget-object p1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iput-object v1, p1, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    .line 41
    :cond_2
    invoke-static {}, Lcom/anythink/core/d/b;->a()Lcom/anythink/core/d/b;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/anythink/core/e/m;->ax()I

    move-result v5

    iget-object v6, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p1}, Lcom/anythink/core/common/w/g;->b()Lcom/anythink/core/common/h/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ac;->b()Lcom/anythink/core/common/h/by;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/by;)V

    :cond_3
    return-void
.end method

.method public static synthetic d(Lcom/anythink/core/common/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/common/g;->D()V

    return-void
.end method

.method private d(Lcom/anythink/core/common/h/by;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/w/g;->d(Lcom/anythink/core/common/h/by;)V

    .line 3
    iget-object v0, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)V

    .line 4
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/w/g;->e(Lcom/anythink/core/common/h/by;)V

    .line 5
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/w/g;->c(Lcom/anythink/core/common/h/by;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->g(Lcom/anythink/core/common/h/by;)V

    return-void
.end method

.method private declared-synchronized d(Lcom/anythink/core/common/w/e;)V
    .locals 5

    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    if-eqz p1, :cond_0

    .line 9
    iput-object v1, p1, Lcom/anythink/core/common/h/as;->f:Lcom/anythink/core/api/ATAdMultipleLoadedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 10
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/anythink/core/common/h/as;->f:Lcom/anythink/core/api/ATAdMultipleLoadedListener;

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->B:Lcom/anythink/core/common/h/by;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 13
    iget-object p1, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->f()Lcom/anythink/core/common/h/by;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->c()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->f()Lcom/anythink/core/common/h/by;

    move-result-object v3

    .line 16
    iget-object v4, p0, Lcom/anythink/core/common/g;->B:Lcom/anythink/core/common/h/by;

    invoke-static {v3, v4}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    move-result v4

    if-gez v4, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/anythink/core/common/w/e;->c()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    move-object p1, v3

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v0

    move-object p1, v1

    :goto_2
    if-eqz v2, :cond_6

    .line 18
    iput-object p1, p0, Lcom/anythink/core/common/g;->B:Lcom/anythink/core/common/h/by;

    .line 19
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-virtual {v0, p1, v2}, Lcom/anythink/core/common/w/g;->e(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)Lcom/anythink/core/api/ATRequestingInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 20
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object v0, v0, Lcom/anythink/core/common/h/as;->f:Lcom/anythink/core/api/ATAdMultipleLoadedListener;

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATAdMultipleLoadedListener;->onAdMultipleLoaded(Lcom/anythink/core/api/ATRequestingInfo;)V

    goto :goto_3

    :cond_6
    move-object p1, v1

    :cond_7
    :goto_3
    if-nez p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    iget-boolean v0, p0, Lcom/anythink/core/common/g;->m:Z

    iget-object v2, p0, Lcom/anythink/core/common/g;->B:Lcom/anythink/core/common/h/by;

    invoke-virtual {p1, v0, v2}, Lcom/anythink/core/common/w/g;->a(ZLcom/anythink/core/common/h/by;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object p1, p1, Lcom/anythink/core/common/h/as;->f:Lcom/anythink/core/api/ATAdMultipleLoadedListener;

    invoke-interface {p1, v1}, Lcom/anythink/core/api/ATAdMultipleLoadedListener;->onAdMultipleLoaded(Lcom/anythink/core/api/ATRequestingInfo;)V

    .line 23
    iget-object p1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iput-object v1, p1, Lcom/anythink/core/common/h/as;->f:Lcom/anythink/core/api/ATAdMultipleLoadedListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :cond_8
    monitor-exit p0

    return-void

    .line 25
    :cond_9
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static synthetic e(Lcom/anythink/core/common/g;)Lcom/anythink/core/common/h/by;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/common/g;->s()Lcom/anythink/core/common/h/by;

    move-result-object p0

    return-object p0
.end method

.method private e(I)V
    .locals 8

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "placementId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";result_callback:success;loadType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget v1, v1, Lcom/anythink/core/common/h/as;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-static {v1, v0}, Lcom/anythink/core/common/v/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/u;->a(Landroid/content/Context;)Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 18
    :try_start_1
    iget-object v2, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    if-eqz v2, :cond_0

    .line 19
    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {v0, v2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V

    .line 20
    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {v0, v2}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V
    :try_end_1
    .catch Lcom/anythink/core/common/h/m; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    iget-object v2, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object v4, v2, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    iget-object v5, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    iget-object v0, v0, Lcom/anythink/core/common/h/m;->a:Lcom/anythink/core/api/AdError;

    invoke-virtual {v4, v3, v2, v5, v0}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/ce;Lcom/anythink/core/api/AdError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/w/e;)V

    .line 24
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object v2, v0, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    iget-boolean v4, p0, Lcom/anythink/core/common/g;->A:Z

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x2

    :goto_2
    iget-object v4, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v2, v3, v0, v4, p1}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/ce;I)V

    .line 25
    :goto_3
    iget-object p1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iput-object v1, p1, Lcom/anythink/core/common/h/as;->e:Lcom/anythink/core/common/n;

    .line 26
    :cond_2
    invoke-static {}, Lcom/anythink/core/d/b;->a()Lcom/anythink/core/d/b;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/anythink/core/e/m;->ax()I

    move-result v5

    iget-object v6, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object p1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {p1}, Lcom/anythink/core/common/w/g;->b()Lcom/anythink/core/common/h/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ac;->b()Lcom/anythink/core/common/h/by;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/by;)V

    return-void
.end method

.method private declared-synchronized e(Lcom/anythink/core/common/h/by;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->al()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/anythink/core/common/w/g;->i(Lcom/anythink/core/common/h/by;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static synthetic f(Lcom/anythink/core/common/g;)Lcom/anythink/core/mg/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/common/g;->S:Lcom/anythink/core/mg/a/a;

    return-object p0
.end method

.method private f(Lcom/anythink/core/common/h/by;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->o:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->n:Z

    .line 4
    iget-object v0, p0, Lcom/anythink/core/common/g;->L:Lcom/anythink/core/common/v/b/d;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->L:Lcom/anythink/core/common/v/b/d;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->ah()Lcom/anythink/core/common/h/n;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/anythink/core/common/g;->u:Lcom/anythink/core/api/AdError;

    invoke-static {v0, v1, p1}, Lcom/anythink/core/common/u/f;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/h/by;)V

    .line 8
    iget-boolean p1, p0, Lcom/anythink/core/common/g;->O:Z

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/anythink/core/common/g;->u:Lcom/anythink/core/api/AdError;

    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/api/AdError;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/core/common/g;->f()V

    return-void
.end method

.method public static synthetic g(Lcom/anythink/core/common/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V

    return-void
.end method

.method private g(Lcom/anythink/core/common/h/by;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/anythink/core/common/w/g;->j(Lcom/anythink/core/common/h/by;)D

    move-result-wide v0

    .line 28
    iget-object v2, p0, Lcom/anythink/core/common/g;->P:Lcom/anythink/core/common/h/by;

    invoke-static {v2}, Lcom/anythink/core/common/v/o;->a(Lcom/anythink/core/common/h/by;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 29
    iput-object p1, p0, Lcom/anythink/core/common/g;->P:Lcom/anythink/core/common/h/by;

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized j()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/g;->C()Lcom/anythink/core/common/h/c;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->s:Z

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/anythink/core/common/g;->o:Z

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/anythink/core/common/h/c;->e()Lcom/anythink/core/api/bridge/ATBaseAdAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/anythink/core/common/h/c;->e()Lcom/anythink/core/api/bridge/ATBaseAdAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/h/by;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-static {v0}, Lcom/anythink/core/common/v/o;->a(Lcom/anythink/core/common/h/by;)D

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;DZ)V

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x9

    .line 41
    .line 42
    invoke-virtual {p0, v1, v0}, Lcom/anythink/core/common/g;->a(ILcom/anythink/core/common/h/by;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_1
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw v0
.end method

.method private declared-synchronized k()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/w/g;->b(Lcom/anythink/core/common/h/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    throw v0
.end method

.method private declared-synchronized l()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/w/g;->a(Z)Lcom/anythink/core/common/h/by;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/anythink/core/common/g;->s()Lcom/anythink/core/common/h/by;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Lcom/anythink/core/common/g;->m:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget v2, p0, Lcom/anythink/core/common/g;->x:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/anythink/core/common/h/ce;->g()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-lt v2, v3, :cond_0

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    :cond_1
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->p:Z

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/anythink/core/common/g;->k()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->l()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/anythink/core/common/g;->r()V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/anythink/core/common/g;->q()V

    .line 70
    .line 71
    .line 72
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->p:Z

    .line 73
    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/anythink/core/common/g;->z()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/anythink/core/common/g;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    :cond_4
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw v0
.end method

.method private m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->ah()Lcom/anythink/core/common/h/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/v/ah;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;IZ)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/a/c$a;->a(Ljava/lang/String;Lcom/anythink/core/common/h/n;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/core/common/h/ce;->i()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/anythink/core/common/v/b/d;

    .line 14
    .line 15
    sget-object v1, Lcom/anythink/core/common/v/b/e;->di:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Lcom/anythink/core/common/g$3;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/anythink/core/common/g$3;-><init>(Lcom/anythink/core/common/g;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/v/b/d;

    .line 26
    .line 27
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/v/b/d;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/anythink/core/common/h/ce;->i()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private o()Lcom/anythink/core/common/v/b/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/anythink/core/common/v/b/d;

    .line 2
    .line 3
    sget-object v1, Lcom/anythink/core/common/v/b/e;->dj:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Lcom/anythink/core/common/g$4;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/anythink/core/common/g$4;-><init>(Lcom/anythink/core/common/g;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private declared-synchronized p()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->o:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->e()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->f()Lcom/anythink/core/common/h/by;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/by;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {p0, v0, v1}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/by;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0
.end method

.method private declared-synchronized q()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->g()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->al()Z

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/anythink/core/common/g;->m:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/w/g;->b(Z)Lcom/anythink/core/common/h/by;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/anythink/core/common/h/by;->Y()Lcom/anythink/core/common/h/ad;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    iget-object v2, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/anythink/core/common/w/j;->h()V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/anythink/core/common/g;->S:Lcom/anythink/core/mg/a/a;

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/anythink/core/mg/a/a;->a()Lcom/anythink/core/mg/api/MgComparedResult;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    iget-object v2, p0, Lcom/anythink/core/common/g;->S:Lcom/anythink/core/mg/a/a;

    .line 71
    .line 72
    new-instance v3, Lcom/anythink/core/common/g$7;

    .line 73
    .line 74
    invoke-direct {v3, p0, v1, v0}, Lcom/anythink/core/common/g$7;-><init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/by;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Lcom/anythink/core/mg/a/a;->a(Lcom/anythink/core/mg/a/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    :try_start_3
    invoke-static {v1, v0, v2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/by;Lcom/anythink/core/mg/api/MgComparedResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :cond_4
    const/4 v2, 0x0

    .line 90
    :try_start_4
    invoke-static {v1, v0, v2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/by;Lcom/anythink/core/mg/api/MgComparedResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    .line 92
    .line 93
    :cond_5
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :cond_6
    :goto_0
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    throw v0
.end method

.method private declared-synchronized r()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->e()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->b()Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->ah()Lcom/anythink/core/common/h/n;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    throw v0
.end method

.method private s()Lcom/anythink/core/common/h/by;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/core/common/h/ce;->j()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/anythink/core/common/w/g;->a(Ljava/util/Map;)Lcom/anythink/core/common/h/by;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    .line 23
    throw v1

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->u()Lcom/anythink/core/common/h/by;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-gez v2, :cond_1

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    return-object v0
.end method

.method private declared-synchronized t()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->h()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method private declared-synchronized u()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return v1

    .line 23
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/anythink/core/common/h/by;->bz()Z

    .line 28
    .line 29
    .line 30
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return v1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->f()V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->Q:Z

    .line 44
    .line 45
    iget-object v1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/anythink/core/common/w/g;->k()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lcom/anythink/core/common/w/g;->b(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/anythink/core/common/g$9;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/anythink/core/common/g$9;-><init>(Lcom/anythink/core/common/g;)V

    .line 59
    .line 60
    .line 61
    const/16 v3, 0x8

    .line 62
    .line 63
    invoke-direct {p0, v3, v1, v2}, Lcom/anythink/core/common/g;->a(ILjava/util/List;Lcom/anythink/core/common/j$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return v0

    .line 68
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    throw v0
.end method

.method private declared-synchronized v()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/anythink/core/common/h/by;->bz()Z

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/anythink/core/common/g;->E:Ljava/util/List;

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->q:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_4
    const/4 v0, 0x1

    .line 50
    :try_start_4
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->q:Z

    .line 51
    .line 52
    iget-object v0, p0, Lcom/anythink/core/common/g;->E:Ljava/util/List;

    .line 53
    .line 54
    new-instance v1, Lcom/anythink/core/common/g$10;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/anythink/core/common/g$10;-><init>(Lcom/anythink/core/common/g;)V

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x7

    .line 60
    invoke-direct {p0, v2, v0, v1}, Lcom/anythink/core/common/g;->a(ILjava/util/List;Lcom/anythink/core/common/j$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :cond_5
    :goto_0
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    throw v0
.end method

.method private w()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/anythink/core/common/g;->A()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/anythink/core/common/v/b/d;->run()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return v0
.end method

.method private x()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/anythink/core/common/g;->f(Lcom/anythink/core/common/h/by;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private y()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/common/g;->C()Lcom/anythink/core/common/h/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/anythink/core/common/h/c;->e()Lcom/anythink/core/api/bridge/ATBaseAdAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/anythink/core/common/h/c;->e()Lcom/anythink/core/api/bridge/ATBaseAdAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/h/by;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    invoke-static {v1}, Lcom/anythink/core/common/v/o;->a(Lcom/anythink/core/common/h/by;)D

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;DZ)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x9

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/g;->a(ILcom/anythink/core/common/h/by;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-direct {p0, v1}, Lcom/anythink/core/common/g;->f(Lcom/anythink/core/common/h/by;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private declared-synchronized z()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->s()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->a()V

    .line 13
    iget-object v0, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 15
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/w/e;

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Lcom/anythink/core/common/w/e;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->o:Z

    .line 21
    invoke-direct {p0}, Lcom/anythink/core/common/g;->y()V

    .line 22
    :cond_2
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    .line 24
    :try_start_3
    monitor-exit v0

    throw v1

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(DLcom/anythink/core/common/h/by;)V
    .locals 2

    monitor-enter p0

    .line 317
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/g;->D()V

    .line 318
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->g()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/anythink/core/common/h/by;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/j;->h()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 320
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/anythink/core/common/g;->N:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 321
    iput-wide p1, p0, Lcom/anythink/core/common/g;->N:D

    .line 322
    :cond_1
    iget-object p1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/e/m;->ap()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    .line 323
    iget-object p1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-virtual {p1}, Lcom/anythink/core/common/w/j;->d()V

    .line 324
    iget-object p1, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    if-eqz p1, :cond_2

    .line 325
    iget-object p2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 326
    :cond_2
    const-string p1, "AdManage is null--notifyimpression"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Id:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--format:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/e/m;->ap()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/u/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_1
    iget-boolean p1, p0, Lcom/anythink/core/common/g;->o:Z

    if-nez p1, :cond_3

    const/16 p1, 0xa

    .line 328
    invoke-virtual {p0, p1, p3}, Lcom/anythink/core/common/g;->a(ILcom/anythink/core/common/h/by;)V

    .line 329
    :cond_3
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 331
    :cond_4
    monitor-exit p0

    return-void

    .line 332
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(ILcom/anythink/core/common/h/by;)V
    .locals 8

    .line 232
    invoke-direct {p0}, Lcom/anythink/core/common/g;->t()V

    .line 233
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/v/b/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/v/b/d;

    invoke-interface {v0, v2}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;)V

    .line 235
    iput-object v1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/v/b/d;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v4}, Lcom/anythink/core/common/w/g;->b()Lcom/anythink/core/common/h/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/h/ac;->b()Lcom/anythink/core/common/h/by;

    move-result-object v4

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    .line 237
    invoke-virtual {v0}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    invoke-static {v0, v4}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    move-result v0

    if-gez v0, :cond_3

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    invoke-virtual {v0}, Lcom/anythink/core/common/a/c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object p1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    invoke-virtual {p1}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    invoke-virtual {v0}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/v/o;->a(Lcom/anythink/core/common/h/by;)D

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;DZ)V

    .line 240
    iget-object p1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    invoke-virtual {p1}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->bz()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/16 p1, 0xb

    .line 241
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/core/common/h/by;->bz()Z

    move-result v0

    if-eqz v0, :cond_4

    move p1, v2

    :cond_4
    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_5

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :pswitch_0
    move v0, v3

    .line 242
    :goto_1
    iput-boolean v3, p0, Lcom/anythink/core/common/g;->o:Z

    .line 243
    iput-boolean v3, p0, Lcom/anythink/core/common/g;->n:Z

    .line 244
    iget-object v2, p0, Lcom/anythink/core/common/g;->L:Lcom/anythink/core/common/v/b/d;

    if-eqz v2, :cond_6

    .line 245
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/core/common/g;->L:Lcom/anythink/core/common/v/b/d;

    invoke-interface {v2, v4}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;)V

    .line 246
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 247
    iget-wide v6, p0, Lcom/anythink/core/common/g;->v:J

    sub-long v6, v4, v6

    .line 248
    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/h/n;->ah()Lcom/anythink/core/common/h/n;

    move-result-object v2

    .line 249
    invoke-virtual {v2, v3}, Lcom/anythink/core/common/h/n;->b(Z)V

    .line 250
    invoke-virtual {v2, v6, v7}, Lcom/anythink/core/common/h/n;->s(J)V

    .line 251
    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/h/n;->m(J)V

    .line 252
    iget-boolean v4, p0, Lcom/anythink/core/common/g;->A:Z

    if-eqz v4, :cond_7

    const/4 v3, 0x2

    .line 253
    invoke-virtual {v2, v3}, Lcom/anythink/core/common/h/n;->b(I)V

    goto :goto_2

    .line 254
    :cond_7
    invoke-virtual {v2, v3}, Lcom/anythink/core/common/h/n;->b(I)V

    :goto_2
    if-eqz v0, :cond_8

    .line 255
    invoke-virtual {v2, p1}, Lcom/anythink/core/common/h/n;->L(I)V

    :cond_8
    if-eqz p2, :cond_9

    .line 256
    invoke-virtual {v2, p2}, Lcom/anythink/core/common/h/n;->a(Lcom/anythink/core/common/h/by;)V

    .line 257
    :cond_9
    iget-object p2, p0, Lcom/anythink/core/common/g;->S:Lcom/anythink/core/mg/a/a;

    if-eqz p2, :cond_a

    .line 258
    new-instance v0, Lcom/anythink/core/common/g$8;

    invoke-direct {v0, p0, v2, p1}, Lcom/anythink/core/common/g$8;-><init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/h/n;I)V

    invoke-virtual {p2, v0}, Lcom/anythink/core/mg/a/a;->a(Lcom/anythink/core/mg/a/b;)V

    .line 259
    iget-object p1, p0, Lcom/anythink/core/common/g;->S:Lcom/anythink/core/mg/a/a;

    iget-object p2, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object v0, p0, Lcom/anythink/core/common/g;->P:Lcom/anythink/core/common/h/by;

    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/mg/a/a;->a(Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/by;)V

    return-void

    .line 260
    :cond_a
    const-string p1, ""

    const-string p2, "The MgComparePriceHandler can not be null."

    const-string v0, "4001"

    invoke-static {v0, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/g;->u:Lcom/anythink/core/api/AdError;

    .line 261
    invoke-direct {p0, v1}, Lcom/anythink/core/common/g;->f(Lcom/anythink/core/common/h/by;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 333
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "50"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 334
    :pswitch_0
    iget-object p2, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget-object p2, p2, Lcom/anythink/core/common/h/as;->d:Lcom/anythink/core/common/d/c;

    instance-of v0, p2, Lcom/anythink/core/common/d/d;

    if-eqz v0, :cond_3

    .line 335
    check-cast p2, Lcom/anythink/core/common/d/d;

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/d/d;->onPrepareAdapterLoad(Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V

    return-void

    .line 336
    :pswitch_1
    iget-object p2, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    iget p2, p2, Lcom/anythink/core/common/h/as;->h:I

    invoke-virtual {p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->setFetchAdTimeout(I)V

    return-void

    .line 337
    :pswitch_2
    invoke-virtual {p1}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/h/by;

    move-result-object p2

    .line 338
    invoke-virtual {p2}, Lcom/anythink/core/common/h/by;->E()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->setRequestNum(I)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_2
        0x34 -> :sswitch_1
        0x69b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/anythink/core/common/d/c;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/d/c;

    return-void
.end method

.method public final a(Lcom/anythink/core/common/h/as;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/h/as;

    return-void
.end method

.method public final a(Lcom/anythink/core/common/h;)V
    .locals 4

    .line 92
    iput-object p1, p0, Lcom/anythink/core/common/g;->T:Lcom/anythink/core/common/h;

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/g;->v:J

    .line 94
    iget-object p1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ce;->h()J

    move-result-wide v0

    .line 95
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/core/common/g;->L:Lcom/anythink/core/common/v/b/d;

    invoke-interface {p1, v2, v0, v1}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;J)V

    .line 96
    iget-object p1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/ce;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 97
    new-instance p1, Lcom/anythink/core/common/v/b/d;

    sget-object v0, Lcom/anythink/core/common/v/b/e;->di:Ljava/lang/String;

    new-instance v1, Lcom/anythink/core/common/g$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/g$3;-><init>(Lcom/anythink/core/common/g;)V

    invoke-direct {p1, v0, v1}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/v/b/d;

    .line 98
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/v/b/d;

    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/ce;->i()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/w/h;)V
    .locals 2

    .line 84
    new-instance v0, Lcom/anythink/core/common/w/g;

    iget-object v1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-direct {v0, p1, v1}, Lcom/anythink/core/common/w/g;-><init>(Lcom/anythink/core/common/w/h;Lcom/anythink/core/common/w/j;)V

    iput-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    .line 85
    iget-boolean v0, p1, Lcom/anythink/core/common/w/h;->i:Z

    iput-boolean v0, p0, Lcom/anythink/core/common/g;->m:Z

    .line 86
    iget-object v0, p1, Lcom/anythink/core/common/w/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/anythink/core/common/w/h;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/anythink/core/common/w/h;->c:Lcom/anythink/core/common/h/ce;

    iput-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    .line 89
    iget v0, p1, Lcom/anythink/core/common/w/h;->j:I

    iput v0, p0, Lcom/anythink/core/common/g;->c:I

    .line 90
    iget-object v0, p1, Lcom/anythink/core/common/w/h;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/anythink/core/common/w/g;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/g;->t:Ljava/lang/String;

    .line 91
    iget-boolean p1, p1, Lcom/anythink/core/common/w/h;->q:Z

    iput-boolean p1, p0, Lcom/anythink/core/common/g;->U:Z

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/bridge/ATBaseAdAdapter;",
            "Ljava/util/List<",
            "+",
            "Lcom/anythink/core/api/BaseAd;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->getTrackingInfo()Lcom/anythink/core/common/h/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->N()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_8

    .line 168
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/anythink/core/common/w/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_1

    .line 169
    monitor-exit p0

    return-void

    .line 170
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->getTrackingInfo()Lcom/anythink/core/common/h/n;

    move-result-object v5

    .line 171
    invoke-virtual {p2}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/h/by;

    move-result-object v4

    .line 172
    invoke-direct {p0, v4}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;)V

    .line 173
    invoke-direct {p0}, Lcom/anythink/core/common/g;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p3, :cond_2

    .line 174
    :try_start_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 175
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/core/api/BaseAd;

    .line 176
    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move-object v7, p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 177
    :try_start_4
    invoke-direct/range {v1 .. v7}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/w/e;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;Z[Lcom/anythink/core/api/BaseAd;)V

    move-object p1, v2

    move-object p2, v5

    .line 178
    invoke-virtual {v4}, Lcom/anythink/core/common/h/by;->O()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {p2}, Lcom/anythink/core/common/h/n;->ab()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    .line 180
    invoke-static {p2}, Lcom/anythink/core/common/u/f;->a(Lcom/anythink/core/common/h/n;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto/16 :goto_8

    .line 181
    :cond_3
    :goto_4
    invoke-direct {p0, v4}, Lcom/anythink/core/common/g;->e(Lcom/anythink/core/common/h/by;)V

    .line 182
    invoke-virtual {v3}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->getTrackingInfo()Lcom/anythink/core/common/h/n;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V

    .line 183
    invoke-virtual {v4}, Lcom/anythink/core/common/h/by;->k()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/core/common/v/o;->e(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 184
    iget-object v0, v1, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/anythink/core/common/h/n;->c(J)V

    goto :goto_5

    .line 185
    :cond_4
    iget-object v0, v1, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/anythink/core/common/h/n;->b(J)V

    .line 186
    :goto_5
    iget-object v0, v1, Lcom/anythink/core/common/g;->S:Lcom/anythink/core/mg/a/a;

    const/4 v9, 0x2

    if-eqz v0, :cond_7

    .line 187
    invoke-virtual {v0}, Lcom/anythink/core/mg/a/a;->a()Lcom/anythink/core/mg/api/MgComparedResult;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 188
    invoke-virtual {v0}, Lcom/anythink/core/mg/api/MgComparedResult;->isMgWin()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 189
    invoke-virtual {v0}, Lcom/anythink/core/mg/api/MgComparedResult;->getMgAdInfo()Lcom/anythink/core/mg/api/MgAdInfo;

    move-result-object v2

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/anythink/core/mg/api/MgComparedResult;->getMgAdInfo()Lcom/anythink/core/mg/api/MgAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/mg/api/MgAdInfo;->getUSDEcpm()D

    move-result-wide v7

    goto :goto_6

    :cond_5
    move-wide v7, v5

    :goto_6
    cmpl-double v0, v7, v5

    if-lez v0, :cond_7

    .line 190
    invoke-static {v4}, Lcom/anythink/core/common/v/o;->a(Lcom/anythink/core/common/h/by;)D

    move-result-wide v5

    cmpg-double v0, v5, v7

    if-gez v0, :cond_7

    .line 191
    invoke-virtual {v4}, Lcom/anythink/core/common/h/by;->Y()Lcom/anythink/core/common/h/ad;

    move-result-object p3

    .line 192
    invoke-virtual {v4}, Lcom/anythink/core/common/h/by;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p3, :cond_6

    .line 193
    new-instance v0, Lcom/anythink/core/common/h/ay;

    invoke-direct {v0, v9, v4, p2}, Lcom/anythink/core/common/h/ay;-><init>(ILcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)V

    const/4 v2, 0x1

    const/16 v3, 0x23

    invoke-static {p3, v0, v2, v3}, Lcom/anythink/core/c/d/c;->a(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/ay;ZI)V

    .line 194
    :cond_6
    const-string p3, "1"

    invoke-static {p2, p3}, Lcom/anythink/core/common/u/f;->b(Lcom/anythink/core/common/h/n;Ljava/lang/String;)V

    goto :goto_7

    .line 195
    :cond_7
    iget-object v0, v1, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->e()Lcom/anythink/core/common/a;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 196
    iget-object v0, v1, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->e()Lcom/anythink/core/common/a;

    move-result-object v2

    move-object v0, v4

    move-object v4, v3

    iget-object v3, v1, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    .line 197
    invoke-static {v0}, Lcom/anythink/core/common/v/ai;->c(Lcom/anythink/core/common/h/by;)J

    move-result-wide v6

    .line 198
    iget-object v0, v1, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/ce;->p()I

    move-result v8

    move-object v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Ljava/util/List;JI)Ljava/util/List;

    .line 199
    :cond_8
    :goto_7
    iget-object p3, v1, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/anythink/core/common/u/e;->a(Landroid/content/Context;)Lcom/anythink/core/common/u/e;

    invoke-static {v9, p2}, Lcom/anythink/core/common/u/e;->a(ILcom/anythink/core/common/h/bx;)V

    .line 200
    sget-object p3, Lcom/anythink/core/common/d/i$s;->b:Ljava/lang/String;

    sget-object v0, Lcom/anythink/core/common/d/i$s;->m:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p2, p3, v0, v2}, Lcom/anythink/core/common/v/aa;->a(Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/w/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto/16 :goto_3

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/common/w/b;)V
    .locals 10

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p2, Lcom/anythink/core/common/w/b;->f:Lcom/anythink/core/common/h/n;

    .line 290
    iget-object v1, p2, Lcom/anythink/core/common/w/b;->g:Lcom/anythink/core/common/h/by;

    .line 291
    iget-object v2, p2, Lcom/anythink/core/common/w/b;->d:Lcom/anythink/core/api/AdError;

    .line 292
    iget-wide v3, p2, Lcom/anythink/core/common/w/b;->e:J

    .line 293
    iget v5, p2, Lcom/anythink/core/common/w/b;->h:I

    .line 294
    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->N()Ljava/lang/String;

    move-result-object v6

    .line 295
    iget-object v7, p0, Lcom/anythink/core/common/g;->D:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/w/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 296
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;)V

    .line 298
    iget-object v7, p0, Lcom/anythink/core/common/g;->u:Lcom/anythink/core/api/AdError;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->Z()I

    move-result v8

    invoke-virtual {v0}, Lcom/anythink/core/common/h/bx;->aN()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9, v2}, Lcom/anythink/core/api/AdError;->putNetworkErrorMsg(Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    if-nez v5, :cond_1

    .line 299
    iget p2, p2, Lcom/anythink/core/common/w/b;->c:I

    invoke-static {v0, p2, v2, v3, v4}, Lcom/anythink/core/common/u/f;->a(Lcom/anythink/core/common/h/n;ILcom/anythink/core/api/AdError;J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 300
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "requestId="

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", networkFirmId="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->Z()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", adSourceId="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->N()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", format="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/bx;->aS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1}, Lcom/anythink/core/common/h/by;->Y()Lcom/anythink/core/common/h/ad;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 302
    const-string v6, ", hasShow="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/anythink/core/common/h/ad;->o()Z

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", bidId="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/anythink/core/common/h/z;->token:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", tpBidId="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/anythink/core/common/h/ad;->g:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 304
    const-string v5, "unexpected request failed"

    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/common/d/s;->r()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p2, v6}, Lcom/anythink/core/common/u/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_4

    .line 305
    iget-object p2, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/d/c;

    if-eqz p2, :cond_3

    .line 306
    invoke-virtual {p2, v0, v2}, Lcom/anythink/core/common/d/c;->onAdSourceLoadFail(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;)V

    .line 307
    :cond_3
    sget p2, Lcom/anythink/core/common/w/a/a$b;->c:I

    invoke-direct {p0, v0, v2, p2, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;ILcom/anythink/core/common/h/by;)V

    .line 308
    :cond_4
    sget-object p2, Lcom/anythink/core/common/d/i$s;->b:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/d/i$s;->n:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v3, v2}, Lcom/anythink/core/common/v/aa;->a(Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object p2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-direct {p0, v1, p2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/w/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 39
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/h/by;

    .line 40
    invoke-direct {v1, v4}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/by;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    if-eqz p4, :cond_4

    .line 41
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 42
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/h/by;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 43
    :try_start_1
    invoke-virtual {v4}, Lcom/anythink/core/common/h/by;->n()I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_2

    .line 44
    iget-object v5, v1, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/w/g;->f(Lcom/anythink/core/common/h/by;)V

    .line 45
    iget-object v5, v1, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {v4, v5}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)V

    :cond_2
    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {v4}, Lcom/anythink/core/common/h/by;->B()I

    move-result v5

    const/16 v6, -0xb

    if-eq v5, v6, :cond_3

    .line 47
    invoke-virtual {v4}, Lcom/anythink/core/common/h/by;->B()I

    move-result v5

    const/16 v6, -0xd

    if-ne v5, v6, :cond_1

    .line 48
    :cond_3
    iget-object v5, v1, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/w/g;->f(Lcom/anythink/core/common/h/by;)V

    .line 49
    iget-object v5, v1, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-static {v4, v5}, Lcom/anythink/core/common/w/g;->b(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 50
    :try_start_2
    iget-object v3, v1, Lcom/anythink/core/common/g;->E:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    if-eqz v0, :cond_14

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_a

    .line 52
    :cond_6
    iget-object v2, v1, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-virtual {v2}, Lcom/anythink/core/common/w/j;->f()V

    .line 53
    iget-object v2, v1, Lcom/anythink/core/common/g;->T:Lcom/anythink/core/common/h;

    const/4 v3, 0x0

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lcom/anythink/core/common/h;->e()Z

    move-result v2

    .line 54
    :goto_2
    iget-object v4, v1, Lcom/anythink/core/common/g;->T:Lcom/anythink/core/common/h;

    if-nez v4, :cond_8

    move v4, v3

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Lcom/anythink/core/common/h;->d()Z

    move-result v4

    .line 55
    :goto_3
    iget-boolean v5, v1, Lcom/anythink/core/common/g;->m:Z

    if-nez v5, :cond_b

    if-eqz v4, :cond_9

    if-nez v2, :cond_a

    :cond_9
    iget-boolean v5, v1, Lcom/anythink/core/common/g;->l:Z

    if-eqz v5, :cond_a

    iget-boolean v5, v1, Lcom/anythink/core/common/g;->U:Z

    if-eqz v5, :cond_b

    .line 56
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/anythink/core/common/g;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 58
    :cond_b
    :try_start_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/core/common/h/by;

    .line 59
    iget-object v6, v1, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/w/j;

    invoke-static {v5, v6}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/w/j;)Z

    move-result v6

    if-eqz v2, :cond_c

    if-nez v4, :cond_c

    .line 60
    iget-object v2, v1, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v2, v5, v3}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/by;Z)Z

    move-result v2

    goto :goto_4

    .line 61
    :cond_c
    iget-object v2, v1, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    const/4 v4, 0x1

    .line 62
    invoke-virtual {v2, v5, v4}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/by;Z)Z

    move-result v2

    :goto_4
    if-nez v6, :cond_d

    if-eqz v2, :cond_13

    .line 63
    :cond_d
    iget-boolean v4, v1, Lcom/anythink/core/common/g;->o:Z

    if-nez v4, :cond_e

    .line 64
    const-string v4, "1"

    :goto_5
    move-object v14, v4

    goto :goto_6

    .line 65
    :cond_e
    iget-boolean v4, v1, Lcom/anythink/core/common/g;->n:Z

    if-eqz v4, :cond_f

    const-string v4, "2"

    goto :goto_5

    :cond_f
    const-string v4, "3"

    goto :goto_5

    .line 66
    :goto_6
    const-string v4, "1"

    if-eqz v6, :cond_11

    .line 67
    const-string v4, "1"

    :cond_10
    :goto_7
    move-object v15, v4

    goto :goto_8

    :cond_11
    if-eqz v2, :cond_10

    .line 68
    const-string v4, "2"

    goto :goto_7

    .line 69
    :goto_8
    iget-object v7, v1, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-virtual {v5}, Lcom/anythink/core/common/h/by;->n()I

    move-result v8

    invoke-virtual {v5}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Lcom/anythink/core/common/v/o;->a(Lcom/anythink/core/common/h/by;)D

    move-result-wide v10

    invoke-static {v5}, Lcom/anythink/core/common/v/o;->b(Lcom/anythink/core/common/h/by;)D

    move-result-wide v12

    invoke-virtual {v5}, Lcom/anythink/core/common/h/by;->bB()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Lcom/anythink/core/common/h/by;->bC()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v7 .. v17}, Lcom/anythink/core/common/u/f;->a(Lcom/anythink/core/common/h/n;ILjava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5}, Lcom/anythink/core/common/h/by;->av()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 71
    iput-object v5, v1, Lcom/anythink/core/common/g;->M:Lcom/anythink/core/common/h/by;

    .line 72
    :cond_12
    invoke-direct {v1, v5}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/h/by;)V

    .line 73
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 74
    iget-object v2, v1, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v2, v5}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/by;)V

    const/4 v2, 0x3

    .line 75
    invoke-direct {v1, v5, v2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/by;I)V

    .line 76
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/anythink/core/common/g;->a(Ljava/util/List;)V

    .line 77
    invoke-direct {v1}, Lcom/anythink/core/common/g;->E()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :goto_9
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 79
    :cond_14
    :goto_a
    monitor-exit p0

    return-void
.end method

.method public final b()V
    .locals 6

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->l:Z

    .line 8
    iget-object v1, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    iget-boolean v2, p0, Lcom/anythink/core/common/g;->m:Z

    iget-object v3, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v3}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/e/m;->L()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/core/common/w/g;->a(ZJ)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 9
    new-instance v3, Lcom/anythink/core/common/v/b/d;

    sget-object v4, Lcom/anythink/core/common/v/b/e;->dj:Ljava/lang/String;

    new-instance v5, Lcom/anythink/core/common/g$4;

    invoke-direct {v5, p0}, Lcom/anythink/core/common/g$4;-><init>(Lcom/anythink/core/common/g;)V

    invoke-direct {v3, v4, v5}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 10
    iput-object v3, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    .line 11
    :cond_0
    iget-object v3, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v3}, Lcom/anythink/core/common/w/g;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/anythink/core/common/g;->m:Z

    if-eqz v3, :cond_1

    .line 12
    invoke-direct {p0}, Lcom/anythink/core/common/g;->u()Z

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v3}, Lcom/anythink/core/common/w/g;->r()Ljava/util/List;

    move-result-object v3

    .line 14
    invoke-direct {p0, v3, v0}, Lcom/anythink/core/common/g;->a(Ljava/util/List;I)V

    .line 15
    iget-object v3, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    if-eqz v3, :cond_2

    .line 16
    invoke-static {}, Lcom/anythink/core/common/t/c;->a()Lcom/anythink/core/common/t/a;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/v/b/d;

    invoke-interface {v3, v4, v1, v2}, Lcom/anythink/core/common/t/a;->a(Lcom/anythink/core/common/v/b/d;J)V

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    if-eqz v1, :cond_3

    .line 18
    iget-object v1, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/n;->ah()Lcom/anythink/core/common/h/n;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    invoke-virtual {v2}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/anythink/core/common/v/ah;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;IZ)V

    .line 20
    iget-object v0, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/common/a/c$a;->a(Ljava/lang/String;Lcom/anythink/core/common/h/n;)V

    :cond_3
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/core/common/g;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->l()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->r:Z

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0}, Lcom/anythink/core/common/g;->c(Lcom/anythink/core/common/w/e;)V

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 8
    :try_start_0
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->m:Z

    .line 9
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->r:Z

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/anythink/core/common/g;->c(Lcom/anythink/core/common/w/e;)V

    .line 11
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->O:Z

    .line 12
    iget-object v0, p0, Lcom/anythink/core/common/g;->V:Lcom/anythink/core/common/f;

    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--format:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/e/m;->ap()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/s;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdManage is null--notifycancel"

    invoke-static {v2, v0, v1}, Lcom/anythink/core/common/u/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v0}, Lcom/anythink/core/common/w/g;->i()Ljava/util/List;

    move-result-object v0

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/w/f;

    .line 6
    invoke-virtual {v1}, Lcom/anythink/core/common/w/f;->a()Lcom/anythink/core/common/h/by;

    move-result-object v1

    .line 7
    iget-boolean v2, p0, Lcom/anythink/core/common/g;->o:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/anythink/core/common/g;->x:I

    iget-object v3, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v3}, Lcom/anythink/core/common/h/ce;->g()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    .line 8
    invoke-static {v1, v2}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 9
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v2, v1}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/by;)V

    const/4 v2, 0x4

    .line 10
    invoke-direct {p0, v1, v2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/by;I)V

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/w/f;

    .line 13
    invoke-virtual {v2}, Lcom/anythink/core/common/w/f;->a()Lcom/anythink/core/common/h/by;

    move-result-object v3

    .line 14
    iget-boolean v4, p0, Lcom/anythink/core/common/g;->o:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/anythink/core/common/g;->x:I

    iget-object v5, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v5}, Lcom/anythink/core/common/h/ce;->g()I

    move-result v5

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lcom/anythink/core/common/g;->y:Lcom/anythink/core/common/h/by;

    .line 15
    invoke-static {v3, v4}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    move-result v4

    if-gez v4, :cond_2

    .line 16
    :cond_3
    invoke-virtual {v2}, Lcom/anythink/core/common/w/f;->b()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/anythink/core/common/g;->I:Lcom/anythink/core/common/w/g;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/w/g;->a(Lcom/anythink/core/common/h/by;)V

    .line 18
    invoke-direct {p0, v3, v4}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/h/by;I)V

    goto :goto_1

    .line 19
    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;I)V

    .line 20
    invoke-direct {p0, v2}, Lcom/anythink/core/common/g;->c(I)V

    goto :goto_1

    .line 21
    :cond_6
    invoke-direct {p0, v3, v4}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/by;I)V

    .line 22
    invoke-direct {p0, v2}, Lcom/anythink/core/common/g;->c(I)V

    goto :goto_1

    .line 23
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V

    return-void

    .line 26
    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public final h()Lcom/anythink/core/common/a/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lcom/anythink/core/e/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/h/ce;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
