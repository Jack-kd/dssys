.class Lcom/ubix/ssp/ad/e/a0/c$g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/a0/c$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/c$h;

.field final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/c$h;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c$g;->b:Lcom/ubix/ssp/ad/e/a0/c$h;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/c$g;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/c$g;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/t;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/t;-><init>()V

    sget-object v1, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/t;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/c$g;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/ubix/ssp/ad/e/a0/c$g;->a:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/c$g;->b:Lcom/ubix/ssp/ad/e/a0/c$h;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/ubix/ssp/ad/e/a0/c$g;->a:I

    invoke-interface {v2, v0, v3}, Lcom/ubix/ssp/ad/e/a0/c$h;->a(II)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c$g;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c$g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
