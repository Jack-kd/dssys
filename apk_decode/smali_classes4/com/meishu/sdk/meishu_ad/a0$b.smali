.class public Lcom/meishu/sdk/meishu_ad/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/a0;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/a0;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/a0;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/a0$b;->b:Lcom/meishu/sdk/meishu_ad/a0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/a0$b;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onVideoCompleted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$b;->b:Lcom/meishu/sdk/meishu_ad/a0;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lcom/meishu/sdk/meishu_ad/splash/c;->g:Z

    .line 7
    .line 8
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 9
    .line 10
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/splash/d;->H:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget-boolean v0, v1, Lcom/meishu/sdk/meishu_ad/splash/c;->h:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/meishu/sdk/meishu_ad/a0$b$a;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/meishu/sdk/meishu_ad/a0$b$a;-><init>(Lcom/meishu/sdk/meishu_ad/a0$b;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v2, 0xfa0

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 0

    return-void
.end method

.method public onVideoLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$b;->b:Lcom/meishu/sdk/meishu_ad/a0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/a0;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
