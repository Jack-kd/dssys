.class public interface abstract Lcom/meishu/sdk/core/ad/paster/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/IAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/loader/IAdLoadListener<",
        "Lcom/meishu/sdk/core/ad/paster/PasterAd;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onVideoComplete()V
.end method

.method public abstract onVideoError()V
.end method

.method public abstract onVideoLoaded()V
.end method
