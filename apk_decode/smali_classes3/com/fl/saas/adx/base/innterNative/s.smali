.class public final synthetic Lcom/fl/saas/adx/base/innterNative/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/s;->a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;

    iput-wide p2, p0, Lcom/fl/saas/adx/base/innterNative/s;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/s;->a:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;

    iget-wide v1, p0, Lcom/fl/saas/adx/base/innterNative/s;->b:J

    check-cast p1, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;

    invoke-static {v0, v1, v2, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;->e(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;JLcom/fl/saas/adx/api/mixNative/NativeEventListener;)V

    return-void
.end method
