.class public Lcom/ubix/ssp/ad/e/a0/y/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:F

.field private i:Lcom/ubix/ssp/ad/e/a0/y/e/a;

.field private j:Lcom/ubix/ssp/ad/e/a0/y/e/a;

.field private k:J

.field private l:J

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(ILandroid/view/View;FILcom/ubix/ssp/ad/e/a0/y/e/a;Lcom/ubix/ssp/ad/e/a0/y/e/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->b:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->e:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->f:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->m:Z

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->n:I

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->a:Ljava/lang/ref/WeakReference;

    iput p4, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->g:I

    iput-object p5, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->i:Lcom/ubix/ssp/ad/e/a0/y/e/a;

    iput-object p6, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->j:Lcom/ubix/ssp/ad/e/a0/y/e/a;

    iput p3, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->h:F

    return-void
.end method

.method private c()V
    .locals 6

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->j:Lcom/ubix/ssp/ad/e/a0/y/e/a;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->n:I

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/a0/y/e/a;->b(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->g:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->l:J

    iget-wide v4, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->k:J

    sub-long/2addr v2, v4

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->b:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->j:Lcom/ubix/ssp/ad/e/a0/y/e/a;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewAbility per "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->j:Lcom/ubix/ssp/ad/e/a0/y/e/a;

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->n:I

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/a0/y/e/a;->a(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->j:Lcom/ubix/ssp/ad/e/a0/y/e/a;

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->n:I

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/a0/y/e/a;->b(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a()Lcom/ubix/ssp/ad/e/a0/y/e/a;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->i:Lcom/ubix/ssp/ad/e/a0/y/e/a;

    return-object v0
.end method

.method public b()V
    .locals 5

    :try_start_0
    const-class v0, Lcom/ubix/ssp/ad/e/a0/y/e/b;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->k:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->k:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/y/e/d;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/ubix/ssp/ad/e/a0/y/e/d;-><init>(Landroid/view/View;)V

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->h:F

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/y/e/d;->a(F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->b:Z

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/b;->l:J

    :cond_2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/y/e/b;->c()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
