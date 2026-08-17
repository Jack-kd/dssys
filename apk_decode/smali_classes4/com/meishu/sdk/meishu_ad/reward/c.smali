.class public Lcom/meishu/sdk/meishu_ad/reward/c;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/c;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/c;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/c;->a:Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->c()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->d()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->g:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoPause()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
