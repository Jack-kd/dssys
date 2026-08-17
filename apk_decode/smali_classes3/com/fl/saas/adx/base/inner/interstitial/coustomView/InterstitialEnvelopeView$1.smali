.class Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->setSpeed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$002(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;Z)Z

    const-string v0, "ACTION_DOWN"

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/fl/saas/j;->E1:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Lcom/fl/saas/j;->F1:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v2

    iget v2, v2, Lcom/fl/saas/j;->E1:I

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/fl/saas/j;->I1:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v2

    iget v2, v2, Lcom/fl/saas/j;->F1:I

    aget p1, p1, v1

    add-int/2addr v2, p1

    iput v2, v0, Lcom/fl/saas/j;->J1:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/fl/saas/j;->R1:J

    :cond_0
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p4, 0x42480000    # 50.0f

    cmpl-float p3, p3, p4

    const/4 v0, 0x1

    if-gtz p3, :cond_0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$000(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$002(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;Z)Z

    const-string p1, "ACTION_UP"

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p1

    sget-object p4, Lcom/fl/saas/j$b;->c:Lcom/fl/saas/j$b;

    iput-object p4, p1, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    float-to-int p4, p4

    iput p4, p1, Lcom/fl/saas/j;->G1:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Lcom/fl/saas/j;->H1:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p2

    iget-object p4, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p4}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p4

    iget p4, p4, Lcom/fl/saas/j;->G1:I

    aget p3, p1, p3

    add-int/2addr p4, p3

    iput p4, p2, Lcom/fl/saas/j;->K1:I

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p2

    iget-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p3}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p3

    iget p3, p3, Lcom/fl/saas/j;->H1:I

    aget p1, p1, v0

    add-int/2addr p3, p1

    iput p3, p2, Lcom/fl/saas/j;->L1:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/fl/saas/j;->S1:J

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$400(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ACTION_UP1"

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    sget-object v2, Lcom/fl/saas/j$b;->a:Lcom/fl/saas/j$b;

    iput-object v2, v0, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/fl/saas/j;->G1:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Lcom/fl/saas/j;->H1:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v2

    iget v2, v2, Lcom/fl/saas/j;->G1:I

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/fl/saas/j;->K1:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object v2

    iget v2, v2, Lcom/fl/saas/j;->H1:I

    aget p1, p1, v1

    add-int/2addr v2, p1

    iput v2, v0, Lcom/fl/saas/j;->L1:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/fl/saas/j;->S1:J

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    return v1
.end method
