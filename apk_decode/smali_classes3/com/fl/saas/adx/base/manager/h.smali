.class public final synthetic Lcom/fl/saas/adx/base/manager/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/manager/MixNativeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/manager/MixNativeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/h;->a:Lcom/fl/saas/adx/base/manager/MixNativeManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/h;->a:Lcom/fl/saas/adx/base/manager/MixNativeManager;

    check-cast p1, Lcom/fl/saas/adx/api/mixNative/NativeAd;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/manager/MixNativeManager;->b(Lcom/fl/saas/adx/base/manager/MixNativeManager;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    return-void
.end method
