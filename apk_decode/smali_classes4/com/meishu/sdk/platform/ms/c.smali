.class public interface abstract Lcom/meishu/sdk/platform/ms/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/IAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/meishu/sdk/core/loader/InteractionListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/ad/IAd<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/meishu/sdk/core/ad/AdSlot;
.end method

.method public abstract b()Lcom/meishu/sdk/core/ad/AdType;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getInteractionType()I
.end method
