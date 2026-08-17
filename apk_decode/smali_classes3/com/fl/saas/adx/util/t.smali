.class public final synthetic Lcom/fl/saas/adx/util/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/util/t;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/util/t;->a:Ljava/lang/Class;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->b(Ljava/lang/Class;Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
