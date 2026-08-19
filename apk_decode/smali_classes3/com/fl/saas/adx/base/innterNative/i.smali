.class public final synthetic Lcom/fl/saas/adx/base/innterNative/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/i;->a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/i;->a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->createNativeMaterial(Ljava/lang/Object;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object p1

    return-object p1
.end method
