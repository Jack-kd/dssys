.class public final synthetic Lcom/fl/saas/adx/base/innterNative/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

.field public final synthetic b:Lcom/fl/saas/adx/base/exception/FLError;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/l;->a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    iput-object p2, p0, Lcom/fl/saas/adx/base/innterNative/l;->b:Lcom/fl/saas/adx/base/exception/FLError;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/l;->a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/l;->b:Lcom/fl/saas/adx/base/exception/FLError;

    check-cast p1, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;

    invoke-static {v0, v1, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->b(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/base/exception/FLError;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V

    return-void
.end method
