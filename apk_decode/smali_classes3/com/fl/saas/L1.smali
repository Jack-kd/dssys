.class public final synthetic Lcom/fl/saas/L1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/d;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/L1;->a:Lcom/fl/saas/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/L1;->a:Lcom/fl/saas/d;

    check-cast p1, Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    invoke-static {v0, p1}, Lcom/fl/saas/d;->g(Lcom/fl/saas/d;Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;)V

    return-void
.end method
