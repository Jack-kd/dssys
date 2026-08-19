.class public final synthetic Lcom/fl/saas/adx/base/manager/loader/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/fl/saas/adx/base/base/AdapterAPI;

    invoke-interface {p1}, Lcom/fl/saas/adx/base/base/AdapterAPI;->getAdSource()Lcom/fl/saas/j;

    move-result-object p1

    return-object p1
.end method
