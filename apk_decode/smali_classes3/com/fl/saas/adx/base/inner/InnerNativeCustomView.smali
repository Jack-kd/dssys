.class public interface abstract Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAdView()Landroid/view/View;
.end method

.method public abstract getCATView()Landroid/view/View;
.end method

.method public abstract loadIcon()Lcom/fl/saas/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/B;"
        }
    .end annotation
.end method

.method public abstract setCAT(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
.end method

.method public abstract setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
.end method

.method public abstract setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
.end method
