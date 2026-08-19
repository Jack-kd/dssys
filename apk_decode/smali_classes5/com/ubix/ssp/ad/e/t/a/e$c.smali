.class Lcom/ubix/ssp/ad/e/t/a/e$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/t/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/t/a/e;


# direct methods
.method private constructor <init>(Lcom/ubix/ssp/ad/e/t/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/t/a/e$c;->a:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/ad/e/t/a/e;Lcom/ubix/ssp/ad/e/t/a/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/t/a/e$c;-><init>(Lcom/ubix/ssp/ad/e/t/a/e;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e$c;->a:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/t/a/e;->a(Lcom/ubix/ssp/ad/e/t/a/e;)Lcom/ubix/ssp/ad/e/t/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e$c;->a:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/t/a/e;->b(Lcom/ubix/ssp/ad/e/t/a/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e$c;->a:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/t/a/e;->c(Lcom/ubix/ssp/ad/e/t/a/e;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/e$c;->a:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/t/a/e;->a(Lcom/ubix/ssp/ad/e/t/a/e;)Lcom/ubix/ssp/ad/e/t/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/t/a/c;->g()Lcom/ubix/ssp/ad/e/t/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/e$c;->a:Lcom/ubix/ssp/ad/e/t/a/e;

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/t/a/d;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/t/a/e;->a(Lcom/ubix/ssp/ad/e/t/a/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/ubix/ssp/ad/e/t/a/d;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/16 v0, 0x64

    :cond_1
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/t/a/e$c;->a:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/t/a/e;->d(Lcom/ubix/ssp/ad/e/t/a/e;)V

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_2
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
