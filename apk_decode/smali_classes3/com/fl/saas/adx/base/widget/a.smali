.class public final synthetic Lcom/fl/saas/adx/base/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/a;->a:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    return-void
.end method


# virtual methods
.method public final onShake(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/a;->a:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {v0, p1, p2, p3}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->a(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;III)V

    return-void
.end method
