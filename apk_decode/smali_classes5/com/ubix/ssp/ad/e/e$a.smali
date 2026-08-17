.class Lcom/ubix/ssp/ad/e/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/e;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/e;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/e$a;->a:Lcom/ubix/ssp/ad/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e$a;->a:Lcom/ubix/ssp/ad/e/e;

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/e;->p:Z

    const-wide/16 v2, 0x10

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/e;->a(Lcom/ubix/ssp/ad/e/e;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e$a;->a:Lcom/ubix/ssp/ad/e/e;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e$a;->a:Lcom/ubix/ssp/ad/e/e;

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/e;->i:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e$a;->a:Lcom/ubix/ssp/ad/e/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ubix/ssp/ad/e/e;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
