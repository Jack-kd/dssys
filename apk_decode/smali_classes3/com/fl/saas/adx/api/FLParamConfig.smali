.class public Lcom/fl/saas/adx/api/FLParamConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/api/FLParamConfig$Builder;
    }
.end annotation


# instance fields
.field private final mBuilder:Lcom/fl/saas/adx/base/base/builder/InnerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/adx/base/base/builder/InnerBuilder<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/base/builder/InnerBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerBuilder<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/api/FLParamConfig;->mBuilder:Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    return-void
.end method


# virtual methods
.method public getBuilder()Lcom/fl/saas/adx/base/base/builder/InnerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/adx/base/base/builder/InnerBuilder<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/api/FLParamConfig;->mBuilder:Lcom/fl/saas/adx/base/base/builder/InnerBuilder;

    return-object v0
.end method
