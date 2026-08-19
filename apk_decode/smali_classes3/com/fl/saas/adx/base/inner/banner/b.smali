.class public final synthetic Lcom/fl/saas/adx/base/inner/banner/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/b;->a:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    return-void
.end method


# virtual methods
.method public final getECPM()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/b;->a:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->h(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)I

    move-result v0

    return v0
.end method
