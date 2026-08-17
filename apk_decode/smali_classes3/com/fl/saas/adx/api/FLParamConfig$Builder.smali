.class public final Lcom/fl/saas/adx/api/FLParamConfig$Builder;
.super Lcom/fl/saas/adx/base/base/builder/InnerBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/api/FLParamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/base/builder/InnerBuilder<",
        "Lcom/fl/saas/adx/api/FLParamConfig$Builder;",
        "Lcom/fl/saas/adx/api/FLParamConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;-><init>()V

    iput-object p0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/fl/saas/adx/api/FLParamConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/adx/api/FLParamConfig;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/api/FLParamConfig;-><init>(Lcom/fl/saas/adx/base/base/builder/InnerBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fl/saas/adx/api/FLParamConfig$Builder;->build()Lcom/fl/saas/adx/api/FLParamConfig;

    move-result-object v0

    return-object v0
.end method
