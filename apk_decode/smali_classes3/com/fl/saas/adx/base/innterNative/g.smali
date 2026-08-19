.class public final synthetic Lcom/fl/saas/adx/base/innterNative/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;

.field public final synthetic b:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/g;->a:Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;

    iput-object p2, p0, Lcom/fl/saas/adx/base/innterNative/g;->b:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    iput-object p3, p0, Lcom/fl/saas/adx/base/innterNative/g;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onIncline(III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/g;->a:Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/g;->b:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    iget-object v2, p0, Lcom/fl/saas/adx/base/innterNative/g;->c:Landroid/view/View;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->h(Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;III)V

    return-void
.end method
