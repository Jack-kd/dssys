.class public Lcom/fl/saas/adx/api/FLVideo$Builder;
.super Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/api/FLVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder$Builder<",
        "Lcom/fl/saas/adx/api/FLVideo$Builder;",
        "Lcom/fl/saas/adx/api/FLVideo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder$Builder;-><init>(Landroid/content/Context;)V

    iput-object p0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/fl/saas/adx/api/FLVideo;
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/adx/api/FLVideo;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/api/FLVideo;-><init>(Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fl/saas/adx/api/FLVideo$Builder;->build()Lcom/fl/saas/adx/api/FLVideo;

    move-result-object v0

    return-object v0
.end method

.method public setAdViewVideoCheckListener(Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;)Lcom/fl/saas/adx/api/FLVideo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->checkListener:Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;

    return-object p0
.end method

.method public setVideoListener(Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;)Lcom/fl/saas/adx/api/FLVideo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    return-object p0
.end method
