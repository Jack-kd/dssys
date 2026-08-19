.class Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$1;->this$0:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$1;->this$0:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    invoke-static {p1}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->access$000(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iget-object p2, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$1;->this$0:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    invoke-static {p2}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->access$100(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;)I

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$1;->this$0:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    invoke-static {p2, p1}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->access$102(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;I)I

    if-nez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$1;->this$0:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    invoke-static {v0}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->access$200(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$1;->this$0:Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;

    invoke-static {v0}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->access$200(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$VolumeChangeListener;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$VolumeChangeListener;->onVolumeChanged(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_2
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
