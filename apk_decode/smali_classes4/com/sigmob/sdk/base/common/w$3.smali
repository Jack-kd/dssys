.class Lcom/sigmob/sdk/base/common/w$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/w;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/sigmob/sdk/base/common/w;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/w;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/w$3;->b:Lcom/sigmob/sdk/base/common/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/w$3;->a:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/w$3;->a:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$3;->a:Landroid/view/MotionEvent;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$3;->b:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p2, p2, v0}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getCoordinate(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/w$3;->b:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p1, p2, v0}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getCoordinate(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
