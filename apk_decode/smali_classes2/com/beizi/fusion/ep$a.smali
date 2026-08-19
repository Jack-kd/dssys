.class Lcom/beizi/fusion/ep$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/ep;->f()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/ep;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/ep;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/ep$a;->a:Lcom/beizi/fusion/ep;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/ep$a;->a:Lcom/beizi/fusion/ep;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/beizi/fusion/ep;->a(Lcom/beizi/fusion/ep;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/beizi/fusion/ep$a;->a:Lcom/beizi/fusion/ep;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/beizi/fusion/yk;->c()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/beizi/fusion/ep$a;->a:Lcom/beizi/fusion/ep;

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/beizi/fusion/ep;->a(Lcom/beizi/fusion/ep;Z)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/beizi/fusion/ep$a;->a:Lcom/beizi/fusion/ep;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/beizi/fusion/ep;->b(Lcom/beizi/fusion/ep;)V

    .line 30
    .line 31
    .line 32
    return v0

    .line 33
    :cond_0
    return p2
.end method
