.class Lcom/sigmob/sdk/videoplayer/f$c;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/videoplayer/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Lcom/sigmob/sdk/videoplayer/f$b;

.field final synthetic b:Lcom/sigmob/sdk/videoplayer/f;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoplayer/f;Lcom/sigmob/sdk/videoplayer/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/f$c;->b:Lcom/sigmob/sdk/videoplayer/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/videoplayer/f$c;->a:Lcom/sigmob/sdk/videoplayer/f$b;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f$c;->a:Lcom/sigmob/sdk/videoplayer/f$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f$c;->b:Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/videoplayer/f$c;->a:Lcom/sigmob/sdk/videoplayer/f$b;

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/videoplayer/f$b;->onVolumeChanged(I)V

    :cond_0
    return-void
.end method
