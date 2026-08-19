.class public interface abstract Lcom/fl/saas/adx/base/manager/api/ManagerLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/manager/api/FailedLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/fl/saas/adx/base/base/AdapterAPI;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fl/saas/adx/base/manager/api/FailedLoader;"
    }
.end annotation


# virtual methods
.method public abstract bindAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)Lcom/fl/saas/adx/base/base/AdapterAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getContextOpt()Lcom/fl/saas/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation
.end method

.method public abstract getLinkId()Ljava/lang/String;
.end method
