.class public final synthetic Lcom/fl/saas/adx/base/innterNative/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/m;->b:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/m;->b:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->k(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    return-void
.end method
