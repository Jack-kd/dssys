.class public final synthetic Lcom/fl/saas/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/K0;

.field public final synthetic b:Lcom/fl/saas/j;

.field public final synthetic c:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/t1;->a:Lcom/fl/saas/K0;

    iput-object p2, p0, Lcom/fl/saas/t1;->b:Lcom/fl/saas/j;

    iput-object p3, p0, Lcom/fl/saas/t1;->c:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    iput-object p4, p0, Lcom/fl/saas/t1;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onShake(III)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fl/saas/t1;->a:Lcom/fl/saas/K0;

    iget-object v1, p0, Lcom/fl/saas/t1;->b:Lcom/fl/saas/j;

    iget-object v2, p0, Lcom/fl/saas/t1;->c:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    iget-object v3, p0, Lcom/fl/saas/t1;->d:Landroid/view/View;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/fl/saas/K0;->x(Lcom/fl/saas/K0;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;III)V

    return-void
.end method
