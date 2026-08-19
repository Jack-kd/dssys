.class public Lcom/ubix/ssp/ad/e/a0/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/l$b;,
        Lcom/ubix/ssp/ad/e/a0/l$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/view/WindowManager;

.field private f:Landroid/view/View;

.field private g:Lcom/ubix/ssp/ad/e/a0/l$b;

.field private h:Lcom/ubix/ssp/ad/e/a0/l$a;

.field private i:I

.field j:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->a:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->b:I

    const-string v0, "#A6020202"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->j:Z

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->a:I

    iput p2, p0, Lcom/ubix/ssp/ad/e/a0/l;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->a:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->b:I

    const-string v0, "#A6020202"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->j:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->e:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/a0/l;->a(Landroid/view/View;)V

    iput p2, p0, Lcom/ubix/ssp/ad/e/a0/l;->a:I

    iput p3, p0, Lcom/ubix/ssp/ad/e/a0/l;->b:I

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 1
    const v0, -0x868219

    and-int/2addr p1, v0

    const v0, 0x40000220    # 2.0001297f

    or-int/2addr p1, v0

    return p1
.end method

.method private a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/ubix/ssp/ad/e/a0/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p1, -0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopupWindow:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private a(Landroid/view/View;I)Lcom/ubix/ssp/ad/e/a0/l$b;
    .locals 2

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->i(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance p2, Lcom/ubix/ssp/ad/e/a0/l$b;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/l;->d:Landroid/content/Context;

    invoke-direct {p2, p0, v1}, Lcom/ubix/ssp/ad/e/a0/l$b;-><init>(Lcom/ubix/ssp/ad/e/a0/l;Landroid/content/Context;)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->i:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->e:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->g:Lcom/ubix/ssp/ad/e/a0/l$b;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->f:Landroid/view/View;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->d:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->g:Lcom/ubix/ssp/ad/e/a0/l$b;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/l;->e:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/l;->d:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/l;->e:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0, v0, p1}, Lcom/ubix/ssp/ad/e/a0/l;->a(Landroid/view/View;I)Lcom/ubix/ssp/ad/e/a0/l$b;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->g:Lcom/ubix/ssp/ad/e/a0/l$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 4
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->g:Lcom/ubix/ssp/ad/e/a0/l$b;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/l;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/e/a0/l;->c:Z

    invoke-direct {p0, v0, v2, v1}, Lcom/ubix/ssp/ad/e/a0/l;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->h:Lcom/ubix/ssp/ad/e/a0/l$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/l$a;->a()V

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->d:Landroid/content/Context;

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->e:Landroid/view/WindowManager;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->f:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->d:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/l;->e:Landroid/view/WindowManager;

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->f:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->c:Z

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/l;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p2, :cond_1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/l;->b(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p2, 0x0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/l;->a(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/l;->c:Z

    return v0
.end method
