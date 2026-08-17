.class public Lcom/anythink/core/common/a/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/anythink/core/common/a/e;


# instance fields
.field final a:Ljava/lang/String;

.field b:J

.field c:Ljava/lang/Object;

.field private e:Lcom/anythink/core/common/f/b;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/core/common/a/e;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/core/common/a/e;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/anythink/core/common/a/e;->b:J

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/anythink/core/common/a/e;->c:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/anythink/core/common/f/e;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/e;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/d;)Lcom/anythink/core/common/f/b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/anythink/core/common/a/e;->e:Lcom/anythink/core/common/f/b;

    .line 50
    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/anythink/core/common/a/e;->f:Ljava/util/Map;

    .line 57
    .line 58
    invoke-static {}, Lcom/anythink/core/common/a/e;->f()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    iput-wide v0, p0, Lcom/anythink/core/common/a/e;->b:J

    .line 63
    .line 64
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lcom/anythink/core/common/v/b/d;

    .line 69
    .line 70
    sget-object v2, Lcom/anythink/core/common/v/b/e;->e:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v3, Lcom/anythink/core/common/a/e$1;

    .line 73
    .line 74
    invoke-direct {v3, p0}, Lcom/anythink/core/common/a/e$1;-><init>(Lcom/anythink/core/common/a/e;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->d(Lcom/anythink/core/common/v/b/d;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/a/e;)Lcom/anythink/core/common/f/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/common/a/e;->e:Lcom/anythink/core/common/f/b;

    return-object p0
.end method

.method private a(ILjava/lang/String;Lcom/anythink/core/common/h/w;)V
    .locals 1

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p3, Lcom/anythink/core/common/h/r;

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/anythink/core/common/a/f;

    invoke-direct {v0}, Lcom/anythink/core/common/a/f;-><init>()V

    .line 11
    invoke-virtual {v0, p2}, Lcom/anythink/core/common/a/f;->a(Ljava/lang/String;)V

    .line 12
    move-object p2, p3

    check-cast p2, Lcom/anythink/core/common/h/r;

    invoke-virtual {p2}, Lcom/anythink/core/common/h/bl;->Q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/anythink/core/common/a/f;->b(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p3}, Lcom/anythink/core/common/h/w;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/anythink/core/common/a/f;->c(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/a/f;->a(I)V

    .line 15
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/a/f;->d(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/anythink/core/common/a/e;->e:Lcom/anythink/core/common/f/b;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/a/f;)J

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/a/e;ILjava/lang/String;Lcom/anythink/core/common/h/w;)V
    .locals 1

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p3, Lcom/anythink/core/common/h/r;

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/anythink/core/common/a/f;

    invoke-direct {v0}, Lcom/anythink/core/common/a/f;-><init>()V

    .line 20
    invoke-virtual {v0, p2}, Lcom/anythink/core/common/a/f;->a(Ljava/lang/String;)V

    .line 21
    move-object p2, p3

    check-cast p2, Lcom/anythink/core/common/h/r;

    invoke-virtual {p2}, Lcom/anythink/core/common/h/bl;->Q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/anythink/core/common/a/f;->b(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3}, Lcom/anythink/core/common/h/w;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/anythink/core/common/a/f;->c(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/a/f;->a(I)V

    .line 24
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/a/f;->d(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/anythink/core/common/a/e;->e:Lcom/anythink/core/common/f/b;

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/a/f;)J

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/common/h/w;)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/v/b/d;

    sget-object v2, Lcom/anythink/core/common/v/b/e;->g:Ljava/lang/String;

    new-instance v3, Lcom/anythink/core/common/a/e$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/anythink/core/common/a/e$2;-><init>(Lcom/anythink/core/common/a/e;Ljava/lang/String;Lcom/anythink/core/common/h/w;)V

    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->d(Lcom/anythink/core/common/v/b/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/anythink/core/common/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/a/e;->e()V

    .line 6
    iget-object v1, p0, Lcom/anythink/core/common/a/e;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/a/g;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/a/g;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw p1

    :cond_1
    return-void
.end method

.method private static b()Lcom/anythink/core/common/a/e;
    .locals 2

    .line 2
    sget-object v0, Lcom/anythink/core/common/a/e;->d:Lcom/anythink/core/common/a/e;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/anythink/core/common/a/e;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/a/e;->d:Lcom/anythink/core/common/a/e;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/anythink/core/common/a/e;

    invoke-direct {v1}, Lcom/anythink/core/common/a/e;-><init>()V

    sput-object v1, Lcom/anythink/core/common/a/e;->d:Lcom/anythink/core/common/a/e;

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

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/anythink/core/common/a/e;->d:Lcom/anythink/core/common/a/e;

    return-object v0
.end method

.method public static synthetic b(Lcom/anythink/core/common/a/e;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/common/a/e;->f:Ljava/util/Map;

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/anythink/core/common/h/w;)V
    .locals 4

    .line 8
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/v/b/d;

    sget-object v2, Lcom/anythink/core/common/v/b/e;->f:Ljava/lang/String;

    new-instance v3, Lcom/anythink/core/common/a/e$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/anythink/core/common/a/e$3;-><init>(Lcom/anythink/core/common/a/e;Ljava/lang/String;Lcom/anythink/core/common/h/w;)V

    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->d(Lcom/anythink/core/common/v/b/d;)V

    return-void
.end method

.method private static c()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic c(Lcom/anythink/core/common/a/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/anythink/core/common/a/e;->e()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/anythink/core/common/a/e;->f()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/anythink/core/common/a/e;->b:J

    .line 6
    .line 7
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/anythink/core/common/v/b/d;

    .line 12
    .line 13
    sget-object v2, Lcom/anythink/core/common/v/b/e;->e:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v3, Lcom/anythink/core/common/a/e$1;

    .line 16
    .line 17
    invoke-direct {v3, p0}, Lcom/anythink/core/common/a/e$1;-><init>(Lcom/anythink/core/common/a/e;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->d(Lcom/anythink/core/common/v/b/d;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/anythink/core/common/a/e;->f()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/anythink/core/common/a/e;->b:J

    .line 6
    .line 7
    cmp-long v2, v2, v0

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/anythink/core/common/a/e;->f:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lcom/anythink/core/common/a/e;->b:J

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static f()J
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0xd

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return-wide v0

    .line 31
    :catchall_0
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/anythink/core/common/a/e;->e:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->b()V

    return-void
.end method
