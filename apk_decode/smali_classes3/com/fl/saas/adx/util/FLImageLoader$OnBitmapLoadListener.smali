.class public interface abstract Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/util/FLImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBitmapLoadListener"
.end annotation


# virtual methods
.method public abstract onBitmapLoadFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onBitmapLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
.end method
