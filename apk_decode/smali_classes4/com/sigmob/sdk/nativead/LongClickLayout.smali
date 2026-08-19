.class public Lcom/sigmob/sdk/nativead/LongClickLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/LongClickLayout;->b:Z

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/LongClickLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sigmob/sdk/nativead/LongClickLayout;->b:Z

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/LongClickLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sigmob/sdk/nativead/LongClickLayout;->b:Z

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/LongClickLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/LongClickLayout;->b:Z

    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 3
    new-instance p1, Lcom/sigmob/sdk/nativead/A;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/nativead/A;-><init>(Lcom/sigmob/sdk/nativead/LongClickLayout;)V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/LongClickLayout;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/LongClickLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/LongClickLayout;->a()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/LongClickLayout;->b:Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/LongClickLayout;->a:Ljava/lang/Runnable;

    const/16 v1, 0x7d0

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/LongClickLayout;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/LongClickLayout;->b:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
