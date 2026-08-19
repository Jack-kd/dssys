.class Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/widget/S2SVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeHandler"
.end annotation


# instance fields
.field private final mVideoViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/fl/saas/adx/base/widget/S2SVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;->mVideoViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$SafeHandler;->mVideoViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/widget/S2SVideoView;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$000(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2af8

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$100(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/j;->a()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$300(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)V

    return-void

    :cond_3
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    return-void
.end method
