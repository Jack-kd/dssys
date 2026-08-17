.class public Lcom/meishu/sdk/meishu_ad/reward/h;
.super Lcom/meishu/sdk/core/safe/e;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/h;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/h;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->p:Z

    .line 5
    .line 6
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->c:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->d()V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->f:J

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-gtz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->e:Lcom/meishu/sdk/meishu_ad/n0$b;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0$b;->onKeepTimeFinished()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->q:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/meishu/sdk/meishu_ad/n0$a;

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/n0$a;->onCompleted()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->g:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoComplete()V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method
