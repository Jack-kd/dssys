.class public final synthetic Lcom/fl/saas/t2;
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
    check-cast p1, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->getContainer()Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method
