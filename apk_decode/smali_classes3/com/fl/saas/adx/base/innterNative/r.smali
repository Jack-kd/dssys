.class public final synthetic Lcom/fl/saas/adx/base/innterNative/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/b1;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/r;->a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/r;->a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->i(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v0

    return-object v0
.end method
