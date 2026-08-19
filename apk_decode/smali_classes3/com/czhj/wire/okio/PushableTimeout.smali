.class final Lcom/czhj/wire/okio/PushableTimeout;
.super Lcom/czhj/wire/okio/Timeout;


# instance fields
.field private a:Lcom/czhj/wire/okio/Timeout;

.field private b:Z

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/wire/okio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/czhj/wire/okio/PushableTimeout;->a:Lcom/czhj/wire/okio/Timeout;

    iget-wide v1, p0, Lcom/czhj/wire/okio/PushableTimeout;->d:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/czhj/wire/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/czhj/wire/okio/Timeout;

    iget-boolean v0, p0, Lcom/czhj/wire/okio/PushableTimeout;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/czhj/wire/okio/PushableTimeout;->a:Lcom/czhj/wire/okio/Timeout;

    iget-wide v1, p0, Lcom/czhj/wire/okio/PushableTimeout;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/czhj/wire/okio/Timeout;->deadlineNanoTime(J)Lcom/czhj/wire/okio/Timeout;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/czhj/wire/okio/PushableTimeout;->a:Lcom/czhj/wire/okio/Timeout;

    invoke-virtual {v0}, Lcom/czhj/wire/okio/Timeout;->clearDeadline()Lcom/czhj/wire/okio/Timeout;

    return-void
.end method

.method public a(Lcom/czhj/wire/okio/Timeout;)V
    .locals 4

    .line 2
    iput-object p1, p0, Lcom/czhj/wire/okio/PushableTimeout;->a:Lcom/czhj/wire/okio/Timeout;

    invoke-virtual {p1}, Lcom/czhj/wire/okio/Timeout;->hasDeadline()Z

    move-result v0

    iput-boolean v0, p0, Lcom/czhj/wire/okio/PushableTimeout;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/czhj/wire/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/czhj/wire/okio/PushableTimeout;->c:J

    invoke-virtual {p1}, Lcom/czhj/wire/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/czhj/wire/okio/PushableTimeout;->d:J

    invoke-virtual {p0}, Lcom/czhj/wire/okio/Timeout;->timeoutNanos()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/czhj/wire/okio/Timeout;->a(JJ)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/czhj/wire/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/czhj/wire/okio/Timeout;

    iget-boolean v0, p0, Lcom/czhj/wire/okio/PushableTimeout;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/czhj/wire/okio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/czhj/wire/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/czhj/wire/okio/PushableTimeout;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/czhj/wire/okio/Timeout;->deadlineNanoTime(J)Lcom/czhj/wire/okio/Timeout;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/czhj/wire/okio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/czhj/wire/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    return-void
.end method
