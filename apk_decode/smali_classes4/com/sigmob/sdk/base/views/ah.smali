.class public Lcom/sigmob/sdk/base/views/ah;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:I

.field b:Z

.field private final c:Lcom/sigmob/sdk/base/views/w;

.field private final d:Lcom/sigmob/sdk/base/views/w;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ah;->a:I

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/ah;->b:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/sigmob/sdk/base/views/w;

    invoke-direct {v1, p1}, Lcom/sigmob/sdk/base/views/w;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/ah;->c:Lcom/sigmob/sdk/base/views/w;

    new-instance v1, Lcom/sigmob/sdk/base/views/w;

    invoke-direct {v1, p1}, Lcom/sigmob/sdk/base/views/w;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/ah;->d:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/sigmob/sdk/base/views/ah;->a:I

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/base/views/ah;->e:I

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/ah;->b:Z

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ah;->c:Lcom/sigmob/sdk/base/views/w;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/k;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/ah;->c:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/ah;->c:Lcom/sigmob/sdk/base/views/w;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ah;->d:Lcom/sigmob/sdk/base/views/w;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/ah;->b:Z

    return v0
.end method

.method public b()V
    .locals 6

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/ah;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/ah;->b:Z

    const-string v0, "show skip widget"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/sigmob/sdk/base/views/ah;->a:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ah;->c:Lcom/sigmob/sdk/base/views/w;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ah;->d:Lcom/sigmob/sdk/base/views/w;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ah;->c:Lcom/sigmob/sdk/base/views/w;

    iget v3, p0, Lcom/sigmob/sdk/base/views/ah;->a:I

    int-to-float v4, v3

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v4, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    iget v1, p0, Lcom/sigmob/sdk/base/views/ah;->e:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/ah;->c:Lcom/sigmob/sdk/base/views/w;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/k;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ah;->c:Lcom/sigmob/sdk/base/views/w;

    invoke-static {}, Lcom/sigmob/sdk/base/k;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ah;->c:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/views/ah;->e:I

    return v0
.end method
