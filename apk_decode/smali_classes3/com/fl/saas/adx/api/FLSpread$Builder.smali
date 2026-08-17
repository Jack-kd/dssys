.class public Lcom/fl/saas/adx/api/FLSpread$Builder;
.super Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/api/FLSpread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder$Builder<",
        "Lcom/fl/saas/adx/api/FLSpread$Builder;",
        "Lcom/fl/saas/adx/api/FLSpread;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder$Builder;-><init>(Landroid/content/Context;)V

    iput-object p0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/fl/saas/adx/api/FLSpread;
    .locals 2

    .line 1
    new-instance v0, Lcom/fl/saas/adx/api/FLSpread;

    iget-object v1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    check-cast v1, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/api/FLSpread;-><init>(Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fl/saas/adx/api/FLSpread$Builder;->build()Lcom/fl/saas/adx/api/FLSpread;

    move-result-object v0

    return-object v0
.end method

.method public setSpreadListener(Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;)Lcom/fl/saas/adx/api/FLSpread$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    return-object p0
.end method

.method public setSpreadLoadListener(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;)Lcom/fl/saas/adx/api/FLSpread$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->spreadLoadListener:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;

    return-object p0
.end method
