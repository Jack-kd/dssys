.class public Lcom/octopus/ad/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Timer;

.field private b:J

.field private c:J

.field private d:J

.field private e:Lcom/octopus/ad/b/b;

.field private f:Lcom/octopus/ad/b/c;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/octopus/ad/b/c;->c:Lcom/octopus/ad/b/c;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/octopus/ad/b/a;->f:Lcom/octopus/ad/b/c;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/b/a;->a(J)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3, p4}, Lcom/octopus/ad/b/a;->b(J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/b/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/b/a;->d:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/b/a;)Lcom/octopus/ad/b/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/octopus/ad/b/a;->e:Lcom/octopus/ad/b/b;

    return-object p0
.end method

.method private a(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/octopus/ad/b/a;->b:J

    .line 13
    iput-wide p1, p0, Lcom/octopus/ad/b/a;->d:J

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/b/a;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/octopus/ad/b/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/b/a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/octopus/ad/b/a;->h()V

    .line 10
    sget-object v0, Lcom/octopus/ad/b/c;->c:Lcom/octopus/ad/b/c;

    iput-object v0, p0, Lcom/octopus/ad/b/a;->f:Lcom/octopus/ad/b/c;

    .line 11
    new-instance v0, Lcom/octopus/ad/b/a$1;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/b/a$1;-><init>(Lcom/octopus/ad/b/a;Z)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/b/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/b/a;->b:J

    return-wide v0
.end method

.method private b(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/octopus/ad/b/a;->c:J

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/b/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/b/a;->d:J

    return-wide v0
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/b/a;->a:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/b/a;->a:Ljava/util/Timer;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/octopus/ad/b/a;->a:Ljava/util/Timer;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/b/a;->a:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/b/a;->f:Lcom/octopus/ad/b/c;

    sget-object v1, Lcom/octopus/ad/b/c;->a:Lcom/octopus/ad/b/c;

    if-eq v0, v1, :cond_0

    .line 5
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/octopus/ad/b/a;->a:Ljava/util/Timer;

    .line 6
    invoke-virtual {p0}, Lcom/octopus/ad/b/a;->g()Ljava/util/TimerTask;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/octopus/ad/b/a;->c:J

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 7
    iput-object v1, p0, Lcom/octopus/ad/b/a;->f:Lcom/octopus/ad/b/c;

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/b/b;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/octopus/ad/b/a;->e:Lcom/octopus/ad/b/b;

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/b/a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/b/a;->f:Lcom/octopus/ad/b/c;

    sget-object v1, Lcom/octopus/ad/b/c;->a:Lcom/octopus/ad/b/c;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/octopus/ad/b/a;->h()V

    .line 4
    sget-object v0, Lcom/octopus/ad/b/c;->b:Lcom/octopus/ad/b/c;

    iput-object v0, p0, Lcom/octopus/ad/b/a;->f:Lcom/octopus/ad/b/c;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/b/a;->f:Lcom/octopus/ad/b/c;

    sget-object v1, Lcom/octopus/ad/b/c;->b:Lcom/octopus/ad/b/c;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/octopus/ad/b/a;->a()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/octopus/ad/b/a;->a(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/b/a;->a:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/octopus/ad/b/a;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/octopus/ad/b/a;->b:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/octopus/ad/b/a;->d:J

    .line 11
    .line 12
    sget-object v0, Lcom/octopus/ad/b/c;->c:Lcom/octopus/ad/b/c;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/octopus/ad/b/a;->f:Lcom/octopus/ad/b/c;

    .line 15
    .line 16
    return-void
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/b/a;->f:Lcom/octopus/ad/b/c;

    .line 2
    .line 3
    sget-object v1, Lcom/octopus/ad/b/c;->a:Lcom/octopus/ad/b/c;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public g()Ljava/util/TimerTask;
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/b/a$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/octopus/ad/b/a$2;-><init>(Lcom/octopus/ad/b/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
