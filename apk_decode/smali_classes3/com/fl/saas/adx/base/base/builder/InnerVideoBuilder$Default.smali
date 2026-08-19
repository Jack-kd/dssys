.class public Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder$Default;
.super Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fl/saas/adx/base/annotation/API;
    value = .enum Lcom/fl/saas/adx/base/bean/AdType;->RewardVideo:Lcom/fl/saas/adx/base/bean/AdType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder<",
        "Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder$Default;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;-><init>(Landroid/content/Context;)V

    iput-object p0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 1

    invoke-super {p0}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    move-result-object v0

    return-object v0
.end method
