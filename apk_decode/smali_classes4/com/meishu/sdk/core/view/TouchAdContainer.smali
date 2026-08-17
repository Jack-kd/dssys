.class public Lcom/meishu/sdk/core/view/TouchAdContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchAdContainer"


# instance fields
.field private interceptDownEvent:Z

.field private touchPositionListener:Lcom/meishu/sdk/core/view/TouchPositionListener;

.field private windownEventListener:Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->interceptDownEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->interceptDownEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->interceptDownEvent:Z

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->windownEventListener:Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;->onAttachedToWindow()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->windownEventListener:Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;->onDetachedFromWindow()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->touchPositionListener:Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/meishu/sdk/core/view/TouchPositionListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->interceptDownEvent:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "TouchAdContainer"

    .line 18
    .line 19
    const-string v0, "ide"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->windownEventListener:Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;->onWindowFocusChanged(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setInterceptDownEvent()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->interceptDownEvent:Z

    .line 3
    .line 4
    return-void
.end method

.method public setOnWindownEventListener(Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->windownEventListener:Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/TouchAdContainer;->touchPositionListener:Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 2
    .line 3
    return-void
.end method
