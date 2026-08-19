.class public interface abstract Lcom/smartdigimkt/sdk/api/IExHandlerBaseAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartdigimkt/sdk/api/IExHandlerBaseAd$DataFetchListener;
    }
.end annotation


# virtual methods
.method public abstract addDataFetchListener(Lcom/smartdigimkt/sdk/api/IExHandlerBaseAd$DataFetchListener;)V
.end method

.method public abstract addDataFetchListenerV2(Lcom/smartdigimkt/sdk/api/IExHandlerBaseAd$DataFetchListener;)V
.end method

.method public abstract onAdxAdDestroy(Landroid/content/Context;)V
.end method

.method public abstract pause(Lcom/smartdigimkt/m3/c;)V
.end method

.method public abstract removeDataFetchListener(Lcom/smartdigimkt/sdk/api/IExHandlerBaseAd$DataFetchListener;)V
.end method

.method public abstract removeDataFetchListenerV2(Lcom/smartdigimkt/sdk/api/IExHandlerBaseAd$DataFetchListener;)V
.end method

.method public abstract updateOfferInfoWithDataInfo(Lcom/smartdigimkt/m3/c;)V
.end method
