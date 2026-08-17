.class public final Lcom/anythink/core/common/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/g;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Z

.field protected e:Ljava/lang/String;

.field protected f:I

.field g:Lcom/anythink/core/common/n;

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/ca;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/anythink/core/common/p/c;

.field j:Lcom/anythink/core/common/p/d;

.field k:Lcom/anythink/core/common/h$d;

.field volatile l:Lcom/anythink/core/common/h/bp;

.field private final m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:J

.field private q:Z

.field private final r:Lcom/anythink/core/common/a;

.field private final s:Lcom/anythink/core/common/a/c;

.field private final t:Lcom/anythink/core/c/f;

.field private final u:Lcom/anythink/core/common/w;

.field private final v:Ljava/lang/String;

.field private w:Lcom/anythink/core/api/ATAdRequest;

.field private x:Lcom/anythink/core/common/h/as;

.field private final y:Ljava/lang/Object;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/core/common/f;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/core/common/f;->m:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/anythink/core/common/f;->n:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/anythink/core/common/f;->q:Z

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput v1, p0, Lcom/anythink/core/common/f;->f:I

    .line 23
    .line 24
    new-instance v1, Lcom/anythink/core/common/f$5;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/anythink/core/common/f$5;-><init>(Lcom/anythink/core/common/f;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/h$d;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/Object;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/anythink/core/common/f;->y:Ljava/lang/Object;

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/anythink/core/common/f;->z:Z

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p3, p0, Lcom/anythink/core/common/f;->v:Ljava/lang/String;

    .line 49
    .line 50
    new-instance p1, Lcom/anythink/core/common/a;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lcom/anythink/core/common/a;-><init>(Lcom/anythink/core/common/f;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    .line 56
    .line 57
    new-instance p1, Lcom/anythink/core/common/a/c;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lcom/anythink/core/common/a/c;-><init>(Lcom/anythink/core/common/f;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/anythink/core/common/f;->s:Lcom/anythink/core/common/a/c;

    .line 63
    .line 64
    new-instance p1, Lcom/anythink/core/c/f;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/anythink/core/c/f;-><init>(Lcom/anythink/core/common/f;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/anythink/core/common/f;->t:Lcom/anythink/core/c/f;

    .line 70
    .line 71
    new-instance p1, Lcom/anythink/core/common/w;

    .line 72
    .line 73
    invoke-direct {p1}, Lcom/anythink/core/common/w;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/anythink/core/common/f;->u:Lcom/anythink/core/common/w;

    .line 77
    .line 78
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    .line 80
    const/4 p2, 0x5

    .line 81
    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    .line 86
    new-instance p1, Ljava/util/ArrayList;

    .line 87
    .line 88
    const/4 p2, 0x2

    .line 89
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    .line 97
    .line 98
    new-instance p1, Lcom/anythink/core/common/h/bp;

    .line 99
    .line 100
    invoke-direct {p1}, Lcom/anythink/core/common/h/bp;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lcom/anythink/core/common/f;->l:Lcom/anythink/core/common/h/bp;

    .line 104
    .line 105
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-nez p1, :cond_0

    .line 114
    .line 115
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object p2, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/d/s;->a(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    :cond_0
    return-void
.end method

.method private A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

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
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method private B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/anythink/core/common/p/d;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method private C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/anythink/core/common/p/d;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/anythink/core/common/p/d;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private E()Lcom/anythink/core/common/h/bp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->l:Lcom/anythink/core/common/h/bp;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/anythink/core/common/f;->y:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/f;->l:Lcom/anythink/core/common/h/bp;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/anythink/core/common/h/bp;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/anythink/core/common/h/bp;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/anythink/core/common/f;->l:Lcom/anythink/core/common/h/bp;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/anythink/core/common/f;->l:Lcom/anythink/core/common/h/bp;

    .line 27
    .line 28
    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATAdRequest;)Lcom/anythink/core/api/ATAdRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/f;->w:Lcom/anythink/core/api/ATAdRequest;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;
    .locals 4

    .line 10
    invoke-static {}, Lcom/anythink/core/common/t;->a()Lcom/anythink/core/common/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    if-nez v0, :cond_5

    .line 11
    const-class v0, Lcom/anythink/core/common/f;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/t;->a()Lcom/anythink/core/common/t;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/anythink/core/common/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v1

    if-nez v1, :cond_4

    .line 13
    new-instance v1, Lcom/anythink/core/common/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v2, 0x31

    const/4 v3, 0x1

    if-eq p0, v2, :cond_1

    const/16 v2, 0x33

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "3"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string p0, "1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    new-instance p0, Lcom/anythink/core/common/p/a;

    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/p/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-object p0, v1, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    .line 17
    :goto_2
    invoke-static {}, Lcom/anythink/core/common/t;->a()Lcom/anythink/core/common/t;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v1}, Lcom/anythink/core/common/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f;)V

    .line 18
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :goto_3
    monitor-exit v0

    throw p0

    :cond_5
    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Lcom/anythink/core/common/h/as;)Lcom/anythink/core/common/h/as;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/anythink/core/common/f;->x:Lcom/anythink/core/common/h/as;

    return-object p1
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;)Lcom/anythink/core/common/h/c;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;)Lcom/anythink/core/common/h/c;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;ZZLcom/anythink/core/common/h/ae;Lcom/anythink/core/common/f;Lcom/anythink/core/e/m;)Lcom/anythink/core/common/h/c;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 192
    invoke-virtual {v6}, Lcom/anythink/core/e/m;->v()Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-virtual {v6}, Lcom/anythink/core/e/m;->ap()I

    move-result v8

    .line 194
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 195
    new-instance v10, Lcom/anythink/core/common/h/d;

    invoke-direct {v10}, Lcom/anythink/core/common/h/d;-><init>()V

    .line 196
    iget-object v11, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-static {v10, v11, v6}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/d;Ljava/lang/String;Lcom/anythink/core/e/m;)V

    if-eqz v4, :cond_0

    .line 197
    invoke-virtual {v4, v10}, Lcom/anythink/core/common/h/ae;->a(Lcom/anythink/core/common/h/d;)V

    .line 198
    iget-object v10, v8, Lcom/anythink/core/common/f;->w:Lcom/anythink/core/api/ATAdRequest;

    invoke-virtual {v4, v10}, Lcom/anythink/core/common/h/ae;->a(Lcom/anythink/core/api/ATAdRequest;)V

    .line 199
    :cond_0
    invoke-virtual {v8, v1, v2, v3, v4}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLcom/anythink/core/common/h/ae;)Lcom/anythink/core/common/h/c;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 200
    iget-object v10, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/anythink/core/common/h/c;->i()Lcom/anythink/core/common/h/n;

    move-result-object v11

    invoke-static {v10, v6, v11}, Lcom/anythink/core/common/v/ah;->a(Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V

    goto :goto_0

    :cond_1
    move-object v8, v9

    .line 201
    :cond_2
    :goto_0
    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLcom/anythink/core/common/h/ae;)Lcom/anythink/core/common/h/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 202
    const-string v10, ""

    if-eqz v1, :cond_4

    .line 203
    invoke-virtual {v1}, Lcom/anythink/core/common/h/c;->i()Lcom/anythink/core/common/h/n;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 204
    invoke-virtual {v11}, Lcom/anythink/core/common/h/bx;->aR()Ljava/lang/String;

    move-result-object v12

    .line 205
    invoke-virtual {v11}, Lcom/anythink/core/common/h/n;->V()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_3
    move-object v11, v9

    move-object v12, v10

    move-object v13, v12

    :goto_1
    move v14, v3

    goto :goto_2

    :cond_4
    move v14, v2

    move-object v11, v9

    move-object v12, v10

    move-object v13, v12

    :goto_2
    if-eqz v8, :cond_6

    .line 206
    invoke-virtual {v8}, Lcom/anythink/core/common/h/c;->i()Lcom/anythink/core/common/h/n;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 207
    invoke-virtual {v4}, Lcom/anythink/core/common/h/bx;->aR()Ljava/lang/String;

    move-result-object v10

    :cond_5
    move v4, v2

    move-object v2, v7

    move v7, v3

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    .line 208
    invoke-virtual {v4}, Lcom/anythink/core/common/h/ae;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 209
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v4

    .line 210
    iget-object v15, v5, Lcom/anythink/core/common/f;->w:Lcom/anythink/core/api/ATAdRequest;

    .line 211
    invoke-virtual {v4, v7, v15}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;Lcom/anythink/core/api/ATAdRequest;)V

    .line 212
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v4

    const/16 v15, 0x11

    .line 213
    iget-object v5, v5, Lcom/anythink/core/common/f;->x:Lcom/anythink/core/common/h/as;

    .line 214
    invoke-virtual {v4, v6, v15, v5, v11}, Lcom/anythink/core/common/v;->a(Lcom/anythink/core/e/m;ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/n;)V

    :cond_7
    move v4, v2

    move-object v2, v7

    move v7, v4

    :goto_3
    if-eqz v8, :cond_9

    if-nez v1, :cond_8

    goto :goto_4

    .line 215
    :cond_8
    invoke-virtual {v8}, Lcom/anythink/core/common/h/c;->o()Lcom/anythink/core/common/h/by;

    move-result-object v5

    invoke-virtual {v1}, Lcom/anythink/core/common/h/c;->o()Lcom/anythink/core/common/h/by;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/anythink/core/common/v/k;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/by;)I

    move-result v5

    if-gez v5, :cond_9

    :goto_4
    move-object v11, v8

    goto :goto_5

    :cond_9
    move-object v11, v1

    .line 216
    :goto_5
    iget-object v1, v0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 217
    invoke-virtual {v11}, Lcom/anythink/core/common/h/c;->i()Lcom/anythink/core/common/h/n;

    move-result-object v9

    :cond_a
    if-nez v14, :cond_c

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    move v5, v4

    :goto_6
    move-object v3, v6

    move-object v4, v9

    move-object v9, v10

    move-object v8, v12

    move-object v10, v13

    move v6, v14

    goto :goto_8

    :cond_c
    :goto_7
    move v5, v3

    goto :goto_6

    .line 218
    :goto_8
    invoke-static/range {v1 .. v10}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public static synthetic a(ZLjava/util/Map;)Lcom/anythink/core/e/m;
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 288
    const-string p0, "anythink_debug_place_strategy_obj"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 289
    instance-of p1, p0, Lcom/anythink/core/e/m;

    if-eqz p1, :cond_0

    .line 290
    check-cast p0, Lcom/anythink/core/e/m;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/anythink/core/common/h/x;)Ljava/lang/String;
    .locals 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/h/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/h/x;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/anythink/core/common/h/x;->j:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/anythink/core/common/f;Lcom/anythink/core/e/m;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/core/common/f;",
            "Lcom/anythink/core/e/m;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-virtual {p3}, Lcom/anythink/core/e/m;->v()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    invoke-virtual {p3}, Lcom/anythink/core/e/m;->ap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/anythink/core/common/h/ae;

    invoke-direct {v1}, Lcom/anythink/core/common/h/ae;-><init>()V

    .line 222
    new-instance v2, Lcom/anythink/core/common/h/d;

    invoke-direct {v2}, Lcom/anythink/core/common/h/d;-><init>()V

    if-eqz v0, :cond_0

    .line 223
    iget-object v3, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-static {v2, v3, p3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/d;Ljava/lang/String;Lcom/anythink/core/e/m;)V

    .line 224
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/h/ae;->a(Lcom/anythink/core/common/h/d;)V

    .line 225
    iget-object p3, v0, Lcom/anythink/core/common/f;->w:Lcom/anythink/core/api/ATAdRequest;

    invoke-virtual {v1, p3}, Lcom/anythink/core/common/h/ae;->a(Lcom/anythink/core/api/ATAdRequest;)V

    .line 226
    invoke-direct {v0, p1}, Lcom/anythink/core/common/f;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 227
    :goto_0
    invoke-direct {p2, p1}, Lcom/anythink/core/common/f;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-nez p3, :cond_1

    .line 228
    invoke-static {v1, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/ae;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_3

    .line 229
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 230
    :cond_2
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    new-instance p2, Lcom/anythink/core/common/f$9;

    invoke-direct {p2, p0}, Lcom/anythink/core/common/f$9;-><init>(Lcom/anythink/core/common/f;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 232
    invoke-static {v1, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/ae;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 233
    :cond_3
    :goto_1
    invoke-static {v1, p3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/ae;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lcom/anythink/core/common/h/ae;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/h/ae;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_7

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/h/c;

    if-eqz p0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/anythink/core/common/h/ae;->b()Lcom/anythink/core/common/h/d;

    move-result-object v2

    :cond_1
    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {v3}, Lcom/anythink/core/common/h/c;->f()Lcom/anythink/core/api/BaseAd;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    if-eqz v3, :cond_3

    .line 108
    invoke-virtual {v3}, Lcom/anythink/core/common/h/c;->e()Lcom/anythink/core/api/bridge/ATBaseAdAdapter;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    const/4 v5, 0x4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    .line 109
    invoke-virtual {v4}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/h/n;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 110
    invoke-virtual {v6, v2}, Lcom/anythink/core/common/h/n;->a(Lcom/anythink/core/common/h/d;)V

    .line 111
    :cond_4
    invoke-static {v4, v3, v5}, Lcom/anythink/core/common/d/k;->a(Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;I)Lcom/anythink/core/common/d/k;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_0

    if-eqz v2, :cond_6

    .line 112
    invoke-virtual {v3}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->getTrackingInfo()Lcom/anythink/core/common/h/n;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 113
    invoke-virtual {v4, v2}, Lcom/anythink/core/common/h/n;->a(Lcom/anythink/core/common/h/d;)V

    .line 114
    :cond_6
    invoke-static {v3, v5}, Lcom/anythink/core/common/d/k;->a(Lcom/anythink/core/api/bridge/ATBaseAdAdapter;I)Lcom/anythink/core/common/d/k;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;Lcom/anythink/core/common/f;Lcom/anythink/core/e/m;)V
    .locals 15

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    .line 172
    invoke-virtual/range {p7 .. p7}, Lcom/anythink/core/e/m;->v()Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v0, Lcom/anythink/core/common/h/d;

    invoke-direct {v0}, Lcom/anythink/core/common/h/d;-><init>()V

    move-object/from16 v5, p7

    .line 174
    invoke-static {v0, v3, v5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/d;Ljava/lang/String;Lcom/anythink/core/e/m;)V

    .line 175
    iput-object v0, v10, Lcom/anythink/core/common/h/as;->i:Lcom/anythink/core/common/h/d;

    const/4 v0, 0x1

    .line 176
    new-array v11, v0, [Lcom/anythink/core/common/d/a;

    const/4 v12, 0x0

    aput-object p5, v11, v12

    .line 177
    invoke-virtual {v5}, Lcom/anythink/core/e/m;->z()I

    move-result v2

    if-ne v2, v0, :cond_3

    move-object/from16 v13, p1

    move-object/from16 v2, p2

    .line 178
    invoke-static {v13, v1, v2, v10}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;)Lcom/anythink/core/common/h/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    invoke-static {v13}, Lcom/anythink/core/common/v/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 180
    iput-object v4, v10, Lcom/anythink/core/common/h/as;->a:Ljava/lang/String;

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "placementId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";result_callback:success;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Shared"

    invoke-static {v7, v6}, Lcom/anythink/core/common/v/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcom/anythink/core/common/h/c;->i()Lcom/anythink/core/common/h/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/anythink/core/common/h/bx;->aR()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v9, v6

    goto :goto_1

    .line 184
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 185
    :goto_1
    const-string v7, "1"

    const-string v8, "2"

    const/4 v6, 0x1

    move-object v14, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v14

    invoke-static/range {v0 .. v9}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    aget-object v0, v11, v12

    if-eqz v0, :cond_1

    .line 187
    invoke-interface {v0}, Lcom/anythink/core/common/d/a;->onAdLoaded()V

    :cond_1
    const/4 v0, 0x0

    .line 188
    aput-object v0, v11, v12

    goto :goto_2

    .line 189
    :cond_2
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v0

    invoke-virtual {v10}, Lcom/anythink/core/common/h/as;->b()Lcom/anythink/core/api/ATAdRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;Lcom/anythink/core/api/ATAdRequest;)V

    .line 190
    :goto_2
    new-instance v0, Lcom/anythink/core/common/f$7;

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p7

    move-object v4, v1

    move-object v6, v10

    move-object v2, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/common/f$7;-><init>(Lcom/anythink/core/common/f;[Lcom/anythink/core/common/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/e/m;)V

    move-object v2, v5

    move-object v4, v6

    move-object v1, v13

    move-object v5, v0

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;)V

    return-void

    :cond_3
    move-object v2, v11

    .line 191
    new-instance v0, Lcom/anythink/core/common/f$8;

    move-object/from16 v8, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    move-object v3, v1

    move-object v7, v2

    move-object v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/anythink/core/common/f$8;-><init>(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/e/m;[Lcom/anythink/core/common/d/a;Landroid/content/Context;)V

    move-object v3, v2

    move-object v2, v4

    move-object v4, v5

    move-object v1, v8

    move-object v5, v0

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 43
    invoke-static {p1}, Lcom/anythink/core/e/o;->a(Landroid/content/Context;)Lcom/anythink/core/e/o;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    move-object/from16 v9, p5

    iget-object p1, v9, Lcom/anythink/core/common/h/as;->g:Ljava/util/Map;

    new-instance v6, Lcom/anythink/core/common/f$2;

    move-object/from16 v10, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p8

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/anythink/core/common/f$2;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/h/n;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/e/m;Ljava/lang/String;)V

    move-object v6, v5

    .line 44
    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/common/h/as;->b()Lcom/anythink/core/api/ATAdRequest;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v1, p4

    move/from16 v7, p9

    .line 45
    invoke-virtual/range {v0 .. v11}, Lcom/anythink/core/e/o;->a(Lcom/anythink/core/e/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/e/o$b;IZLcom/anythink/core/api/ATAdRequest;ZLjava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/as;)V
    .locals 8

    if-eqz p5, :cond_0

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/anythink/core/common/h/n;->f(J)V

    .line 47
    :cond_0
    new-instance v0, Lcom/anythink/core/common/f$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v2, p6

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/common/f$3;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/h/as;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V

    .line 48
    new-instance v1, Lcom/anythink/core/common/w/b/h;

    invoke-direct {v1, p1, p2, p4, v0}, Lcom/anythink/core/common/w/b/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/w/b/b;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    new-instance v2, Lcom/anythink/core/common/w/b/e;

    invoke-direct {v2}, Lcom/anythink/core/common/w/b/e;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcom/anythink/core/common/w/b/g;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/anythink/core/common/w/b/g;-><init>(Ljava/util/List;Lcom/anythink/core/common/w/b/h;I)V

    .line 52
    invoke-virtual {v2, v1}, Lcom/anythink/core/common/w/b/g;->a(Lcom/anythink/core/common/w/b/h;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;Lcom/anythink/core/common/f;Lcom/anythink/core/e/m;)V
    .locals 15

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    .line 302
    invoke-virtual/range {p7 .. p7}, Lcom/anythink/core/e/m;->v()Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v0, Lcom/anythink/core/common/h/d;

    invoke-direct {v0}, Lcom/anythink/core/common/h/d;-><init>()V

    move-object/from16 v5, p7

    .line 304
    invoke-static {v0, v3, v5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/d;Ljava/lang/String;Lcom/anythink/core/e/m;)V

    .line 305
    iput-object v0, v10, Lcom/anythink/core/common/h/as;->i:Lcom/anythink/core/common/h/d;

    const/4 v0, 0x1

    .line 306
    new-array v11, v0, [Lcom/anythink/core/common/d/a;

    const/4 v12, 0x0

    aput-object p5, v11, v12

    .line 307
    invoke-virtual {v5}, Lcom/anythink/core/e/m;->z()I

    move-result v2

    if-ne v2, v0, :cond_3

    move-object/from16 v13, p1

    move-object/from16 v2, p2

    .line 308
    invoke-static {v13, v1, v2, v10}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;)Lcom/anythink/core/common/h/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 309
    invoke-static {v13}, Lcom/anythink/core/common/v/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 310
    iput-object v4, v10, Lcom/anythink/core/common/h/as;->a:Ljava/lang/String;

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "placementId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";result_callback:success;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Shared"

    invoke-static {v7, v6}, Lcom/anythink/core/common/v/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Lcom/anythink/core/common/h/c;->i()Lcom/anythink/core/common/h/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/anythink/core/common/h/bx;->aR()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v9, v6

    goto :goto_1

    .line 314
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 315
    :goto_1
    const-string v7, "1"

    const-string v8, "2"

    const/4 v6, 0x1

    move-object v14, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v14

    invoke-static/range {v0 .. v9}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    aget-object v0, v11, v12

    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v0}, Lcom/anythink/core/common/d/a;->onAdLoaded()V

    :cond_1
    const/4 v0, 0x0

    .line 318
    aput-object v0, v11, v12

    goto :goto_2

    .line 319
    :cond_2
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v0

    invoke-virtual {v10}, Lcom/anythink/core/common/h/as;->b()Lcom/anythink/core/api/ATAdRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;Lcom/anythink/core/api/ATAdRequest;)V

    .line 320
    :goto_2
    new-instance v0, Lcom/anythink/core/common/f$7;

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p7

    move-object v4, v1

    move-object v6, v10

    move-object v2, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/common/f$7;-><init>(Lcom/anythink/core/common/f;[Lcom/anythink/core/common/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/e/m;)V

    move-object v2, v5

    move-object v4, v6

    move-object v1, v13

    move-object v5, v0

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;)V

    return-void

    :cond_3
    move-object v2, v11

    .line 321
    new-instance v0, Lcom/anythink/core/common/f$8;

    move-object/from16 v8, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    move-object v3, v1

    move-object v7, v2

    move-object v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/anythink/core/common/f$8;-><init>(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/e/m;[Lcom/anythink/core/common/d/a;Landroid/content/Context;)V

    move-object v3, v2

    move-object v2, v4

    move-object v4, v5

    move-object v1, v8

    move-object v5, v0

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 292
    invoke-static {p1}, Lcom/anythink/core/e/o;->a(Landroid/content/Context;)Lcom/anythink/core/e/o;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    move-object/from16 v9, p5

    iget-object p1, v9, Lcom/anythink/core/common/h/as;->g:Ljava/util/Map;

    new-instance v6, Lcom/anythink/core/common/f$2;

    move-object/from16 v10, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p8

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/anythink/core/common/f$2;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/h/n;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/e/m;Ljava/lang/String;)V

    move-object v6, v5

    .line 293
    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/common/h/as;->b()Lcom/anythink/core/api/ATAdRequest;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v1, p4

    move/from16 v7, p9

    .line 294
    invoke-virtual/range {v0 .. v11}, Lcom/anythink/core/e/o;->a(Lcom/anythink/core/e/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/e/o$b;IZLcom/anythink/core/api/ATAdRequest;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/as;)V
    .locals 8

    if-eqz p5, :cond_0

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/anythink/core/common/h/n;->f(J)V

    .line 296
    :cond_0
    new-instance v0, Lcom/anythink/core/common/f$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v2, p6

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/common/f$3;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/h/as;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V

    .line 297
    new-instance v1, Lcom/anythink/core/common/w/b/h;

    invoke-direct {v1, p1, p2, p4, v0}, Lcom/anythink/core/common/w/b/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/w/b/b;)V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    new-instance v2, Lcom/anythink/core/common/w/b/e;

    invoke-direct {v2}, Lcom/anythink/core/common/w/b/e;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v2, Lcom/anythink/core/common/w/b/g;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/anythink/core/common/w/b/g;-><init>(Ljava/util/List;Lcom/anythink/core/common/w/b/h;I)V

    .line 301
    invoke-virtual {v2, v1}, Lcom/anythink/core/common/w/b/g;->a(Lcom/anythink/core/common/w/b/h;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/h/as;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/h/as;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;ZLcom/anythink/core/common/h/n;Ljava/lang/Throwable;Lcom/anythink/core/common/h/as;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/h/n;Ljava/lang/Throwable;Lcom/anythink/core/common/h/as;)V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/h/br;)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/anythink/core/common/h/br;->c()Lcom/anythink/core/common/h/n;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/anythink/core/common/h/br;->b()I

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_1

    const/4 v1, 0x5

    .line 55
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 56
    invoke-virtual {p0}, Lcom/anythink/core/common/h/br;->a()Lcom/anythink/core/e/m;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/anythink/core/e/m;->E()I

    move-result p0

    const/4 v0, 0x1

    const-string v1, "No Adsource."

    if-ne p0, v0, :cond_0

    .line 58
    new-instance p0, Lcom/anythink/core/common/h/m;

    const-string v0, "4009"

    invoke-static {v0, v2, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_0
    new-instance p0, Lcom/anythink/core/common/h/m;

    const-string v0, "4004"

    invoke-static {v0, v2, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/core/common/h/br;->i()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    const/4 p0, 0x6

    .line 61
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 62
    const-string p0, "4005"

    invoke-static {p0, v2, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p0

    .line 63
    new-instance v0, Lcom/anythink/core/common/h/m;

    invoke-virtual {p0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/anythink/core/common/h/d;Ljava/lang/String;Lcom/anythink/core/e/m;)V
    .locals 1

    .line 234
    invoke-virtual {p2}, Lcom/anythink/core/e/m;->ax()I

    move-result v0

    invoke-virtual {p2}, Lcom/anythink/core/e/m;->ah()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/anythink/core/common/h/d;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/p/d;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    return-void
.end method

.method private a(Lcom/anythink/core/e/m;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/a/b;->a(Landroid/content/Context;)Lcom/anythink/core/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Lcom/anythink/core/e/m;)V

    return-void
.end method

.method public static a(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/bx;->aQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/anythink/core/a/a;->a(Lcom/anythink/core/e/m;Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    .line 66
    const-string v1, "2003"

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    const-string v1, "2028"

    goto :goto_0

    .line 68
    :pswitch_1
    const-string v1, "2027"

    goto :goto_0

    .line 69
    :pswitch_2
    const-string v1, "2026"

    goto :goto_0

    .line 70
    :pswitch_3
    const-string v1, "2025"

    :cond_0
    :goto_0
    const/4 p0, 0x1

    .line 71
    invoke-virtual {p1, p0}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 72
    new-instance p0, Lcom/anythink/core/common/h/m;

    const-string p1, ""

    invoke-static {v1, p1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    const-string v0, "Capping."

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/common/d/a;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/anythink/core/common/f;->i:Lcom/anythink/core/common/p/c;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p1, p2}, Lcom/anythink/core/common/p/c;->a(Ljava/lang/String;Lcom/anythink/core/common/d/a;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;)V
    .locals 1

    .line 38
    iget p2, p2, Lcom/anythink/core/common/h/as;->c:I

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 39
    :cond_0
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 40
    invoke-static {}, Lcom/anythink/core/common/t;->a()Lcom/anythink/core/common/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const-string v0, "4"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 42
    invoke-static {}, Lcom/anythink/core/common/t;->a()Lcom/anythink/core/common/t;

    move-result-object p0

    invoke-static {p2}, Lcom/anythink/core/common/v/o;->a([Ljava/lang/StackTraceElement;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/common/t;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 255
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 256
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/api/ATAdInfo;

    if-eqz v4, :cond_1

    .line 259
    invoke-virtual {v4}, Lcom/anythink/core/api/ATAdInfo;->getPlacementType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    if-nez v3, :cond_2

    .line 260
    invoke-virtual {v4}, Lcom/anythink/core/api/ATAdInfo;->getSharedPlacementId()Ljava/lang/String;

    move-result-object v3

    .line 261
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 264
    iget-object p1, p0, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    iget-object v4, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v4, v1, p2}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Ljava/util/List;I)V

    .line 265
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 266
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/e/o;->a(Landroid/content/Context;)Lcom/anythink/core/e/o;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/anythink/core/e/o;->a(Ljava/lang/String;)Lcom/anythink/core/e/m;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 267
    invoke-virtual {p1}, Lcom/anythink/core/e/m;->ap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 269
    :cond_7
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v1

    .line 270
    invoke-virtual {v1, p1}, Lcom/anythink/core/common/v;->a(Lcom/anythink/core/e/m;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 271
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    invoke-static {v3, v2}, Lcom/anythink/core/common/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 272
    iget-object p1, p1, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    if-eqz p1, :cond_8

    .line 273
    invoke-virtual {p1, v3, v0, p2}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Ljava/util/List;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private a(ZLcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/h/as;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/anythink/core/common/f;->d:Z

    .line 78
    invoke-virtual {p2, v0}, Lcom/anythink/core/common/h/n;->b(Z)V

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/u/e;->a(Landroid/content/Context;)Lcom/anythink/core/common/u/e;

    const/16 p1, 0xa

    invoke-static {p1, p2}, Lcom/anythink/core/common/u/e;->a(ILcom/anythink/core/common/h/bx;)V

    .line 80
    invoke-static {p2, p3}, Lcom/anythink/core/common/u/f;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;)V

    .line 81
    :cond_0
    invoke-virtual {p0, p4, p3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/as;Lcom/anythink/core/api/AdError;)V

    return-void
.end method

.method private a(ZLcom/anythink/core/common/h/n;Ljava/lang/Throwable;Lcom/anythink/core/common/h/as;)V
    .locals 2

    .line 73
    instance-of v0, p3, Lcom/anythink/core/common/h/m;

    if-eqz v0, :cond_0

    .line 74
    check-cast p3, Lcom/anythink/core/common/h/m;

    iget-object p3, p3, Lcom/anythink/core/common/h/m;->a:Lcom/anythink/core/api/AdError;

    goto :goto_0

    .line 75
    :cond_0
    const-string v0, ""

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v1, "9999"

    invoke-static {v1, v0, p3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p3

    .line 76
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/h/as;)V

    return-void
.end method

.method private a(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/common/p/d;->a(ILjava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;)Z
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/anythink/core/common/f;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/anythink/core/common/f;->q:Z

    return p1
.end method

.method private a(ZZLcom/anythink/core/common/h/ae;)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 121
    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/h/ae;->a()Ljava/util/Map;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 122
    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/h/ae;->b()Lcom/anythink/core/common/h/d;

    move-result-object v0

    :cond_1
    move-object v11, v0

    .line 123
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    .line 125
    :cond_2
    invoke-direct {p0, v0}, Lcom/anythink/core/common/f;->e(Landroid/content/Context;)Lcom/anythink/core/e/m;

    move-result-object v4

    .line 126
    iget-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    goto :goto_1

    :goto_2
    const/4 v0, 0x1

    if-nez v4, :cond_6

    if-eqz p1, :cond_4

    .line 127
    iget-object v3, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v5, 0x4

    const-string v6, ""

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;ILjava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/h/ae;)V

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    .line 128
    iget-object v3, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ""

    move-object v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v10, v7

    const/4 v7, 0x0

    move-object/from16 v12, p3

    invoke-static/range {v2 .. v12}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/anythink/core/e/m;Lcom/anythink/core/common/h/c;Lcom/anythink/core/common/h/af;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/h/d;Lcom/anythink/core/common/h/ae;)V

    :cond_5
    :goto_3
    return v0

    .line 129
    :cond_6
    invoke-static {}, Lcom/anythink/core/a/d;->a()Lcom/anythink/core/a/d;

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/anythink/core/a/d;->a(Ljava/lang/String;Lcom/anythink/core/e/m;)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_9

    if-eqz p1, :cond_7

    .line 130
    iget-object v3, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const-string v6, ""

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;ILjava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/h/ae;)V

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_8

    .line 131
    iget-object v3, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ""

    move-object v6, v4

    const/4 v4, 0x0

    move-object v10, v7

    const/4 v7, 0x0

    move-object/from16 v12, p3

    invoke-static/range {v2 .. v12}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/anythink/core/e/m;Lcom/anythink/core/common/h/c;Lcom/anythink/core/common/h/af;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/h/d;Lcom/anythink/core/common/h/ae;)V

    :cond_8
    :goto_4
    return v0

    .line 132
    :cond_9
    iget-object v3, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    iget-object v3, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/anythink/core/a/a;->a(Lcom/anythink/core/e/m;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v1, :cond_c

    if-eqz p1, :cond_a

    .line 133
    iget-object v3, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const-string v6, ""

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;ILjava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/h/ae;)V

    goto :goto_5

    :cond_a
    if-eqz p2, :cond_b

    .line 134
    iget-object v3, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ""

    move-object v6, v4

    const/4 v4, 0x0

    move-object v10, v7

    const/4 v7, 0x0

    move-object/from16 v12, p3

    invoke-static/range {v2 .. v12}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/anythink/core/e/m;Lcom/anythink/core/common/h/c;Lcom/anythink/core/common/h/af;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/h/d;Lcom/anythink/core/common/h/ae;)V

    :cond_b
    :goto_5
    return v0

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;)Lcom/anythink/core/common/h/c;
    .locals 1

    .line 192
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    invoke-static {p1, p2}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    new-instance p2, Lcom/anythink/core/common/h/ae;

    invoke-direct {p2}, Lcom/anythink/core/common/h/ae;-><init>()V

    .line 194
    iget-object v0, p3, Lcom/anythink/core/common/h/as;->g:Ljava/util/Map;

    invoke-virtual {p2, v0}, Lcom/anythink/core/common/h/ae;->a(Ljava/util/Map;)V

    .line 195
    iget-object v0, p3, Lcom/anythink/core/common/h/as;->i:Lcom/anythink/core/common/h/d;

    invoke-virtual {p2, v0}, Lcom/anythink/core/common/h/ae;->a(Lcom/anythink/core/common/h/d;)V

    .line 196
    invoke-virtual {p3}, Lcom/anythink/core/common/h/as;->b()Lcom/anythink/core/api/ATAdRequest;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/anythink/core/common/h/ae;->a(Lcom/anythink/core/api/ATAdRequest;)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p1, p0, p3, v0, p2}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLcom/anythink/core/common/h/ae;)Lcom/anythink/core/common/h/c;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(ZLjava/util/Map;)Lcom/anythink/core/e/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/e/m;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 198
    const-string p0, "anythink_debug_place_strategy_obj"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 199
    instance-of p1, p0, Lcom/anythink/core/e/m;

    if-eqz p1, :cond_1

    .line 200
    check-cast p0, Lcom/anythink/core/e/m;

    return-object p0

    :cond_1
    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/as;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    .line 5
    invoke-virtual {v11}, Lcom/anythink/core/e/m;->ap()I

    move-result v8

    const-wide/16 v9, 0x0

    const-string v2, "1"

    const-string v6, ""

    const/4 v7, 0x0

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    invoke-static/range {v2 .. v10}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    move-object v10, v3

    .line 6
    new-instance v0, Lcom/anythink/core/common/h/ce;

    invoke-direct {v0, v12, v11}, Lcom/anythink/core/common/h/ce;-><init>(Lcom/anythink/core/common/h/as;Lcom/anythink/core/e/m;)V

    .line 7
    invoke-static {v10, v0}, Lcom/anythink/core/common/v/ah;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/ce;)V

    const/4 v13, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v11}, Lcom/anythink/core/e/m;->bk()Z

    move-result v2
    :try_end_0
    .catch Lcom/anythink/core/common/h/m; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x5

    const-string v6, ""

    if-eqz v2, :cond_25

    .line 9
    :try_start_1
    iget-object v2, v1, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/a/b;->a(Landroid/content/Context;)Lcom/anythink/core/a/b;

    move-result-object v2

    iget-object v7, v1, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v7, v11}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Lcom/anythink/core/e/m;)V

    .line 10
    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V

    .line 11
    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V

    .line 12
    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/v/ac;->a(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)Lcom/anythink/core/common/h/br;

    move-result-object v14

    .line 13
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->c()Lcom/anythink/core/common/h/n;

    move-result-object v2

    .line 14
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->b()I

    move-result v7
    :try_end_1
    .catch Lcom/anythink/core/common/h/m; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v7, :cond_1

    .line 15
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 16
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->a()Lcom/anythink/core/e/m;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/anythink/core/e/m;->E()I

    move-result v0
    :try_end_2
    .catch Lcom/anythink/core/common/h/m; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "No Adsource."

    if-ne v0, v13, :cond_0

    .line 18
    :try_start_3
    new-instance v0, Lcom/anythink/core/common/h/m;

    const-string v3, "4009"

    invoke-static {v3, v6, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move v2, v13

    goto/16 :goto_19

    :catch_0
    move-exception v0

    move v2, v13

    goto/16 :goto_1a

    .line 19
    :cond_0
    new-instance v0, Lcom/anythink/core/common/h/m;

    const-string v3, "4004"

    invoke-static {v3, v6, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/anythink/core/common/h/m; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :cond_1
    :try_start_4
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->i()Z

    move-result v3
    :try_end_4
    .catch Lcom/anythink/core/common/h/m; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v7, "4005"

    const/4 v8, 0x6

    if-eqz v3, :cond_24

    .line 21
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->k()Z

    move-result v15

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-static {v14, v2}, Lcom/anythink/core/common/v/ac;->b(Lcom/anythink/core/common/h/br;Ljava/util/List;)V

    .line 24
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->d()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 25
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 26
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->c()Lcom/anythink/core/common/h/n;

    move-result-object v9

    invoke-static {v11, v9, v3}, Lcom/anythink/core/common/v/ac;->a(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;Ljava/util/List;)V

    .line 27
    :cond_2
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/anythink/core/common/v/ac;->a(Lcom/anythink/core/common/h/br;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 28
    iget-object v9, v1, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    invoke-virtual {v9, v4}, Lcom/anythink/core/common/a;->b(Ljava/lang/String;)V

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v13

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 30
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->e()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->e()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_5

    :cond_4
    move v9, v13

    :goto_1
    move-object/from16 v18, v14

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 31
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/anythink/core/common/h/n;->g(J)V

    if-eqz v9, :cond_a

    if-eqz v3, :cond_6

    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_a

    .line 33
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->f()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->f()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_a

    .line 34
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->g()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->g()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_a

    .line 35
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->h()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->h()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_a

    .line 36
    :cond_9
    invoke-static {v7, v6, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 37
    invoke-virtual {v10, v8}, Lcom/anythink/core/common/h/n;->L(I)V

    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, v2, v10, v0, v12}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/h/as;)V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, v1, Lcom/anythink/core/common/f;->d:Z

    return-void

    .line 40
    :cond_a
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    iget-object v6, v1, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v6, v4, v11}, Lcom/anythink/core/a/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/e/m;)V

    .line 41
    invoke-virtual {v1}, Lcom/anythink/core/common/f;->r()Ljava/util/Map;

    move-result-object v8

    .line 42
    iget-object v6, v1, Lcom/anythink/core/common/f;->u:Lcom/anythink/core/common/w;

    if-eqz v6, :cond_b

    .line 43
    iget-object v6, v6, Lcom/anythink/core/common/w;->a:Ljava/util/Map;

    if-eqz v6, :cond_b

    .line 44
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/core/common/h/cc;

    move-object v14, v6

    goto :goto_3

    :cond_b
    const/4 v14, 0x0

    .line 45
    :goto_3
    iget-object v6, v1, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/anythink/core/common/u;->a(Landroid/content/Context;)Lcom/anythink/core/common/u;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/h/bs;

    move-result-object v6

    .line 46
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;)Lcom/anythink/core/common/h/ac;

    move-result-object v7

    .line 47
    new-instance v13, Lcom/anythink/core/common/h/ac;

    invoke-direct {v13, v5}, Lcom/anythink/core/common/h/ac;-><init>(Ljava/lang/String;)V

    move/from16 v20, v2

    .line 48
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v2

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v13}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Lcom/anythink/core/common/h/ac;)V

    const/4 v2, 0x1

    .line 49
    invoke-virtual {v10, v2}, Lcom/anythink/core/common/h/n;->b(Z)V

    .line 50
    invoke-virtual {v0}, Lcom/anythink/core/common/h/ce;->f()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/anythink/core/common/h/n;->B(I)V

    .line 51
    new-instance v2, Lcom/anythink/core/common/g;

    invoke-virtual {v12}, Lcom/anythink/core/common/h/as;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/anythink/core/common/g;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f;)V

    .line 52
    iput-object v8, v2, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    .line 53
    iput-object v10, v2, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    .line 54
    invoke-virtual {v2, v12}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/as;)V

    .line 55
    iget-object v3, v12, Lcom/anythink/core/common/h/as;->d:Lcom/anythink/core/common/d/c;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/d/c;)V

    .line 56
    iput-object v5, v1, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    .line 57
    invoke-virtual {v10}, Lcom/anythink/core/common/h/bx;->aJ()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/anythink/core/common/f;->n:Ljava/lang/String;

    .line 58
    invoke-virtual {v11}, Lcom/anythink/core/e/m;->Z()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/anythink/core/e/v;->a(Lcom/anythink/core/e/m;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 59
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_c

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .line 60
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/h/by;

    move-object/from16 v16, v3

    goto :goto_4

    :cond_c
    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/16 v16, 0x0

    :goto_4
    if-eqz v16, :cond_10

    .line 61
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->e()Ljava/util/List;

    move-result-object v3

    .line 62
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/h/by;

    .line 63
    invoke-virtual {v3}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v3

    invoke-virtual/range {v16 .. v16}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 64
    iget-object v2, v1, Lcom/anythink/core/common/f;->s:Lcom/anythink/core/common/a/c;

    if-eqz v2, :cond_f

    move v3, v9

    .line 65
    iget-object v9, v1, Lcom/anythink/core/common/f;->w:Lcom/anythink/core/api/ATAdRequest;

    move/from16 v28, v3

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v7, v11

    move/from16 v27, v20

    move-object/from16 v26, v21

    move-object/from16 v31, v22

    move-object/from16 v6, v25

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/anythink/core/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/e/m;Ljava/util/Map;Lcom/anythink/core/api/ATAdRequest;)Lcom/anythink/core/common/a/c$a;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 66
    invoke-virtual {v2}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    move-result-object v6

    const/4 v9, 0x0

    .line 67
    invoke-static {v11, v10, v6, v9}, Lcom/anythink/core/common/v/ac;->a(ILcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/z;)Lcom/anythink/core/api/AdError;

    move-result-object v19

    if-eqz v19, :cond_d

    .line 68
    iget-object v2, v1, Lcom/anythink/core/common/f;->s:Lcom/anythink/core/common/a/c;

    invoke-virtual {v6}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/anythink/core/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v31

    :goto_6
    move v2, v11

    goto :goto_7

    :cond_d
    move-object/from16 v6, v31

    .line 69
    iput-object v2, v6, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    goto :goto_6

    .line 70
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/anythink/core/common/h/n;->e(J)V

    goto :goto_9

    :cond_e
    move v2, v11

    move-object/from16 v6, v31

    :goto_8
    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    move-object/from16 v3, p1

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v28, v9

    move-object v7, v11

    move/from16 v27, v20

    move-object/from16 v26, v21

    move-object/from16 v6, v22

    const/4 v2, 0x0

    goto :goto_8

    :goto_9
    move-object/from16 v12, p6

    move-object/from16 v22, v6

    move-object v11, v7

    move-object/from16 v21, v26

    move/from16 v20, v27

    move/from16 v9, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    goto/16 :goto_5

    :cond_10
    move-object/from16 v3, p1

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v28, v9

    move-object v7, v11

    move/from16 v27, v20

    move-object/from16 v26, v21

    move-object/from16 v6, v22

    .line 71
    iget-object v8, v1, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/anythink/core/common/u/e;->a(Landroid/content/Context;)Lcom/anythink/core/common/u/e;

    const/16 v8, 0xa

    invoke-static {v8, v10}, Lcom/anythink/core/common/u/e;->a(ILcom/anythink/core/common/h/bx;)V

    const/4 v8, 0x1

    .line 72
    new-array v9, v8, [Ljava/lang/Double;

    .line 73
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bo()Ljava/lang/Boolean;

    move-result-object v8

    .line 74
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->j()Z

    move-result v11

    if-nez v11, :cond_11

    if-eqz v8, :cond_12

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 75
    :cond_11
    iget-object v11, v1, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    invoke-virtual {v11, v3, v4}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/h/c;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 76
    invoke-virtual {v11}, Lcom/anythink/core/common/h/c;->n()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v2

    .line 77
    :cond_12
    invoke-static {}, Lcom/anythink/core/common/b/f;->a()Lcom/anythink/core/common/b/f;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/anythink/core/common/b/f;->a(Lcom/anythink/core/e/m;)Lcom/anythink/core/common/b/c;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 78
    invoke-virtual {v11}, Lcom/anythink/core/common/b/c;->f()Z

    move-result v12

    if-eqz v12, :cond_13

    const/4 v12, 0x1

    goto :goto_a

    :cond_13
    move v12, v2

    .line 79
    :goto_a
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bL()Z

    move-result v16

    if-nez v12, :cond_15

    if-eqz v16, :cond_14

    goto :goto_b

    :cond_14
    move/from16 v16, v2

    goto :goto_c

    :cond_15
    :goto_b
    move/from16 v16, v2

    const/4 v2, 0x1

    :goto_c
    if-eqz v2, :cond_18

    if-nez v12, :cond_18

    .line 80
    invoke-static {}, Lcom/anythink/core/api/ATAdRealTimeFilter;->getInstance()Lcom/anythink/core/api/ATAdRealTimeFilter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/anythink/core/api/ATAdRealTimeFilter;->getBiddingWaitMaxTime()Ljava/lang/Long;

    move-result-object v17

    if-eqz v17, :cond_16

    .line 81
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    :goto_d
    move-object/from16 v22, v8

    move-object/from16 v21, v9

    goto :goto_e

    .line 82
    :cond_16
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bM()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v17, v19, v21

    if-lez v17, :cond_17

    .line 83
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bM()J

    move-result-wide v19

    goto :goto_d

    :cond_17
    const-wide/16 v19, 0x1388

    goto :goto_d

    :cond_18
    const-wide/16 v19, -0x1

    goto :goto_d

    .line 84
    :goto_e
    new-instance v8, Lcom/anythink/core/common/w/i;

    move-object/from16 v9, v26

    invoke-direct {v8, v9}, Lcom/anythink/core/common/w/i;-><init>(Ljava/util/List;)V

    move/from16 v17, v2

    .line 85
    new-instance v2, Lcom/anythink/core/common/w/h;

    invoke-direct {v2}, Lcom/anythink/core/common/w/h;-><init>()V

    .line 86
    iput-object v4, v2, Lcom/anythink/core/common/w/h;->a:Ljava/lang/String;

    .line 87
    iput-object v5, v2, Lcom/anythink/core/common/w/h;->b:Ljava/lang/String;

    .line 88
    iput-object v0, v2, Lcom/anythink/core/common/w/h;->c:Lcom/anythink/core/common/h/ce;

    .line 89
    iput-object v9, v2, Lcom/anythink/core/common/w/h;->d:Ljava/util/List;

    .line 90
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->h()Ljava/util/List;

    move-result-object v9

    iput-object v9, v2, Lcom/anythink/core/common/w/h;->e:Ljava/util/List;

    move/from16 v9, v28

    .line 91
    iput-boolean v9, v2, Lcom/anythink/core/common/w/h;->i:Z

    .line 92
    invoke-virtual {v10}, Lcom/anythink/core/common/h/bx;->aM()I

    move-result v9

    iput v9, v2, Lcom/anythink/core/common/w/h;->j:I

    .line 93
    iput-object v14, v2, Lcom/anythink/core/common/w/h;->k:Lcom/anythink/core/common/h/cc;

    move-object/from16 v9, v29

    .line 94
    iput-object v9, v2, Lcom/anythink/core/common/w/h;->m:Lcom/anythink/core/common/h/bs;

    .line 95
    iput-object v8, v2, Lcom/anythink/core/common/w/h;->l:Lcom/anythink/core/common/w/i;

    move-object/from16 v23, v11

    move-object/from16 v11, v30

    .line 96
    iput-object v11, v2, Lcom/anythink/core/common/w/h;->o:Lcom/anythink/core/common/h/ac;

    .line 97
    iput-object v13, v2, Lcom/anythink/core/common/w/h;->n:Lcom/anythink/core/common/h/ac;

    .line 98
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->f()Ljava/util/List;

    move-result-object v13

    iput-object v13, v2, Lcom/anythink/core/common/w/h;->f:Ljava/util/List;

    .line 99
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->g()Ljava/util/List;

    move-result-object v13

    iput-object v13, v2, Lcom/anythink/core/common/w/h;->g:Ljava/util/List;

    .line 100
    aget-object v13, v21, v16

    if-eqz v13, :cond_19

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    :goto_f
    move-object v13, v8

    move-object/from16 v29, v9

    move-wide/from16 v8, v24

    goto :goto_10

    :cond_19
    const-wide/16 v24, 0x0

    goto :goto_f

    :goto_10
    iput-wide v8, v2, Lcom/anythink/core/common/w/h;->h:D

    .line 101
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->e()Ljava/util/List;

    move-result-object v8

    iput-object v8, v2, Lcom/anythink/core/common/w/h;->p:Ljava/util/List;

    .line 102
    iput-boolean v12, v2, Lcom/anythink/core/common/w/h;->q:Z

    .line 103
    invoke-virtual {v6, v2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/w/h;)V

    .line 104
    iget-object v2, v1, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, p6

    .line 105
    iget-object v2, v12, Lcom/anythink/core/common/h/as;->m:Lcom/anythink/core/common/h/h;

    if-eqz v2, :cond_1a

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/anythink/core/common/h/h;->h(J)V

    .line 107
    :cond_1a
    iget-object v2, v12, Lcom/anythink/core/common/h/as;->m:Lcom/anythink/core/common/h/h;

    invoke-static {v2, v10}, Lcom/anythink/core/common/u/f;->a(Lcom/anythink/core/common/h/h;Lcom/anythink/core/common/h/n;)V

    .line 108
    new-instance v2, Lcom/anythink/core/common/h;

    invoke-direct {v2, v4, v6}, Lcom/anythink/core/common/h;-><init>(Ljava/lang/String;Lcom/anythink/core/common/g;)V

    .line 109
    invoke-virtual {v6, v2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h;)V

    .line 110
    invoke-virtual {v2, v7, v15}, Lcom/anythink/core/common/h;->a(Lcom/anythink/core/e/m;Z)V

    .line 111
    iget-object v8, v1, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/h$d;

    invoke-virtual {v2, v8}, Lcom/anythink/core/common/h;->a(Lcom/anythink/core/common/h$d;)V

    if-nez v28, :cond_1c

    if-nez v17, :cond_1b

    goto :goto_12

    :cond_1b
    :goto_11
    move/from16 v8, v16

    goto :goto_13

    .line 112
    :cond_1c
    :goto_12
    invoke-virtual {v2}, Lcom/anythink/core/common/h;->a()V

    goto :goto_11

    .line 113
    :goto_13
    iput-boolean v8, v1, Lcom/anythink/core/common/f;->d:Z

    if-nez v28, :cond_21

    .line 114
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->e()Ljava/util/List;

    move-result-object v8

    .line 115
    :try_start_5
    new-instance v9, Lcom/anythink/core/common/h/a;

    invoke-direct {v9}, Lcom/anythink/core/common/h/a;-><init>()V

    .line 116
    iput-object v3, v9, Lcom/anythink/core/common/h/a;->b:Landroid/content/Context;

    .line 117
    iput-object v12, v9, Lcom/anythink/core/common/h/a;->c:Lcom/anythink/core/common/h/as;

    .line 118
    iput-object v5, v9, Lcom/anythink/core/common/h/a;->d:Ljava/lang/String;

    .line 119
    iput-object v4, v9, Lcom/anythink/core/common/h/a;->e:Ljava/lang/String;

    .line 120
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->ap()I

    move-result v3

    iput v3, v9, Lcom/anythink/core/common/h/a;->f:I

    .line 121
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->aa()J

    move-result-wide v3

    iput-wide v3, v9, Lcom/anythink/core/common/h/a;->g:J

    .line 122
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->W()J

    move-result-wide v3

    iput-wide v3, v9, Lcom/anythink/core/common/h/a;->h:J

    .line 123
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->F()J

    move-result-wide v3

    iput-wide v3, v9, Lcom/anythink/core/common/h/a;->i:J

    .line 124
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    move/from16 v3, v27

    invoke-static {v7, v3}, Lcom/anythink/core/common/i;->a(Lcom/anythink/core/e/m;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/anythink/core/common/h/a;->l:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    invoke-static {v7}, Lcom/anythink/core/common/i;->a(Lcom/anythink/core/e/m;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/anythink/core/common/h/a;->o:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    invoke-static {v7}, Lcom/anythink/core/common/i;->b(Lcom/anythink/core/e/m;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/anythink/core/common/h/a;->p:Ljava/lang/String;

    .line 127
    iput-object v8, v9, Lcom/anythink/core/common/h/a;->j:Ljava/util/List;

    .line 128
    iput-object v0, v9, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    .line 129
    iput-object v10, v9, Lcom/anythink/core/common/h/a;->s:Lcom/anythink/core/common/h/n;

    .line 130
    iput-object v14, v9, Lcom/anythink/core/common/h/a;->v:Lcom/anythink/core/common/h/cc;

    move-object/from16 v4, v29

    .line 131
    iput-object v4, v9, Lcom/anythink/core/common/h/a;->w:Lcom/anythink/core/common/h/bs;

    .line 132
    iput-object v11, v9, Lcom/anythink/core/common/h/a;->x:Lcom/anythink/core/common/h/ac;

    .line 133
    invoke-virtual {v1}, Lcom/anythink/core/common/f;->r()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v9, Lcom/anythink/core/common/h/a;->q:Ljava/util/Map;

    .line 134
    iput-boolean v3, v9, Lcom/anythink/core/common/h/a;->m:Z

    .line 135
    iget v3, v12, Lcom/anythink/core/common/h/as;->c:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1d

    const/4 v3, 0x7

    .line 136
    iput v3, v9, Lcom/anythink/core/common/h/a;->t:I

    goto :goto_14

    :catchall_1
    move-exception v0

    goto :goto_17

    .line 137
    :cond_1d
    :goto_14
    iput-object v13, v9, Lcom/anythink/core/common/h/a;->y:Lcom/anythink/core/common/w/i;

    .line 138
    iget-object v3, v12, Lcom/anythink/core/common/h/as;->l:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    iput-object v3, v9, Lcom/anythink/core/common/h/a;->A:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    .line 139
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v3

    iget-object v4, v1, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/anythink/core/common/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/anythink/core/common/h/a;->B:Ljava/lang/String;

    if-eqz v22, :cond_1e

    .line 140
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v16, 0x0

    .line 141
    aget-object v3, v21, v16

    if-eqz v3, :cond_1f

    .line 142
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 143
    iput-wide v3, v9, Lcom/anythink/core/common/h/a;->C:D

    goto :goto_15

    :cond_1e
    const/16 v16, 0x0

    :cond_1f
    :goto_15
    if-eqz v15, :cond_20

    .line 144
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bv()I

    move-result v3

    if-lez v3, :cond_20

    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bv()I

    move-result v3

    goto :goto_16

    :cond_20
    move/from16 v3, v16

    :goto_16
    iput v3, v9, Lcom/anythink/core/common/h/a;->D:I

    .line 145
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bE()I

    move-result v3

    iput v3, v9, Lcom/anythink/core/common/h/a;->E:I

    .line 146
    iput-object v2, v9, Lcom/anythink/core/common/h/a;->F:Lcom/anythink/core/common/h;

    move-object/from16 v2, v23

    .line 147
    iput-object v2, v9, Lcom/anythink/core/common/h/a;->I:Lcom/anythink/core/common/b/c;

    move/from16 v2, v17

    .line 148
    iput-boolean v2, v9, Lcom/anythink/core/common/h/a;->G:Z

    move-wide/from16 v2, v19

    .line 149
    iput-wide v2, v9, Lcom/anythink/core/common/h/a;->H:J

    .line 150
    iput-object v1, v9, Lcom/anythink/core/common/h/a;->J:Lcom/anythink/core/common/f;

    .line 151
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->k()Lcom/anythink/core/e/f;

    move-result-object v2

    iput-object v2, v9, Lcom/anythink/core/common/h/a;->K:Lcom/anythink/core/e/f;

    .line 152
    new-instance v2, Lcom/anythink/core/c/b;

    invoke-direct {v2, v9}, Lcom/anythink/core/c/b;-><init>(Lcom/anythink/core/common/h/a;)V

    .line 153
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/anythink/core/common/j$b;->a(Z)V

    .line 154
    new-instance v3, Lcom/anythink/core/common/f$4;

    invoke-direct {v3, v1, v0, v6}, Lcom/anythink/core/common/f$4;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/h/ce;Lcom/anythink/core/common/g;)V

    invoke-interface {v2, v3}, Lcom/anythink/core/common/j$b;->a(Lcom/anythink/core/common/j$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_18

    .line 155
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/v/p;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/d/s;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notifyBiddingFinish error"

    invoke-static {v3, v0, v2}, Lcom/anythink/core/common/u/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v6}, Lcom/anythink/core/common/g;->e()V

    .line 157
    :cond_21
    :goto_18
    iget v0, v12, Lcom/anythink/core/common/h/as;->c:I

    if-eqz v0, :cond_22

    const/4 v2, 0x3

    if-ne v0, v2, :cond_23

    .line 158
    :cond_22
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v7, v2, v12, v10}, Lcom/anythink/core/common/v;->a(Lcom/anythink/core/e/m;ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/n;)V

    :cond_23
    return-void

    .line 159
    :cond_24
    :try_start_6
    invoke-virtual {v2, v8}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 160
    invoke-static {v7, v6, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 161
    new-instance v2, Lcom/anythink/core/common/h/m;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v2

    :catchall_2
    move-exception v0

    const/4 v2, 0x1

    goto :goto_19

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    goto :goto_1a

    .line 162
    :cond_25
    invoke-virtual {v10, v3}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 163
    new-instance v0, Lcom/anythink/core/common/h/m;

    const-string v2, "4003"

    invoke-static {v2, v6, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    const-string v3, "Strategy is close."

    invoke-direct {v0, v2, v3}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lcom/anythink/core/common/h/m; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 164
    :goto_19
    invoke-direct {v1, v2, v10, v0, v12}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/h/n;Ljava/lang/Throwable;Lcom/anythink/core/common/h/as;)V

    return-void

    .line 165
    :goto_1a
    invoke-direct {v1, v2, v10, v0, v12}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/h/n;Ljava/lang/Throwable;Lcom/anythink/core/common/h/as;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/core/common/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/as;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    .line 217
    invoke-virtual {v11}, Lcom/anythink/core/e/m;->ap()I

    move-result v8

    const-wide/16 v9, 0x0

    const-string v2, "1"

    const-string v6, ""

    const/4 v7, 0x0

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    invoke-static/range {v2 .. v10}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    move-object v10, v3

    .line 218
    new-instance v0, Lcom/anythink/core/common/h/ce;

    invoke-direct {v0, v12, v11}, Lcom/anythink/core/common/h/ce;-><init>(Lcom/anythink/core/common/h/as;Lcom/anythink/core/e/m;)V

    .line 219
    invoke-static {v10, v0}, Lcom/anythink/core/common/v/ah;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/ce;)V

    const/4 v13, 0x1

    .line 220
    :try_start_0
    invoke-virtual {v11}, Lcom/anythink/core/e/m;->bk()Z

    move-result v2
    :try_end_0
    .catch Lcom/anythink/core/common/h/m; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x5

    const-string v6, ""

    if-eqz v2, :cond_25

    .line 221
    :try_start_1
    iget-object v2, v1, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/a/b;->a(Landroid/content/Context;)Lcom/anythink/core/a/b;

    move-result-object v2

    iget-object v7, v1, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v7, v11}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Lcom/anythink/core/e/m;)V

    .line 222
    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V

    .line 223
    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V

    .line 224
    invoke-static/range {p4 .. p5}, Lcom/anythink/core/common/v/ac;->a(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)Lcom/anythink/core/common/h/br;

    move-result-object v14

    .line 225
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->c()Lcom/anythink/core/common/h/n;

    move-result-object v2

    .line 226
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->b()I

    move-result v7
    :try_end_1
    .catch Lcom/anythink/core/common/h/m; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v7, :cond_1

    .line 227
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 228
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->a()Lcom/anythink/core/e/m;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/anythink/core/e/m;->E()I

    move-result v0
    :try_end_2
    .catch Lcom/anythink/core/common/h/m; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "No Adsource."

    if-ne v0, v13, :cond_0

    .line 230
    :try_start_3
    new-instance v0, Lcom/anythink/core/common/h/m;

    const-string v3, "4009"

    invoke-static {v3, v6, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move v2, v13

    goto/16 :goto_19

    :catch_0
    move-exception v0

    move v2, v13

    goto/16 :goto_1a

    .line 231
    :cond_0
    new-instance v0, Lcom/anythink/core/common/h/m;

    const-string v3, "4004"

    invoke-static {v3, v6, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/anythink/core/common/h/m; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    :cond_1
    :try_start_4
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->i()Z

    move-result v3
    :try_end_4
    .catch Lcom/anythink/core/common/h/m; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v7, "4005"

    const/4 v8, 0x6

    if-eqz v3, :cond_24

    .line 233
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->k()Z

    move-result v15

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    invoke-static {v14, v2}, Lcom/anythink/core/common/v/ac;->b(Lcom/anythink/core/common/h/br;Ljava/util/List;)V

    .line 236
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->d()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 237
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 238
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->c()Lcom/anythink/core/common/h/n;

    move-result-object v9

    invoke-static {v11, v9, v3}, Lcom/anythink/core/common/v/ac;->a(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;Ljava/util/List;)V

    .line 239
    :cond_2
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/anythink/core/common/v/ac;->a(Lcom/anythink/core/common/h/br;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 240
    iget-object v9, v1, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    invoke-virtual {v9, v4}, Lcom/anythink/core/common/a;->b(Ljava/lang/String;)V

    .line 241
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v13

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 242
    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->e()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-virtual {v14}, Lcom/anythink/core/common/h/br;->e()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_5

    :cond_4
    move v9, v13

    :goto_1
    move-object/from16 v18, v14

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 243
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/anythink/core/common/h/n;->g(J)V

    if-eqz v9, :cond_a

    if-eqz v3, :cond_6

    .line 244
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_a

    .line 245
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->f()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->f()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_a

    .line 246
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->g()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->g()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_a

    .line 247
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->h()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->h()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_a

    .line 248
    :cond_9
    invoke-static {v7, v6, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 249
    invoke-virtual {v10, v8}, Lcom/anythink/core/common/h/n;->L(I)V

    const/4 v2, 0x1

    .line 250
    invoke-direct {v1, v2, v10, v0, v12}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/h/n;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/h/as;)V

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, v1, Lcom/anythink/core/common/f;->d:Z

    return-void

    .line 252
    :cond_a
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    iget-object v6, v1, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v6, v4, v11}, Lcom/anythink/core/a/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/e/m;)V

    .line 253
    invoke-virtual {v1}, Lcom/anythink/core/common/f;->r()Ljava/util/Map;

    move-result-object v8

    .line 254
    iget-object v6, v1, Lcom/anythink/core/common/f;->u:Lcom/anythink/core/common/w;

    if-eqz v6, :cond_b

    .line 255
    iget-object v6, v6, Lcom/anythink/core/common/w;->a:Ljava/util/Map;

    if-eqz v6, :cond_b

    .line 256
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/core/common/h/cc;

    move-object v14, v6

    goto :goto_3

    :cond_b
    const/4 v14, 0x0

    .line 257
    :goto_3
    iget-object v6, v1, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/anythink/core/common/u;->a(Landroid/content/Context;)Lcom/anythink/core/common/u;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/h/bs;

    move-result-object v6

    .line 258
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;)Lcom/anythink/core/common/h/ac;

    move-result-object v7

    .line 259
    new-instance v13, Lcom/anythink/core/common/h/ac;

    invoke-direct {v13, v5}, Lcom/anythink/core/common/h/ac;-><init>(Ljava/lang/String;)V

    move/from16 v20, v2

    .line 260
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v2

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v13}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Lcom/anythink/core/common/h/ac;)V

    const/4 v2, 0x1

    .line 261
    invoke-virtual {v10, v2}, Lcom/anythink/core/common/h/n;->b(Z)V

    .line 262
    invoke-virtual {v0}, Lcom/anythink/core/common/h/ce;->f()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/anythink/core/common/h/n;->B(I)V

    .line 263
    new-instance v2, Lcom/anythink/core/common/g;

    invoke-virtual {v12}, Lcom/anythink/core/common/h/as;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/anythink/core/common/g;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f;)V

    .line 264
    iput-object v8, v2, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    .line 265
    iput-object v10, v2, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/h/n;

    .line 266
    invoke-virtual {v2, v12}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h/as;)V

    .line 267
    iget-object v3, v12, Lcom/anythink/core/common/h/as;->d:Lcom/anythink/core/common/d/c;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/d/c;)V

    .line 268
    iput-object v5, v1, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    .line 269
    invoke-virtual {v10}, Lcom/anythink/core/common/h/bx;->aJ()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/anythink/core/common/f;->n:Ljava/lang/String;

    .line 270
    invoke-virtual {v11}, Lcom/anythink/core/e/m;->Z()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/anythink/core/e/v;->a(Lcom/anythink/core/e/m;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 271
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_c

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .line 272
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/h/by;

    move-object/from16 v16, v3

    goto :goto_4

    :cond_c
    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/16 v16, 0x0

    :goto_4
    if-eqz v16, :cond_10

    .line 273
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->e()Ljava/util/List;

    move-result-object v3

    .line 274
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/h/by;

    .line 275
    invoke-virtual {v3}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v3

    invoke-virtual/range {v16 .. v16}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 276
    iget-object v2, v1, Lcom/anythink/core/common/f;->s:Lcom/anythink/core/common/a/c;

    if-eqz v2, :cond_f

    move v3, v9

    .line 277
    iget-object v9, v1, Lcom/anythink/core/common/f;->w:Lcom/anythink/core/api/ATAdRequest;

    move/from16 v28, v3

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v7, v11

    move/from16 v27, v20

    move-object/from16 v26, v21

    move-object/from16 v31, v22

    move-object/from16 v6, v25

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/anythink/core/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/e/m;Ljava/util/Map;Lcom/anythink/core/api/ATAdRequest;)Lcom/anythink/core/common/a/c$a;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 278
    invoke-virtual {v2}, Lcom/anythink/core/common/a/c$a;->d()Lcom/anythink/core/common/h/by;

    move-result-object v6

    const/4 v9, 0x0

    .line 279
    invoke-static {v11, v10, v6, v9}, Lcom/anythink/core/common/v/ac;->a(ILcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/z;)Lcom/anythink/core/api/AdError;

    move-result-object v19

    if-eqz v19, :cond_d

    .line 280
    iget-object v2, v1, Lcom/anythink/core/common/f;->s:Lcom/anythink/core/common/a/c;

    invoke-virtual {v6}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/anythink/core/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v31

    :goto_6
    move v2, v11

    goto :goto_7

    :cond_d
    move-object/from16 v6, v31

    .line 281
    iput-object v2, v6, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/a/c$a;

    goto :goto_6

    .line 282
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/anythink/core/common/h/n;->e(J)V

    goto :goto_9

    :cond_e
    move v2, v11

    move-object/from16 v6, v31

    :goto_8
    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    move-object/from16 v3, p1

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v28, v9

    move-object v7, v11

    move/from16 v27, v20

    move-object/from16 v26, v21

    move-object/from16 v6, v22

    const/4 v2, 0x0

    goto :goto_8

    :goto_9
    move-object/from16 v12, p6

    move-object/from16 v22, v6

    move-object v11, v7

    move-object/from16 v21, v26

    move/from16 v20, v27

    move/from16 v9, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    goto/16 :goto_5

    :cond_10
    move-object/from16 v3, p1

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v28, v9

    move-object v7, v11

    move/from16 v27, v20

    move-object/from16 v26, v21

    move-object/from16 v6, v22

    .line 283
    iget-object v8, v1, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/anythink/core/common/u/e;->a(Landroid/content/Context;)Lcom/anythink/core/common/u/e;

    const/16 v8, 0xa

    invoke-static {v8, v10}, Lcom/anythink/core/common/u/e;->a(ILcom/anythink/core/common/h/bx;)V

    const/4 v8, 0x1

    .line 284
    new-array v9, v8, [Ljava/lang/Double;

    .line 285
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bo()Ljava/lang/Boolean;

    move-result-object v8

    .line 286
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->j()Z

    move-result v11

    if-nez v11, :cond_11

    if-eqz v8, :cond_12

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 287
    :cond_11
    iget-object v11, v1, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    invoke-virtual {v11, v3, v4}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/h/c;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 288
    invoke-virtual {v11}, Lcom/anythink/core/common/h/c;->n()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v2

    .line 289
    :cond_12
    invoke-static {}, Lcom/anythink/core/common/b/f;->a()Lcom/anythink/core/common/b/f;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/anythink/core/common/b/f;->a(Lcom/anythink/core/e/m;)Lcom/anythink/core/common/b/c;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 290
    invoke-virtual {v11}, Lcom/anythink/core/common/b/c;->f()Z

    move-result v12

    if-eqz v12, :cond_13

    const/4 v12, 0x1

    goto :goto_a

    :cond_13
    move v12, v2

    .line 291
    :goto_a
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bL()Z

    move-result v16

    if-nez v12, :cond_15

    if-eqz v16, :cond_14

    goto :goto_b

    :cond_14
    move/from16 v16, v2

    goto :goto_c

    :cond_15
    :goto_b
    move/from16 v16, v2

    const/4 v2, 0x1

    :goto_c
    if-eqz v2, :cond_18

    if-nez v12, :cond_18

    .line 292
    invoke-static {}, Lcom/anythink/core/api/ATAdRealTimeFilter;->getInstance()Lcom/anythink/core/api/ATAdRealTimeFilter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/anythink/core/api/ATAdRealTimeFilter;->getBiddingWaitMaxTime()Ljava/lang/Long;

    move-result-object v17

    if-eqz v17, :cond_16

    .line 293
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    :goto_d
    move-object/from16 v22, v8

    move-object/from16 v21, v9

    goto :goto_e

    .line 294
    :cond_16
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bM()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v17, v19, v21

    if-lez v17, :cond_17

    .line 295
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bM()J

    move-result-wide v19

    goto :goto_d

    :cond_17
    const-wide/16 v19, 0x1388

    goto :goto_d

    :cond_18
    const-wide/16 v19, -0x1

    goto :goto_d

    .line 296
    :goto_e
    new-instance v8, Lcom/anythink/core/common/w/i;

    move-object/from16 v9, v26

    invoke-direct {v8, v9}, Lcom/anythink/core/common/w/i;-><init>(Ljava/util/List;)V

    move/from16 v17, v2

    .line 297
    new-instance v2, Lcom/anythink/core/common/w/h;

    invoke-direct {v2}, Lcom/anythink/core/common/w/h;-><init>()V

    .line 298
    iput-object v4, v2, Lcom/anythink/core/common/w/h;->a:Ljava/lang/String;

    .line 299
    iput-object v5, v2, Lcom/anythink/core/common/w/h;->b:Ljava/lang/String;

    .line 300
    iput-object v0, v2, Lcom/anythink/core/common/w/h;->c:Lcom/anythink/core/common/h/ce;

    .line 301
    iput-object v9, v2, Lcom/anythink/core/common/w/h;->d:Ljava/util/List;

    .line 302
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->h()Ljava/util/List;

    move-result-object v9

    iput-object v9, v2, Lcom/anythink/core/common/w/h;->e:Ljava/util/List;

    move/from16 v9, v28

    .line 303
    iput-boolean v9, v2, Lcom/anythink/core/common/w/h;->i:Z

    .line 304
    invoke-virtual {v10}, Lcom/anythink/core/common/h/bx;->aM()I

    move-result v9

    iput v9, v2, Lcom/anythink/core/common/w/h;->j:I

    .line 305
    iput-object v14, v2, Lcom/anythink/core/common/w/h;->k:Lcom/anythink/core/common/h/cc;

    move-object/from16 v9, v29

    .line 306
    iput-object v9, v2, Lcom/anythink/core/common/w/h;->m:Lcom/anythink/core/common/h/bs;

    .line 307
    iput-object v8, v2, Lcom/anythink/core/common/w/h;->l:Lcom/anythink/core/common/w/i;

    move-object/from16 v23, v11

    move-object/from16 v11, v30

    .line 308
    iput-object v11, v2, Lcom/anythink/core/common/w/h;->o:Lcom/anythink/core/common/h/ac;

    .line 309
    iput-object v13, v2, Lcom/anythink/core/common/w/h;->n:Lcom/anythink/core/common/h/ac;

    .line 310
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->f()Ljava/util/List;

    move-result-object v13

    iput-object v13, v2, Lcom/anythink/core/common/w/h;->f:Ljava/util/List;

    .line 311
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->g()Ljava/util/List;

    move-result-object v13

    iput-object v13, v2, Lcom/anythink/core/common/w/h;->g:Ljava/util/List;

    .line 312
    aget-object v13, v21, v16

    if-eqz v13, :cond_19

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    :goto_f
    move-object v13, v8

    move-object/from16 v29, v9

    move-wide/from16 v8, v24

    goto :goto_10

    :cond_19
    const-wide/16 v24, 0x0

    goto :goto_f

    :goto_10
    iput-wide v8, v2, Lcom/anythink/core/common/w/h;->h:D

    .line 313
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->e()Ljava/util/List;

    move-result-object v8

    iput-object v8, v2, Lcom/anythink/core/common/w/h;->p:Ljava/util/List;

    .line 314
    iput-boolean v12, v2, Lcom/anythink/core/common/w/h;->q:Z

    .line 315
    invoke-virtual {v6, v2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/w/h;)V

    .line 316
    iget-object v2, v1, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, p6

    .line 317
    iget-object v2, v12, Lcom/anythink/core/common/h/as;->m:Lcom/anythink/core/common/h/h;

    if-eqz v2, :cond_1a

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/anythink/core/common/h/h;->h(J)V

    .line 319
    :cond_1a
    iget-object v2, v12, Lcom/anythink/core/common/h/as;->m:Lcom/anythink/core/common/h/h;

    invoke-static {v2, v10}, Lcom/anythink/core/common/u/f;->a(Lcom/anythink/core/common/h/h;Lcom/anythink/core/common/h/n;)V

    .line 320
    new-instance v2, Lcom/anythink/core/common/h;

    invoke-direct {v2, v4, v6}, Lcom/anythink/core/common/h;-><init>(Ljava/lang/String;Lcom/anythink/core/common/g;)V

    .line 321
    invoke-virtual {v6, v2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/h;)V

    .line 322
    invoke-virtual {v2, v7, v15}, Lcom/anythink/core/common/h;->a(Lcom/anythink/core/e/m;Z)V

    .line 323
    iget-object v8, v1, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/h$d;

    invoke-virtual {v2, v8}, Lcom/anythink/core/common/h;->a(Lcom/anythink/core/common/h$d;)V

    if-nez v28, :cond_1c

    if-nez v17, :cond_1b

    goto :goto_12

    :cond_1b
    :goto_11
    move/from16 v8, v16

    goto :goto_13

    .line 324
    :cond_1c
    :goto_12
    invoke-virtual {v2}, Lcom/anythink/core/common/h;->a()V

    goto :goto_11

    .line 325
    :goto_13
    iput-boolean v8, v1, Lcom/anythink/core/common/f;->d:Z

    if-nez v28, :cond_21

    .line 326
    invoke-virtual/range {v18 .. v18}, Lcom/anythink/core/common/h/br;->e()Ljava/util/List;

    move-result-object v8

    .line 327
    :try_start_5
    new-instance v9, Lcom/anythink/core/common/h/a;

    invoke-direct {v9}, Lcom/anythink/core/common/h/a;-><init>()V

    .line 328
    iput-object v3, v9, Lcom/anythink/core/common/h/a;->b:Landroid/content/Context;

    .line 329
    iput-object v12, v9, Lcom/anythink/core/common/h/a;->c:Lcom/anythink/core/common/h/as;

    .line 330
    iput-object v5, v9, Lcom/anythink/core/common/h/a;->d:Ljava/lang/String;

    .line 331
    iput-object v4, v9, Lcom/anythink/core/common/h/a;->e:Ljava/lang/String;

    .line 332
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->ap()I

    move-result v3

    iput v3, v9, Lcom/anythink/core/common/h/a;->f:I

    .line 333
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->aa()J

    move-result-wide v3

    iput-wide v3, v9, Lcom/anythink/core/common/h/a;->g:J

    .line 334
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->W()J

    move-result-wide v3

    iput-wide v3, v9, Lcom/anythink/core/common/h/a;->h:J

    .line 335
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->F()J

    move-result-wide v3

    iput-wide v3, v9, Lcom/anythink/core/common/h/a;->i:J

    .line 336
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    move/from16 v3, v27

    invoke-static {v7, v3}, Lcom/anythink/core/common/i;->a(Lcom/anythink/core/e/m;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/anythink/core/common/h/a;->l:Ljava/lang/String;

    .line 337
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    invoke-static {v7}, Lcom/anythink/core/common/i;->a(Lcom/anythink/core/e/m;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/anythink/core/common/h/a;->o:Ljava/lang/String;

    .line 338
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    invoke-static {v7}, Lcom/anythink/core/common/i;->b(Lcom/anythink/core/e/m;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/anythink/core/common/h/a;->p:Ljava/lang/String;

    .line 339
    iput-object v8, v9, Lcom/anythink/core/common/h/a;->j:Ljava/util/List;

    .line 340
    iput-object v0, v9, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    .line 341
    iput-object v10, v9, Lcom/anythink/core/common/h/a;->s:Lcom/anythink/core/common/h/n;

    .line 342
    iput-object v14, v9, Lcom/anythink/core/common/h/a;->v:Lcom/anythink/core/common/h/cc;

    move-object/from16 v4, v29

    .line 343
    iput-object v4, v9, Lcom/anythink/core/common/h/a;->w:Lcom/anythink/core/common/h/bs;

    .line 344
    iput-object v11, v9, Lcom/anythink/core/common/h/a;->x:Lcom/anythink/core/common/h/ac;

    .line 345
    invoke-virtual {v1}, Lcom/anythink/core/common/f;->r()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v9, Lcom/anythink/core/common/h/a;->q:Ljava/util/Map;

    .line 346
    iput-boolean v3, v9, Lcom/anythink/core/common/h/a;->m:Z

    .line 347
    iget v3, v12, Lcom/anythink/core/common/h/as;->c:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1d

    const/4 v3, 0x7

    .line 348
    iput v3, v9, Lcom/anythink/core/common/h/a;->t:I

    goto :goto_14

    :catchall_1
    move-exception v0

    goto :goto_17

    .line 349
    :cond_1d
    :goto_14
    iput-object v13, v9, Lcom/anythink/core/common/h/a;->y:Lcom/anythink/core/common/w/i;

    .line 350
    iget-object v3, v12, Lcom/anythink/core/common/h/as;->l:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    iput-object v3, v9, Lcom/anythink/core/common/h/a;->A:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    .line 351
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v3

    iget-object v4, v1, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/anythink/core/common/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/anythink/core/common/h/a;->B:Ljava/lang/String;

    if-eqz v22, :cond_1e

    .line 352
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v16, 0x0

    .line 353
    aget-object v3, v21, v16

    if-eqz v3, :cond_1f

    .line 354
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 355
    iput-wide v3, v9, Lcom/anythink/core/common/h/a;->C:D

    goto :goto_15

    :cond_1e
    const/16 v16, 0x0

    :cond_1f
    :goto_15
    if-eqz v15, :cond_20

    .line 356
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bv()I

    move-result v3

    if-lez v3, :cond_20

    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bv()I

    move-result v3

    goto :goto_16

    :cond_20
    move/from16 v3, v16

    :goto_16
    iput v3, v9, Lcom/anythink/core/common/h/a;->D:I

    .line 357
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->bE()I

    move-result v3

    iput v3, v9, Lcom/anythink/core/common/h/a;->E:I

    .line 358
    iput-object v2, v9, Lcom/anythink/core/common/h/a;->F:Lcom/anythink/core/common/h;

    move-object/from16 v2, v23

    .line 359
    iput-object v2, v9, Lcom/anythink/core/common/h/a;->I:Lcom/anythink/core/common/b/c;

    move/from16 v2, v17

    .line 360
    iput-boolean v2, v9, Lcom/anythink/core/common/h/a;->G:Z

    move-wide/from16 v2, v19

    .line 361
    iput-wide v2, v9, Lcom/anythink/core/common/h/a;->H:J

    .line 362
    iput-object v1, v9, Lcom/anythink/core/common/h/a;->J:Lcom/anythink/core/common/f;

    .line 363
    invoke-virtual {v7}, Lcom/anythink/core/e/m;->k()Lcom/anythink/core/e/f;

    move-result-object v2

    iput-object v2, v9, Lcom/anythink/core/common/h/a;->K:Lcom/anythink/core/e/f;

    .line 364
    new-instance v2, Lcom/anythink/core/c/b;

    invoke-direct {v2, v9}, Lcom/anythink/core/c/b;-><init>(Lcom/anythink/core/common/h/a;)V

    .line 365
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/anythink/core/common/j$b;->a(Z)V

    .line 366
    new-instance v3, Lcom/anythink/core/common/f$4;

    invoke-direct {v3, v1, v0, v6}, Lcom/anythink/core/common/f$4;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/h/ce;Lcom/anythink/core/common/g;)V

    invoke-interface {v2, v3}, Lcom/anythink/core/common/j$b;->a(Lcom/anythink/core/common/j$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_18

    .line 367
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/v/p;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/s;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyBiddingFinish error"

    invoke-static {v2, v0, v1}, Lcom/anythink/core/common/u/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v6}, Lcom/anythink/core/common/g;->e()V

    .line 369
    :cond_21
    :goto_18
    iget v0, v12, Lcom/anythink/core/common/h/as;->c:I

    if-eqz v0, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 370
    :cond_22
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v7, v1, v12, v10}, Lcom/anythink/core/common/v;->a(Lcom/anythink/core/e/m;ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/n;)V

    :cond_23
    return-void

    .line 371
    :cond_24
    :try_start_6
    invoke-virtual {v2, v8}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 372
    invoke-static {v7, v6, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 373
    new-instance v2, Lcom/anythink/core/common/h/m;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v2

    :catchall_2
    move-exception v0

    const/4 v2, 0x1

    goto :goto_19

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    goto :goto_1a

    .line 374
    :cond_25
    invoke-virtual {v10, v3}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 375
    new-instance v0, Lcom/anythink/core/common/h/m;

    const-string v2, "4003"

    invoke-static {v2, v6, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    const-string v3, "Strategy is close."

    invoke-direct {v0, v2, v3}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lcom/anythink/core/common/h/m; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 376
    :goto_19
    invoke-direct {v1, v2, v10, v0, v12}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/h/n;Ljava/lang/Throwable;Lcom/anythink/core/common/h/as;)V

    return-void

    .line 377
    :goto_1a
    invoke-direct {v1, v2, v10, v0, v12}, Lcom/anythink/core/common/f;->a(ZLcom/anythink/core/common/h/n;Ljava/lang/Throwable;Lcom/anythink/core/common/h/as;)V

    return-void
.end method

.method public static b(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V
    .locals 1

    .line 166
    invoke-static {}, Lcom/anythink/core/a/d;->a()Lcom/anythink/core/a/d;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/bx;->aQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/anythink/core/a/d;->a(Ljava/lang/String;Lcom/anythink/core/e/m;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    .line 167
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/h/n;->L(I)V

    const/4 p1, 0x3

    .line 168
    const-string v0, "2004"

    if-eq p0, p1, :cond_2

    const/16 p1, 0xb

    if-eq p0, p1, :cond_1

    const/16 p1, 0xc

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    const-string v0, "2030"

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, "2029"

    .line 171
    :cond_2
    :goto_0
    new-instance p0, Lcom/anythink/core/common/h/m;

    const-string p1, ""

    invoke-static {v0, p1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    const-string v0, "Pacing."

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 208
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/core/common/h/bp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/core/common/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/common/f;->B()Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/anythink/core/e/m;)Z
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/anythink/core/e/m;->an()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/anythink/core/common/b/e;->b(Lcom/anythink/core/e/m;Z)Z

    move-result p0

    return p0
.end method

.method private c(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/c;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    if-eqz v0, :cond_0

    .line 23
    iget-object v2, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZZZLcom/anythink/core/common/h/ae;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public static synthetic c(Lcom/anythink/core/common/f;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    if-eqz p0, :cond_0

    .line 29
    invoke-interface {p0}, Lcom/anythink/core/common/p/d;->d()V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/anythink/core/common/f;)Lcom/anythink/core/common/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    return-object p0
.end method

.method private d(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v0, v1}, Lcom/anythink/core/common/f;->a(ZZLcom/anythink/core/common/h/ae;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    if-eqz v2, :cond_1

    .line 8
    iget-object v4, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZZZLcom/anythink/core/common/h/ae;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private static d(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/anythink/core/e/m;->bk()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x5

    .line 4
    invoke-virtual {p1, p0}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 5
    new-instance p0, Lcom/anythink/core/common/h/m;

    const-string p1, "4003"

    const-string v0, ""

    invoke-static {p1, v0, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    const-string v0, "Strategy is close."

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0
.end method

.method private e(Landroid/content/Context;)Lcom/anythink/core/e/m;
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/anythink/core/e/o;->a(Landroid/content/Context;)Lcom/anythink/core/e/o;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/e/o;->c(Ljava/lang/String;)Lcom/anythink/core/e/m;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic e(Lcom/anythink/core/common/f;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic f(Lcom/anythink/core/common/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/core/common/f;->o:Z

    return p0
.end method

.method public static synthetic g(Lcom/anythink/core/common/f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/core/common/f;->p:J

    return-wide v0
.end method

.method public static synthetic h(Lcom/anythink/core/common/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/core/common/f;->q:Z

    return p0
.end method

.method public static synthetic i(Lcom/anythink/core/common/f;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/anythink/core/common/f;->o:Z

    return v0
.end method

.method public static synthetic j(Lcom/anythink/core/common/f;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/anythink/core/common/f;->p:J

    return-wide v0
.end method

.method public static synthetic k(Lcom/anythink/core/common/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/common/f;->n:Ljava/lang/String;

    return-object p0
.end method

.method private w()Lcom/anythink/core/common/f;
    .locals 0

    return-object p0
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    .line 13
    throw v1
.end method

.method private y()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/anythink/core/common/f;->p:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x7d0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method private z()Lcom/anythink/core/common/h/as;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->x:Lcom/anythink/core/common/h/as;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/api/ATAdStatusInfo;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/anythink/core/common/f;->l()Z

    move-result v0

    .line 88
    new-instance v1, Lcom/anythink/core/common/h/ae;

    invoke-direct {v1}, Lcom/anythink/core/common/h/ae;-><init>()V

    .line 89
    invoke-virtual {v1, p2}, Lcom/anythink/core/common/h/ae;->a(Ljava/util/Map;)V

    .line 90
    iget-object p2, p0, Lcom/anythink/core/common/f;->w:Lcom/anythink/core/api/ATAdRequest;

    invoke-virtual {v1, p2}, Lcom/anythink/core/common/h/ae;->a(Lcom/anythink/core/api/ATAdRequest;)V

    const/4 p2, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;ZZLcom/anythink/core/common/h/ae;)Lcom/anythink/core/common/h/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/anythink/core/common/h/c;->p()Lcom/anythink/core/api/ATAdInfo;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 93
    :goto_0
    new-instance v4, Lcom/anythink/core/api/ATAdStatusInfo;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    invoke-direct {v4, v0, p2, v3}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    .line 94
    iget-object p2, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    if-eqz p2, :cond_4

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/common/f;->p:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_2

    return-object v4

    :cond_2
    const/4 p2, 0x5

    .line 96
    invoke-virtual {p0, v4, p2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATAdStatusInfo;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {p0}, Lcom/anythink/core/common/f;->h()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v4}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    move-object v1, v0

    check-cast v1, Lcom/anythink/core/common/p/a;

    .line 99
    invoke-virtual {v1}, Lcom/anythink/core/common/p/a;->a()Lcom/anythink/core/api/ATAdRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/anythink/core/common/p/d;->a(Landroid/content/Context;Lcom/anythink/core/api/ATAdRequest;I)V

    :cond_4
    return-object v4
.end method

.method public final a(Landroid/content/Context;ZZLcom/anythink/core/common/h/ae;)Lcom/anythink/core/common/h/c;
    .locals 9

    .line 115
    invoke-direct {p0, p3, p2, p4}, Lcom/anythink/core/common/f;->a(ZZLcom/anythink/core/common/h/ae;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    if-eqz v2, :cond_1

    .line 117
    iget-object v4, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 118
    invoke-virtual/range {v2 .. v8}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZZZLcom/anythink/core/common/h/ae;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 119
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 120
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/h/c;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final a()Lcom/anythink/core/common/p/d;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/v;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 153
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;->e(Landroid/content/Context;)Lcom/anythink/core/e/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 155
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/v;->a(Lcom/anythink/core/e/m;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    invoke-virtual {v0}, Lcom/anythink/core/e/m;->v()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    invoke-virtual {v0}, Lcom/anythink/core/e/m;->ap()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v2

    .line 158
    new-instance v3, Lcom/anythink/core/common/h/ae;

    invoke-direct {v3}, Lcom/anythink/core/common/h/ae;-><init>()V

    .line 159
    new-instance v4, Lcom/anythink/core/common/h/d;

    invoke-direct {v4}, Lcom/anythink/core/common/h/d;-><init>()V

    if-eqz v2, :cond_1

    .line 160
    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-static {v4, v1, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/d;Ljava/lang/String;Lcom/anythink/core/e/m;)V

    .line 161
    invoke-virtual {v3, v4}, Lcom/anythink/core/common/h/ae;->a(Lcom/anythink/core/common/h/d;)V

    .line 162
    iget-object v0, v2, Lcom/anythink/core/common/f;->w:Lcom/anythink/core/api/ATAdRequest;

    invoke-virtual {v3, v0}, Lcom/anythink/core/common/h/ae;->a(Lcom/anythink/core/api/ATAdRequest;)V

    .line 163
    invoke-direct {v2, p1}, Lcom/anythink/core/common/f;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 164
    :cond_1
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-nez v1, :cond_2

    .line 165
    invoke-static {v3, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/ae;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_4

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 167
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    new-instance v0, Lcom/anythink/core/common/f$9;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/f$9;-><init>(Lcom/anythink/core/common/f;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 169
    invoke-static {v3, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/ae;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 170
    :cond_4
    :goto_0
    invoke-static {v3, v1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/ae;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 171
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Lcom/anythink/core/common/h/ae;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/common/h/ae;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/core/common/h/ae;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    invoke-static {p2, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/h/ae;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 235
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 236
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/anythink/core/common/h/bp;->a()Ljava/lang/Object;

    move-result-object p1

    .line 239
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_2

    .line 240
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p3, v0}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Lcom/anythink/core/common/h/ae;)Ljava/util/List;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_7

    .line 241
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 242
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p2, v1, :cond_4

    .line 243
    monitor-exit p1

    return-object v0

    .line 244
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-ltz p2, :cond_5

    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 245
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_6

    .line 246
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/api/ATAdInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_5
    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_6
    monitor-exit p1

    return-object v1

    .line 249
    :cond_7
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 250
    :goto_3
    :try_start_2
    monitor-exit p1

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-object v0
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/common/f;->a(II)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p1

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/f;->a(Ljava/util/List;I)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    move-result-object v0

    .line 285
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/h/bp;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;)V
    .locals 15

    move-object/from16 v2, p4

    .line 28
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->A()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    iput-boolean v1, v0, Lcom/anythink/core/common/d/s;->c:Z

    .line 30
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    if-eqz v2, :cond_1

    .line 31
    iget-wide v5, v2, Lcom/anythink/core/common/h/as;->n:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    move-wide v7, v3

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/core/common/f;->r()Ljava/util/Map;

    move-result-object v4

    .line 33
    new-array v6, v1, [I

    const/4 v11, 0x0

    .line 34
    aput v11, v6, v11

    .line 35
    const-string v0, "ofm_tid_key"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    :try_start_0
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :catchall_0
    :cond_2
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    move-result-object v12

    new-instance v13, Lcom/anythink/core/common/v/b/d;

    sget-object v14, Lcom/anythink/core/common/v/b/e;->ay:Ljava/lang/String;

    new-instance v0, Lcom/anythink/core/common/f$1;

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/anythink/core/common/f$1;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/h/as;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;[IJLjava/lang/String;Lcom/anythink/core/common/d/a;)V

    invoke-direct {v13, v14, v0}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v13, v11}, Lcom/anythink/core/common/v/b/c;->a(Lcom/anythink/core/common/v/b/d;Z)V

    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 280
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/h/bp;->a(Lcom/anythink/core/api/ATAdInfo;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/anythink/core/common/f;->j:Lcom/anythink/core/common/p/d;

    if-eqz v0, :cond_0

    .line 149
    iget v1, p0, Lcom/anythink/core/common/f;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATAdStatusInfo;I)Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/AdError;IZ)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/h/as;Lcom/anythink/core/api/AdError;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/h/as;Lcom/anythink/core/common/h/ce;Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/h/c;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 83
    monitor-enter p1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit p1

    throw v0

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/core/common/h/ca;Lcom/anythink/core/e/m;)V
    .locals 2

    .line 19
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/e/o;->a(Landroid/content/Context;)Lcom/anythink/core/e/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/e/o;->a(Ljava/lang/String;)Lcom/anythink/core/e/m;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/e/m;->am()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/anythink/core/e/m;->am()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 21
    invoke-virtual {v0}, Lcom/anythink/core/e/e;->aZ()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 22
    :cond_1
    iget-object p2, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    monitor-enter p2

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public final a(Lcom/anythink/core/common/p/c;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/anythink/core/common/f;->i:Lcom/anythink/core/common/p/c;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;DLcom/anythink/core/common/h/by;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/g;

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1, p2, p3, p4}, Lcom/anythink/core/common/g;->a(DLcom/anythink/core/common/h/by;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    move-result-object v0

    .line 283
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/h/bp;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/c;",
            ">;)V"
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/h/bp;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/f;->a(Ljava/util/List;I)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 274
    :try_start_0
    const-string v0, "event_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 276
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/anythink/core/common/d/q;->a(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 278
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/anythink/core/common/d/q;->b(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATAdStatusInfo;I)Z
    .locals 6

    .line 139
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anythink/core/common/f;->e(Landroid/content/Context;)Lcom/anythink/core/e/m;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/common/f;->h()I

    move-result v2

    invoke-virtual {v0}, Lcom/anythink/core/e/m;->r()I

    move-result v3

    if-lt v2, v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 141
    :cond_1
    invoke-static {}, Lcom/anythink/core/basead/adx/api/ATAdxSetting;->getInstance()Lcom/anythink/core/basead/adx/api/ATAdxSetting;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/anythink/core/basead/adx/api/ATAdxSetting;->isAdxNetworkMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/16 p1, 0x12

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq p2, v2, :cond_3

    if-ne p2, p1, :cond_8

    .line 142
    :cond_3
    invoke-virtual {v0}, Lcom/anythink/core/e/m;->g()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    if-ne v4, v3, :cond_4

    return v1

    :cond_4
    if-ne p2, v2, :cond_5

    const/4 v0, 0x2

    if-ne v4, v0, :cond_5

    return v3

    :cond_5
    if-ne p2, p1, :cond_6

    const/4 p1, 0x3

    if-ne v4, p1, :cond_6

    return v3

    :cond_6
    return v1

    :cond_7
    if-ne p2, p1, :cond_8

    return v1

    .line 143
    :cond_8
    invoke-direct {p0}, Lcom/anythink/core/common/f;->B()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 144
    invoke-virtual {v0}, Lcom/anythink/core/e/m;->bz()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/anythink/core/common/f;->a(ILjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v3

    .line 145
    :cond_9
    invoke-static {v0}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/e/m;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x5

    if-eq p2, p1, :cond_a

    if-eq p2, v2, :cond_a

    const/4 p1, 0x7

    if-eq p2, p1, :cond_a

    goto :goto_0

    :cond_a
    return v3

    :cond_b
    :goto_0
    return v1

    .line 146
    :cond_c
    invoke-static {v0}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/e/m;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v1
.end method

.method public final b(Ljava/lang/String;)Lcom/anythink/core/common/g;
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/g;

    return-object p1
.end method

.method public final b(Landroid/content/Context;ZZLcom/anythink/core/common/h/ae;)Lcom/anythink/core/common/h/c;
    .locals 8

    .line 173
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/v;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;->e(Landroid/content/Context;)Lcom/anythink/core/e/m;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 175
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz v7, :cond_1

    .line 176
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/v;->a(Lcom/anythink/core/e/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v6, p0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 177
    invoke-direct/range {v1 .. v7}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLcom/anythink/core/common/h/ae;Lcom/anythink/core/common/f;Lcom/anythink/core/e/m;)Lcom/anythink/core/common/h/c;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 178
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLcom/anythink/core/common/h/ae;)Lcom/anythink/core/common/h/c;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/f;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    move-result-object v0

    .line 207
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/h/bp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/c;",
            ">;"
        }
    .end annotation

    .line 179
    :try_start_0
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 182
    :cond_0
    :goto_0
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/v;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;->e(Landroid/content/Context;)Lcom/anythink/core/e/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/v;->a(Lcom/anythink/core/e/m;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/anythink/core/e/m;->v()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v0}, Lcom/anythink/core/e/m;->ap()I

    move-result v0

    .line 187
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-direct {v0, p1}, Lcom/anythink/core/common/f;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 189
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    .line 191
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;)V
    .locals 9

    .line 210
    iget v0, p4, Lcom/anythink/core/common/h/as;->c:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/anythink/core/common/t;->a()Lcom/anythink/core/common/t;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/anythink/core/common/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    const-string v1, "4"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    invoke-static {}, Lcom/anythink/core/common/t;->a()Lcom/anythink/core/common/t;

    move-result-object v1

    invoke-static {v0}, Lcom/anythink/core/common/v/o;->a([Ljava/lang/StackTraceElement;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Lcom/anythink/core/common/t;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 215
    :cond_1
    new-instance v0, Lcom/anythink/core/common/v/b/d;

    sget-object v1, Lcom/anythink/core/common/v/b/e;->dx:Ljava/lang/String;

    new-instance v2, Lcom/anythink/core/common/f$6;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/anythink/core/common/f$6;-><init>(Lcom/anythink/core/common/f;Landroid/content/Context;Lcom/anythink/core/common/d/a;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;)V

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 216
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/v/b/c;->b(Lcom/anythink/core/common/v/b/d;)V

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/anythink/core/common/f;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    invoke-static {p1}, Lcom/anythink/core/common/v/i;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 203
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    move-result-object v1

    .line 204
    invoke-virtual {v1, p1}, Lcom/anythink/core/common/h/bp;->a(Ljava/util/Map;)V

    .line 205
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Lcom/anythink/core/e/m;Lcom/anythink/core/common/h/n;)V
    .locals 10

    .line 2
    invoke-static {}, Lcom/anythink/core/common/b/f;->a()Lcom/anythink/core/common/b/f;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/anythink/core/common/b/f;->g()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/anythink/core/common/b/f;->h()I

    move-result v4

    .line 5
    invoke-static {}, Lcom/anythink/core/common/b/f;->i()I

    move-result v5

    .line 6
    iget-object v2, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcom/anythink/core/common/b/f;->a(Ljava/lang/String;Lcom/anythink/core/e/m;)I

    move-result v3

    .line 7
    invoke-virtual {v0}, Lcom/anythink/core/common/b/f;->j()Lcom/anythink/core/common/b/a;

    move-result-object p1

    .line 8
    iget-object v2, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/b/f;->a(Ljava/lang/String;)Lcom/anythink/core/common/b/d;

    move-result-object v2

    .line 9
    invoke-virtual {p2, v1}, Lcom/anythink/core/common/h/n;->ao(I)V

    .line 10
    invoke-virtual {p2, v4}, Lcom/anythink/core/common/h/n;->an(I)V

    .line 11
    invoke-virtual {p2, v5}, Lcom/anythink/core/common/h/n;->am(I)V

    .line 12
    invoke-virtual {p2, v3}, Lcom/anythink/core/common/h/n;->ap(I)V

    .line 13
    invoke-static {}, Lcom/anythink/core/common/b/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 14
    :cond_0
    const-string v1, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/a;->d()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Lcom/anythink/core/common/b/d;->b()Lcom/anythink/core/common/b/c;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/d;->b()Lcom/anythink/core/common/b/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/c;->i()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v1

    :goto_1
    const/4 v8, 0x0

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/anythink/core/common/b/a;->a()[I

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v8

    :goto_2
    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v2}, Lcom/anythink/core/common/b/d;->a()[I

    move-result-object v8

    :cond_4
    move-object v2, p2

    move-object v9, v8

    move-object v8, p1

    .line 18
    invoke-static/range {v2 .. v9}, Lcom/anythink/core/common/u/f;->a(Lcom/anythink/core/common/h/n;IIILjava/lang/String;Ljava/lang/String;[I[I)V

    .line 19
    invoke-virtual {v0}, Lcom/anythink/core/common/b/f;->e()Z

    move-result p1

    if-nez p1, :cond_5

    :goto_3
    return-void

    :cond_5
    const/16 p1, 0xb

    .line 20
    invoke-virtual {v2, p1}, Lcom/anythink/core/common/h/n;->L(I)V

    .line 21
    new-instance p1, Lcom/anythink/core/common/h/m;

    const-string p2, "2036"

    const-string v0, "SDK disabled due to ANR circuit breaker"

    invoke-static {p2, v1, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p2

    const-string v0, "SDK disabled."

    invoke-direct {p1, p2, v0}, Lcom/anythink/core/common/h/m;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/g;

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/anythink/core/common/g;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()Lcom/anythink/core/common/a/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/f;->s:Lcom/anythink/core/common/a/c;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/h/bp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lcom/anythink/core/common/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->r:Lcom/anythink/core/common/a;

    return-object v0
.end method

.method public final f()Lcom/anythink/core/c/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/f;->t:Lcom/anythink/core/c/f;

    return-object v0
.end method

.method public final g()Lcom/anythink/core/common/w;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/f;->u:Lcom/anythink/core/common/w;

    return-object v0
.end method

.method public final h()I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/h/ca;

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Lcom/anythink/core/common/h/ca;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :goto_1
    monitor-exit v0

    throw v1

    :cond_2
    return v1
.end method

.method public final i()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/anythink/core/common/f;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/anythink/core/common/f;->o:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/anythink/core/common/f;->p:J

    .line 4
    iput-boolean v0, p0, Lcom/anythink/core/common/f;->q:Z

    return-void
.end method

.method public final k()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/e/o;->a(Landroid/content/Context;)Lcom/anythink/core/e/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/e/o;->b(Ljava/lang/String;)Lcom/anythink/core/e/m;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/anythink/core/common/f;->o:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/anythink/core/common/f;->o:Z

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f;->p:J

    :cond_0
    return-void
.end method

.method public final l()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/anythink/core/common/f;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/anythink/core/common/g;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/anythink/core/common/g;->c()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Lcom/anythink/core/api/ATAdRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f;->w:Lcom/anythink/core/api/ATAdRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lcom/anythink/core/common/t;->a()Lcom/anythink/core/common/t;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/core/common/v/o;->a([Ljava/lang/StackTraceElement;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/t;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :catchall_0
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x6

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/f;->a(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/core/common/h/bp;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final r()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/anythink/core/common/f;->y:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/anythink/core/common/h/bp;->b()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 21
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
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    return-object v0

    .line 28
    :goto_1
    monitor-exit v1

    .line 29
    throw v0
.end method

.method public final s()Lcom/anythink/core/common/h/i;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/core/common/h/bp;->c()Lcom/anythink/core/common/h/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final t()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/common/f;->E()Lcom/anythink/core/common/h/bp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/h/bp;->a(Lcom/anythink/core/api/ATAdInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/anythink/core/common/f;->z:Z

    .line 3
    .line 4
    return-void
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/anythink/core/common/f;->z:Z

    .line 2
    .line 3
    return v0
.end method
