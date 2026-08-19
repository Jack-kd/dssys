.class public Lcom/meishu/sdk/platform/ms/recycler/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/e;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/e;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/e;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdExposure()V
    .locals 0

    return-void
.end method

.method public onAdRenderFailed()V
    .locals 0

    return-void
.end method
