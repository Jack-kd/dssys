.class Lcom/ubix/ssp/ad/e/v/g/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/v/g/b;->a(Ljava/lang/String;ILcom/ubix/ssp/ad/e/v/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ubix/ssp/ad/e/v/e$b;

.field final synthetic c:Lcom/ubix/ssp/ad/e/v/g/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/v/g/b;Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$b;->c:Lcom/ubix/ssp/ad/e/v/g/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/v/g/b$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/v/g/b$b;->b:Lcom/ubix/ssp/ad/e/v/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/b$b;->c:Lcom/ubix/ssp/ad/e/v/g/b;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/v/g/b;->a(Lcom/ubix/ssp/ad/e/v/g/b;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/b$b;->c:Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/b;->c(Lcom/ubix/ssp/ad/e/v/g/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    sget-object v1, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/b$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/b0/h/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/b$b;->c:Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/b;->c(Lcom/ubix/ssp/ad/e/v/g/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/b$b;->b:Lcom/ubix/ssp/ad/e/v/e$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    const-string v2, "\u8d44\u6e90\u4e0b\u8f7d\u9519\u8bef"

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/v/e$b;->a(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method
