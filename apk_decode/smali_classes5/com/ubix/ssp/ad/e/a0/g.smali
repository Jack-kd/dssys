.class public Lcom/ubix/ssp/ad/e/a0/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/g$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/CountDownTimer;

.field private final b:J

.field private c:J

.field private d:Lcom/ubix/ssp/ad/e/a0/g$b;

.field private volatile e:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->e:Z

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/a0/g;->b:J

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/a0/g;->c:J

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->c:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/g;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/a0/g;->c:J

    return-wide p1
.end method

.method private a(J)V
    .locals 7

    .line 4
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/ubix/ssp/ad/e/a0/g$a;

    const-wide/16 v5, 0x32

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/a0/g$a;-><init>(Lcom/ubix/ssp/ad/e/a0/g;JJ)V

    iput-object v1, v2, Lcom/ubix/ssp/ad/e/a0/g;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/g;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/g;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/a0/g;)Lcom/ubix/ssp/ad/e/a0/g$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/g;->d:Lcom/ubix/ssp/ad/e/a0/g$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/a0/g;)Landroid/os/CountDownTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/g;->a:Landroid/os/CountDownTimer;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->a:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->d:Lcom/ubix/ssp/ad/e/a0/g$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/g$b;->b()V

    :cond_1
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/g$b;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/g;->d:Lcom/ubix/ssp/ad/e/a0/g$b;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->e:Z

    return v0
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const-string v0, "onTick=pause inner 1"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->a:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->c:J

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/g;->a(J)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/g;->b:J

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/g;->a(J)V

    return-void
.end method
