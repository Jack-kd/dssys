.class public abstract Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;
.super Lcom/fl/saas/adx/base/base/BaseBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/base/builder/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder$Builder;,
        Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fl/saas/adx/base/base/BaseBuilder<",
        "TT;>;",
        "Lcom/fl/saas/adx/base/base/builder/AdEventListener<",
        "Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;",
        ">;"
    }
.end annotation


# instance fields
.field protected checkListener:Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;

.field private customData:Ljava/lang/String;

.field private isExpress:Z

.field protected listener:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/BaseBuilder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->isExpress:Z

    return-void
.end method


# virtual methods
.method public getCheckListener()Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->checkListener:Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;

    return-object v0
.end method

.method public getCustomData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->customData:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    move-result-object v0

    return-object v0
.end method

.method public getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isExpress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->isExpress:Z

    return v0
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_0
    return-void
.end method

.method public setCustomData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->customData:Ljava/lang/String;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setIsExpress(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->isExpress:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->userId:Ljava/lang/String;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method
