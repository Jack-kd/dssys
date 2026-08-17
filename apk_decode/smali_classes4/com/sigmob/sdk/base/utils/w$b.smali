.class public Lcom/sigmob/sdk/base/utils/w$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/utils/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/utils/w;

.field private final b:Lcom/sigmob/sdk/base/utils/w$a;

.field private c:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/utils/w;Lcom/sigmob/sdk/base/utils/w$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/utils/w$b;->a:Lcom/sigmob/sdk/base/utils/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/base/utils/w$b;->b:Lcom/sigmob/sdk/base/utils/w$a;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/sigmob/sdk/base/utils/w$b;->c:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/w$b;->b:Lcom/sigmob/sdk/base/utils/w$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/base/utils/w$b;->c:Landroid/view/MotionEvent;

    invoke-interface {v0, p1, v1, p2}, Lcom/sigmob/sdk/base/utils/w$a;->a(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
