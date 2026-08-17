.class Lcom/ubix/ssp/ad/j/b$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/b;->a(Ljava/util/HashMap;Landroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:I

.field final synthetic c:[F

.field final synthetic d:Lcom/ubix/ssp/ad/j/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/b;[JI[F)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b$f;->d:Lcom/ubix/ssp/ad/j/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/j/b$f;->a:[J

    iput p3, p0, Lcom/ubix/ssp/ad/j/b$f;->b:I

    iput-object p4, p0, Lcom/ubix/ssp/ad/j/b$f;->c:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$f;->d:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->k(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$f;->d:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->k(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$f;->a:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x5

    add-long/2addr v2, v4

    iget v4, p0, Lcom/ubix/ssp/ad/j/b$f;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-long v4, v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/ubix/ssp/ad/j/b$f;->b:I

    int-to-long v6, v0

    add-long/2addr v6, v2

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$f;->c:[F

    aget v9, v0, v1

    const/4 v1, 0x1

    aget v10, v0, v1

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/b$f;->d:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/j/b;->k(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$f;->d:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->i(Lcom/ubix/ssp/ad/j/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
