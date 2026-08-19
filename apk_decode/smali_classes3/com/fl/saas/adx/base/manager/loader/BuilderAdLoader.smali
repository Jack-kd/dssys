.class public Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;
.super Lcom/fl/saas/adx/base/manager/loader/BaseLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/fl/saas/adx/base/base/AdapterAPI;",
        ">",
        "Lcom/fl/saas/adx/base/manager/loader/BaseLoader<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/bean/AdType;Lcom/fl/saas/adx/base/manager/api/ManagerLoader;)V
    .locals 0
    .param p1    # Lcom/fl/saas/adx/base/bean/AdType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fl/saas/adx/base/manager/api/ManagerLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/bean/AdType;",
            "Lcom/fl/saas/adx/base/manager/api/ManagerLoader<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/bean/AdType;->getPos()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;-><init>(Lcom/fl/saas/adx/base/manager/api/ManagerLoader;I)V

    return-void
.end method
