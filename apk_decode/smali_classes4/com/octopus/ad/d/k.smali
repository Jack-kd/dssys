.class public Lcom/octopus/ad/d/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/d/k$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Lcom/octopus/ad/d/k$a;

.field private g:Z

.field private h:I

.field private i:Lcom/octopus/ad/e/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/octopus/ad/d/k;->f:Lcom/octopus/ad/d/k$a;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/octopus/ad/d/k;->g:Z

    .line 9
    .line 10
    const/16 v0, 0xc8

    .line 11
    .line 12
    iput v0, p0, Lcom/octopus/ad/d/k;->h:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/octopus/ad/d/k;->c:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/d/k;)Lcom/octopus/ad/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/octopus/ad/d/k;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/d/k;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(IILjava/lang/String;)Landroid/view/View;
    .locals 8

    .line 6
    const-string v0, "%"

    const-string v1, "50%"

    const-string v2, "enter getScrollClick"

    const-string v3, "ScrollClickUtil"

    invoke-static {v3, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/octopus/ad/d/k;->c:Landroid/content/Context;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return-object v4

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    const-string p3, "\u5411\u4e0a\u6ed1\u52a8\u8df3\u8f6c\u81f3\n\u7b2c\u4e09\u65b9\u5e94\u7528\u6216\u8be6\u60c5\u9875"

    .line 10
    :cond_1
    new-instance v2, Lcom/octopus/ad/e/a;

    iget-object v5, p0, Lcom/octopus/ad/d/k;->c:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/octopus/ad/e/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    .line 11
    const-string v5, "up"

    invoke-virtual {v2, v5}, Lcom/octopus/ad/e/a;->setScrollDirection(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    invoke-virtual {v2, p3}, Lcom/octopus/ad/e/a;->setTitleText(Ljava/lang/String;)V

    .line 13
    const-string p3, "35"

    .line 14
    const-string v2, "56"

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v5, p1

    const/high16 v6, 0x43b40000    # 360.0f

    div-float/2addr v5, v6

    .line 17
    iget-object v6, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/e/a;->setTitleFont(I)V

    .line 18
    iget-object v6, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    int-to-float p3, p3

    mul-float/2addr p3, v5

    float-to-int p3, p3

    invoke-virtual {v6, p3}, Lcom/octopus/ad/e/a;->setHandWidth(I)V

    .line 19
    iget-object p3, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {p3, v2}, Lcom/octopus/ad/e/a;->setScrollbarHeight(I)V

    .line 20
    iget-object p3, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    invoke-virtual {p3}, Lcom/octopus/ad/e/a;->c()V

    .line 21
    const-string p3, "77%"

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, v1

    .line 24
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/octopus/ad/d/k;->a:I

    goto :goto_1

    .line 26
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/octopus/ad/d/k;->a:I

    .line 27
    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    mul-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x64

    iput p3, p0, Lcom/octopus/ad/d/k;->b:I

    goto :goto_2

    .line 29
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/octopus/ad/d/k;->b:I

    .line 30
    :goto_2
    iget-object p3, p0, Lcom/octopus/ad/d/k;->c:Landroid/content/Context;

    iget v0, p0, Lcom/octopus/ad/d/k;->a:I

    int-to-float v0, v0

    invoke-static {p3, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/octopus/ad/d/k;->a:I

    .line 31
    iget-object p3, p0, Lcom/octopus/ad/d/k;->c:Landroid/content/Context;

    iget v0, p0, Lcom/octopus/ad/d/k;->b:I

    int-to-float v0, v0

    invoke-static {p3, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/octopus/ad/d/k;->b:I

    .line 32
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/octopus/ad/d/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",centerXInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/octopus/ad/d/k;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",adWidthDp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",adHeightDp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/d/k$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/octopus/ad/d/k$1;-><init>(Lcom/octopus/ad/d/k;IILandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 35
    iget-object p1, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object p1, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    new-instance p2, Lcom/octopus/ad/d/k$2;

    invoke-direct {p2, p0}, Lcom/octopus/ad/d/k$2;-><init>(Lcom/octopus/ad/d/k;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object p1, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    return-object p1

    :catchall_0
    return-object v4
.end method

.method public a()V
    .locals 1

    const/16 v0, 0x3e8

    .line 2
    invoke-virtual {p0, v0}, Lcom/octopus/ad/d/k;->a(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/octopus/ad/d/k;->b(I)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/octopus/ad/d/k;->d:I

    return-void
.end method

.method public a(Lcom/octopus/ad/d/k$a;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/octopus/ad/d/k;->f:Lcom/octopus/ad/d/k$a;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/octopus/ad/d/k;->g:Z

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/e/a;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/octopus/ad/d/k;->f:Lcom/octopus/ad/d/k$a;

    .line 7
    iput-object v0, p0, Lcom/octopus/ad/d/k;->c:Landroid/content/Context;

    .line 8
    iput-object v0, p0, Lcom/octopus/ad/d/k;->i:Lcom/octopus/ad/e/a;

    const/16 v0, 0xc8

    .line 9
    iput v0, p0, Lcom/octopus/ad/d/k;->h:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/d/k;->e:I

    return-void
.end method
