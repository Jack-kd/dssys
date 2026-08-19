.class public interface abstract Lcom/meishu/sdk/core/ad/IAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/s2s/ISBidding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/meishu/sdk/core/loader/InteractionListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/s2s/ISBidding;"
    }
.end annotation


# virtual methods
.method public abstract getAdView()Landroid/view/View;
.end method

.method public abstract getData()Lcom/meishu/sdk/core/utils/ResultBean;
.end method

.method public abstract getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getTouchData()Lcom/meishu/sdk/core/ad/TouchData;
.end method

.method public abstract isAdValid()Z
.end method

.method public abstract setAdView(Landroid/view/View;)V
.end method

.method public abstract setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
