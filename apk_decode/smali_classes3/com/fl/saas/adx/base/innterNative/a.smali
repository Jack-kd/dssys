.class public final synthetic Lcom/fl/saas/adx/base/innterNative/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/a;->a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/a;->a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    check-cast p1, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->g(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V

    return-void
.end method
