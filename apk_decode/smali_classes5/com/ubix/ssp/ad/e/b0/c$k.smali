.class Lcom/ubix/ssp/ad/e/b0/c$k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/b0/c;->g()V
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

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/a;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->c(Lcom/ubix/ssp/ad/e/b0/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$k;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v1

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/b0/e;->h:Lcom/ubix/ssp/ad/e/b0/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
