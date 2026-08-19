.class Lcom/ubix/ssp/ad/e/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/d;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/d;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/d;->i:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/ubix/ssp/ad/e/d;->h:I

    add-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/ubix/ssp/ad/e/d;->h:I

    iget v1, v0, Lcom/ubix/ssp/ad/e/d;->g:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ubix/ssp/ad/e/d;->g:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v1, v0, Lcom/ubix/ssp/ad/e/d;->g:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/ubix/ssp/ad/e/d;->g:I

    iget v1, v0, Lcom/ubix/ssp/ad/e/d;->h:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/ubix/ssp/ad/e/d;->h:I

    :goto_0
    iget-object v1, v0, Lcom/ubix/ssp/ad/e/d;->a:Landroid/graphics/Paint;

    iget v0, v0, Lcom/ubix/ssp/ad/e/d;->h:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/d;->b:Landroid/graphics/Paint;

    iget v0, v0, Lcom/ubix/ssp/ad/e/d;->h:I

    const/16 v3, 0x64

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    iget v1, v0, Lcom/ubix/ssp/ad/e/d;->g:I

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/d;->a(Lcom/ubix/ssp/ad/e/d;)I

    move-result v0

    const/4 v4, 0x0

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/d;->a(Lcom/ubix/ssp/ad/e/d;)I

    move-result v1

    iput v1, v0, Lcom/ubix/ssp/ad/e/d;->g:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    iput-boolean v4, v0, Lcom/ubix/ssp/ad/e/d;->j:Z

    iput-boolean v4, v0, Lcom/ubix/ssp/ad/e/d;->i:Z

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    iget v1, v0, Lcom/ubix/ssp/ad/e/d;->g:I

    if-gez v1, :cond_2

    iput v4, v0, Lcom/ubix/ssp/ad/e/d;->g:I

    const/16 v1, 0xff

    iput v1, v0, Lcom/ubix/ssp/ad/e/d;->h:I

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    iput-boolean v2, v0, Lcom/ubix/ssp/ad/e/d;->i:Z

    iput-boolean v2, v0, Lcom/ubix/ssp/ad/e/d;->j:Z

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/d;->j:Z

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d$a;->a:Lcom/ubix/ssp/ad/e/d;

    iput-boolean v4, v0, Lcom/ubix/ssp/ad/e/d;->j:Z

    return-void

    :cond_3
    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
