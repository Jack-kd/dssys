.class public abstract Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder$Builder;
.super Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/base/Build;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder<",
        "TT;>;",
        "Lcom/fl/saas/adx/base/base/Build<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 1

    invoke-super {p0}, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    move-result-object v0

    return-object v0
.end method
