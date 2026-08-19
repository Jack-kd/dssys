.class final Lcom/kwad/components/core/innerEc/live/b/c/h$6;
.super Lcom/kwad/components/core/innerEc/live/widget/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/h;->st()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic WV:Lcom/kwad/components/core/innerEc/live/b/c/h;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/h;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$6;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/kwad/components/core/innerEc/live/widget/d;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$6;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/h;->g(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/d;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method
