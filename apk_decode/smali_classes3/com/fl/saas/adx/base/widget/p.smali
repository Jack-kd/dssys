.class public final synthetic Lcom/fl/saas/adx/base/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/widget/SkipView;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/widget/SkipView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/p;->b:Lcom/fl/saas/adx/base/widget/SkipView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/p;->b:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/widget/SkipView;->a(Lcom/fl/saas/adx/base/widget/SkipView;Landroid/view/View;)V

    return-void
.end method
