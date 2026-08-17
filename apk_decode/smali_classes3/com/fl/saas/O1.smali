.class public final synthetic Lcom/fl/saas/O1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    invoke-interface {p1}, Lcom/fl/saas/adx/base/base/listener/InnerBannerListener;->onClosed()V

    return-void
.end method
