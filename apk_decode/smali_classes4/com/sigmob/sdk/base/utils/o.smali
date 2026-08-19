.class public Lcom/sigmob/sdk/base/utils/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/utils/o$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "o"


# instance fields
.field private b:Landroid/os/CountDownTimer;

.field private c:J

.field private final d:J

.field private final e:J

.field private f:Z

.field private g:Lcom/sigmob/sdk/base/utils/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/utils/o;->f:Z

    iput-wide p1, p0, Lcom/sigmob/sdk/base/utils/o;->d:J

    iput-wide p3, p0, Lcom/sigmob/sdk/base/utils/o;->e:J

    iput-wide p1, p0, Lcom/sigmob/sdk/base/utils/o;->c:J

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/utils/o;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/sigmob/sdk/base/utils/o;->c:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/utils/o;)Lcom/sigmob/sdk/base/utils/o$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/base/utils/o;->g:Lcom/sigmob/sdk/base/utils/o$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 3
    sget-object v0, Lcom/sigmob/sdk/base/utils/o;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start"

    invoke-static {v0, v3, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/o;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    new-instance v2, Lcom/sigmob/sdk/base/utils/o$1;

    iget-wide v4, p0, Lcom/sigmob/sdk/base/utils/o;->c:J

    iget-wide v6, p0, Lcom/sigmob/sdk/base/utils/o;->e:J

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sigmob/sdk/base/utils/o$1;-><init>(Lcom/sigmob/sdk/base/utils/o;JJ)V

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, v3, Lcom/sigmob/sdk/base/utils/o;->b:Landroid/os/CountDownTimer;

    iput-boolean v1, v3, Lcom/sigmob/sdk/base/utils/o;->f:Z

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/utils/o$a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/base/utils/o;->g:Lcom/sigmob/sdk/base/utils/o$a;

    return-void
.end method

.method public b()V
    .locals 4

    sget-object v0, Lcom/sigmob/sdk/base/utils/o;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "stop"

    invoke-static {v0, v3, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/o;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-wide v2, p0, Lcom/sigmob/sdk/base/utils/o;->d:J

    iput-wide v2, p0, Lcom/sigmob/sdk/base/utils/o;->c:J

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/utils/o;->f:Z

    return-void
.end method

.method public c()V
    .locals 3

    sget-object v0, Lcom/sigmob/sdk/base/utils/o;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pause"

    invoke-static {v0, v2, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/o;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/utils/o;->f:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/utils/o;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    sget-object v0, Lcom/sigmob/sdk/base/utils/o;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resume"

    invoke-static {v0, v2, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/utils/o;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/utils/o;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    sget-object v0, Lcom/sigmob/sdk/base/utils/o;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "destroy"

    invoke-static {v0, v2, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/o;->b:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/utils/o;->b:Landroid/os/CountDownTimer;

    :cond_0
    iput-object v1, p0, Lcom/sigmob/sdk/base/utils/o;->g:Lcom/sigmob/sdk/base/utils/o$a;

    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/sigmob/sdk/base/utils/o;->c:J

    return-wide v0
.end method
