.class Lcom/ubix/ssp/ad/e/b0/c$l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/b0/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/b0/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/c$l;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$l;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$l;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$l;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$l;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
