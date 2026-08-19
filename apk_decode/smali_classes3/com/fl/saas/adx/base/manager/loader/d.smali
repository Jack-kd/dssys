.class public final synthetic Lcom/fl/saas/adx/base/manager/loader/d;
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
    check-cast p1, Lcom/fl/saas/j;

    invoke-static {p1}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->a(Lcom/fl/saas/j;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
