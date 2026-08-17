.class public interface abstract Lcom/fl/saas/adx/base/base/AdapterAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearCache()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getAdSource()Lcom/fl/saas/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isCache()Z
.end method

.method public abstract load()V
.end method

.method public abstract reportRequestShow()V
.end method

.method public abstract setAdSource(Lcom/fl/saas/j;)Lcom/fl/saas/adx/base/base/AdapterAPI;
    .param p1    # Lcom/fl/saas/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setCache()V
.end method

.method public abstract setContext(Landroid/content/Context;)Lcom/fl/saas/adx/base/base/AdapterAPI;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setHot(Z)V
.end method

.method public abstract setLinkId(Ljava/lang/String;)V
.end method

.method public abstract setMaterial(Lcom/fl/saas/adx/base/bean/MaterialBean;)V
.end method

.method public abstract setPlaceId(Ljava/lang/String;)Lcom/fl/saas/adx/base/base/AdapterAPI;
.end method

.method public abstract showAd()V
.end method
