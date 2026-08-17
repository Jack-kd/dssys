.class public Lcom/anythink/core/common/u/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/u/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field private static b:Lcom/anythink/core/common/u/a/a$a;

.field private static volatile c:Lcom/anythink/core/common/u/a/a;


# instance fields
.field private d:Z

.field private e:Z

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/anythink/core/common/u/a/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    return-void
.end method

.method public static a()Lcom/anythink/core/common/u/a/a;
    .locals 2

    .line 2
    sget-object v0, Lcom/anythink/core/common/u/a/a;->c:Lcom/anythink/core/common/u/a/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/anythink/core/common/u/a/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/u/a/a;->c:Lcom/anythink/core/common/u/a/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/anythink/core/common/u/a/a;

    invoke-direct {v1}, Lcom/anythink/core/common/u/a/a;-><init>()V

    sput-object v1, Lcom/anythink/core/common/u/a/a;->c:Lcom/anythink/core/common/u/a/a;

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
    sget-object v0, Lcom/anythink/core/common/u/a/a;->c:Lcom/anythink/core/common/u/a/a;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    .line 8
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/v/b/d;

    sget-object v2, Lcom/anythink/core/common/v/b/e;->aQ:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->e(Lcom/anythink/core/common/v/b/d;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 13
    sget-object v0, Lcom/anythink/core/common/u/a/a;->b:Lcom/anythink/core/common/u/a/a$a;

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/u/a/a$a;->a(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/u/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/core/common/u/a/a;->d:Z

    return p0
.end method

.method public static synthetic b(Lcom/anythink/core/common/u/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/core/common/u/a/a;->e:Z

    return p0
.end method

.method public static g()Lcom/anythink/core/common/u/a/a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/core/common/u/a/a;->b:Lcom/anythink/core/common/u/a/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method private h()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/anythink/core/common/v/b/d;

    .line 6
    .line 7
    sget-object v2, Lcom/anythink/core/common/v/b/e;->aW:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v3, Lcom/anythink/core/common/u/a/a$4;

    .line 10
    .line 11
    invoke-direct {v3, p0}, Lcom/anythink/core/common/u/a/a$4;-><init>(Lcom/anythink/core/common/u/a/a;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->e(Lcom/anythink/core/common/v/b/d;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/anythink/core/common/v/b/d;

    .line 6
    .line 7
    sget-object v2, Lcom/anythink/core/common/v/b/e;->aV:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v3, Lcom/anythink/core/common/u/a/a$7;

    .line 10
    .line 11
    invoke-direct {v3, p0}, Lcom/anythink/core/common/u/a/a$7;-><init>(Lcom/anythink/core/common/u/a/a;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->e(Lcom/anythink/core/common/v/b/d;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static j()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(ILcom/anythink/core/common/h/bx;Lcom/anythink/core/common/h/by;J)V
    .locals 10

    .line 9
    iget-boolean v0, p0, Lcom/anythink/core/common/u/a/a;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/v/b/d;

    sget-object v2, Lcom/anythink/core/common/v/b/e;->aT:Ljava/lang/String;

    new-instance v3, Lcom/anythink/core/common/u/a/a$2;

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-wide v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/anythink/core/common/u/a/a$2;-><init>(Lcom/anythink/core/common/u/a/a;ILcom/anythink/core/common/h/bx;Lcom/anythink/core/common/h/by;J)V

    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->e(Lcom/anythink/core/common/v/b/d;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/h/u;)V
    .locals 4

    .line 11
    iget-boolean v0, p0, Lcom/anythink/core/common/u/a/a;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/v/b/d;

    sget-object v2, Lcom/anythink/core/common/v/b/e;->aS:Ljava/lang/String;

    new-instance v3, Lcom/anythink/core/common/u/a/a$3;

    invoke-direct {v3, p0, p1}, Lcom/anythink/core/common/u/a/a$3;-><init>(Lcom/anythink/core/common/u/a/a;Lcom/anythink/core/common/h/u;)V

    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->e(Lcom/anythink/core/common/v/b/d;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/anythink/core/common/u/a/a;->d:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/anythink/core/common/u/a/a;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/u/a/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/anythink/core/common/u/a/a$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/anythink/core/common/u/a/a$a;-><init>(Lcom/anythink/core/common/u/a/a;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/anythink/core/common/u/a/a;->b:Lcom/anythink/core/common/u/a/a$a;

    .line 17
    .line 18
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/anythink/core/common/v/b/d;

    .line 23
    .line 24
    sget-object v2, Lcom/anythink/core/common/v/b/e;->aR:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v3, Lcom/anythink/core/common/u/a/a$1;

    .line 27
    .line 28
    invoke-direct {v3, p0}, Lcom/anythink/core/common/u/a/a$1;-><init>(Lcom/anythink/core/common/u/a/a;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->e(Lcom/anythink/core/common/v/b/d;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/anythink/core/common/u/a/a;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/anythink/core/common/v/b/d;

    .line 11
    .line 12
    sget-object v2, Lcom/anythink/core/common/v/b/e;->aU:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v3, Lcom/anythink/core/common/u/a/a$5;

    .line 15
    .line 16
    invoke-direct {v3, p0}, Lcom/anythink/core/common/u/a/a$5;-><init>(Lcom/anythink/core/common/u/a/a;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->e(Lcom/anythink/core/common/v/b/d;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/anythink/core/common/u/a/a;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/anythink/core/common/v/b/d;

    .line 11
    .line 12
    sget-object v2, Lcom/anythink/core/common/v/b/e;->aX:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v3, Lcom/anythink/core/common/u/a/a$6;

    .line 15
    .line 16
    invoke-direct {v3, p0}, Lcom/anythink/core/common/u/a/a$6;-><init>(Lcom/anythink/core/common/u/a/a;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->e(Lcom/anythink/core/common/v/b/d;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
