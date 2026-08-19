.class public abstract Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder$Builder;
.super Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/base/Build;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;
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
        "Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder<",
        "TT;>;",
        "Lcom/fl/saas/adx/base/base/Build<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 1

    invoke-super {p0}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    move-result-object v0

    return-object v0
.end method
