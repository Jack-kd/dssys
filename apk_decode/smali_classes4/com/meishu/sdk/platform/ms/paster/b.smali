.class public Lcom/meishu/sdk/platform/ms/paster/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/paster/d$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/paster/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/b;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

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
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/b;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p1, Lcom/meishu/sdk/platform/ms/paster/d;->k:J

    .line 16
    .line 17
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/b;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    float-to-int v0, v0

    .line 26
    iput v0, p1, Lcom/meishu/sdk/platform/ms/paster/d;->g:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/b;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    float-to-int p2, p2

    .line 37
    iput p2, p1, Lcom/meishu/sdk/platform/ms/paster/d;->h:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v0, 0x1

    .line 45
    if-ne p1, v0, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/b;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/b;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    float-to-int v0, v0

    .line 66
    iput v0, p1, Lcom/meishu/sdk/platform/ms/paster/d;->i:I

    .line 67
    .line 68
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/b;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    float-to-int p2, p2

    .line 77
    iput p2, p1, Lcom/meishu/sdk/platform/ms/paster/d;->j:I

    .line 78
    .line 79
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 80
    return p1
.end method
