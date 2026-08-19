.class Lcom/octopus/ad/b/a$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/b/a;->g()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/b/a;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/octopus/ad/b/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/b/a$2;->a:Lcom/octopus/ad/b/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/octopus/ad/b/a$2;->b:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/b/a$2;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/TimerTask;->scheduledExecutionTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/octopus/ad/b/a$2;->a:Lcom/octopus/ad/b/a;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/octopus/ad/b/a;->b(Lcom/octopus/ad/b/a;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v4, p0, Lcom/octopus/ad/b/a$2;->a:Lcom/octopus/ad/b/a;

    .line 20
    .line 21
    invoke-static {v4}, Lcom/octopus/ad/b/a;->c(Lcom/octopus/ad/b/a;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    sub-long/2addr v2, v4

    .line 26
    sub-long/2addr v0, v2

    .line 27
    iput-wide v0, p0, Lcom/octopus/ad/b/a$2;->b:J

    .line 28
    .line 29
    new-instance v0, Lcom/octopus/ad/b/a$2$1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/octopus/ad/b/a$2$1;-><init>(Lcom/octopus/ad/b/a$2;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/b/a$2;->a:Lcom/octopus/ad/b/a;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/octopus/ad/b/a;->b(Lcom/octopus/ad/b/a;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    invoke-virtual {p0}, Ljava/util/TimerTask;->scheduledExecutionTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    iget-wide v8, p0, Lcom/octopus/ad/b/a$2;->b:J

    .line 49
    .line 50
    sub-long/2addr v6, v8

    .line 51
    sub-long/2addr v4, v6

    .line 52
    invoke-static {v0, v4, v5}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/a;J)J

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/octopus/ad/b/a$2$2;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/octopus/ad/b/a$2$2;-><init>(Lcom/octopus/ad/b/a$2;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/octopus/ad/b/a$2;->a:Lcom/octopus/ad/b/a;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/octopus/ad/b/a;->c(Lcom/octopus/ad/b/a;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    cmp-long v0, v0, v2

    .line 70
    .line 71
    if-gtz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/octopus/ad/b/a$2;->a:Lcom/octopus/ad/b/a;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-static {v0, v1}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/a;Z)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method
