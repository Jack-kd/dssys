.class public final synthetic Lcom/fl/saas/adx/base/innterNative/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;

    invoke-interface {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;->getECPM()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
