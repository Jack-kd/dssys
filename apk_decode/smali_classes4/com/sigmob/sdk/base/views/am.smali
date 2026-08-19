.class public Lcom/sigmob/sdk/base/views/am;
.super Lcom/sigmob/sdk/base/views/v;


# instance fields
.field private a:Lcom/sigmob/sdk/base/views/al;

.field private b:Lcom/sigmob/sdk/base/views/f;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/v;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/am;->c:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/am;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/views/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/am;->c:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/am;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/views/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/am;->c:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/am;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/am;->b:Lcom/sigmob/sdk/base/views/f;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/sigmob/sdk/base/views/al;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/am;->a:Lcom/sigmob/sdk/base/views/al;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/am;->a:Lcom/sigmob/sdk/base/views/al;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/am;->c:Z

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/am;->a:Lcom/sigmob/sdk/base/views/al;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/views/am;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/al;->a(F)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/am;->c:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/am;->a:Lcom/sigmob/sdk/base/views/al;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/al;->a(F)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method
