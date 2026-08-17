.class public final synthetic Lcom/fl/saas/adx/base/manager/loader/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/manager/loader/BaseLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/manager/loader/BaseLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/loader/f;->a:Lcom/fl/saas/adx/base/manager/loader/BaseLoader;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/f;->a:Lcom/fl/saas/adx/base/manager/loader/BaseLoader;

    check-cast p1, Lcom/fl/saas/adx/base/base/AdapterAPI;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->c(Lcom/fl/saas/adx/base/manager/loader/BaseLoader;Lcom/fl/saas/adx/base/base/AdapterAPI;)Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object p1

    return-object p1
.end method
