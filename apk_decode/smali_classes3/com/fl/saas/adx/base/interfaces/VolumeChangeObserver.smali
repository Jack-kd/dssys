.class public Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$VolumeChangeListener;
    }
.end annotation


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field private isRegistered:Z

.field private lastVolume:I

.field private listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$VolumeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$1;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$1;-><init>(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->volumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->lastVolume:I

    return p0
.end method

.method public static synthetic access$102(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;I)I
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->lastVolume:I

    return p1
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->listenerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public start(Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$VolumeChangeListener;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->listenerRef:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->lastVolume:I

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->isRegistered:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->volumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->isRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->listenerRef:Ljava/lang/ref/WeakReference;

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->isRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->volumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver;->isRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
