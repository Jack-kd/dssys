.class public Lcom/meishu/sdk/core/ad/paster/d;
.super Lcom/meishu/sdk/core/loader/b;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/paster/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/core/loader/b<",
        "Lcom/meishu/sdk/core/ad/paster/PasterAd;",
        "Lcom/meishu/sdk/core/ad/paster/b;",
        ">;",
        "Lcom/meishu/sdk/core/ad/paster/b;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/paster/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/loader/b;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/paster/b;->onVideoComplete()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onVideoError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/paster/b;->onVideoError()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onVideoLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/paster/b;->onVideoLoaded()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
