.class public final synthetic Lcom/fl/saas/adx/base/inner/banner/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/b1;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$1;

.field public final synthetic b:Lcom/fl/saas/adx/api/mixNative/NativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$1;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/c;->a:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$1;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/c;->b:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/c;->a:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$1;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/c;->b:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$1;->a(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$1;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
