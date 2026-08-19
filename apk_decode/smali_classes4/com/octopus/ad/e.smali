.class public Lcom/octopus/ad/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/AdActivity$a;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Lcom/octopus/ad/internal/e/b;

.field private c:Lcom/octopus/ad/internal/e/c;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout$LayoutParams;

.field private f:J

.field private g:Lcom/octopus/ad/internal/e/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    .line 5
    .line 6
    return-void
.end method

.method private a(Lcom/octopus/ad/internal/e/f;)V
    .locals 6

    .line 25
    const-string v0, "OctopusAd"

    iput-object p1, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 26
    :cond_0
    invoke-virtual {p1, p0}, Lcom/octopus/ad/internal/e/f;->setAdImplementation(Lcom/octopus/ad/AdActivity$a;)V

    .line 27
    iget-object p1, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/f;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    iget-object p1, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    iget-object p1, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/f;->getAdQueue()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/internal/e/e;

    :goto_0
    if-eqz p1, :cond_3

    .line 32
    iget-wide v1, p0, Lcom/octopus/ad/e;->f:J

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/e;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/octopus/ad/internal/q;->y:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, p0, Lcom/octopus/ad/e;->f:J

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/e;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 33
    :cond_2
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->too_old:I

    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/c/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/f;->getAdQueue()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/internal/e/e;

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_10

    .line 35
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/e;->c()Lcom/octopus/ad/internal/e/b;

    move-result-object v1

    if-nez v1, :cond_4

    goto/16 :goto_6

    .line 36
    :cond_4
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/e;->c()Lcom/octopus/ad/internal/e/b;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    .line 37
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/b;->a()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/content/MutableContextWrapper;

    if-eqz p1, :cond_5

    .line 38
    iget-object p1, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/b;->a()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/MutableContextWrapper;

    iget-object v1, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 39
    iget-object p1, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    iget-object p1, p1, Lcom/octopus/ad/internal/e/b;->d:Lcom/octopus/ad/d;

    if-eqz p1, :cond_5

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/MutableContextWrapper;

    iget-object v1, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 41
    :cond_5
    iget-object p1, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/b;->getCreativeWidth()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/b;->getCreativeHeight()I

    move-result p1

    if-eq p1, v1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    .line 42
    :try_start_0
    iget-object p1, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 43
    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    const/16 v1, 0x1a

    if-le p1, v1, :cond_7

    .line 44
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_7

    .line 45
    const-string p1, "Only fullscreen activities can request orientation"

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :cond_7
    iget-object p1, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->q()I

    move-result v0

    invoke-static {p1, v0}, Lcom/octopus/ad/AdActivity;->a(Landroid/app/Activity;I)V

    .line 47
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/b;->c()Lcom/octopus/ad/internal/e/c;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/e;->c:Lcom/octopus/ad/internal/e/c;

    .line 48
    iget-object p1, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/b;->c()Lcom/octopus/ad/internal/e/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object p1

    .line 49
    instance-of v0, p1, Lcom/octopus/ad/d;

    if-eqz v0, :cond_9

    .line 50
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    iget-object v1, p0, Lcom/octopus/ad/e;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    .line 53
    :cond_9
    iget-object v0, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    iget-object v0, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/octopus/ad/e;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 55
    :cond_a
    iget-object v0, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_b

    .line 56
    iget-object v0, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->getCreativeHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    iget v1, v1, Lcom/octopus/ad/internal/q;->u:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 57
    iget-object v1, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/b;->getCreativeWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v2

    iget v2, v2, Lcom/octopus/ad/internal/q;->v:F

    :goto_3
    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_4

    .line 58
    :cond_b
    iget-object v0, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->getCreativeWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    iget v1, v1, Lcom/octopus/ad/internal/q;->u:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 59
    iget-object v1, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/b;->getCreativeHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v2

    iget v2, v2, Lcom/octopus/ad/internal/q;->v:F

    goto :goto_3

    .line 60
    :goto_4
    iget-object v2, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/e/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    if-gt v0, v2, :cond_c

    if-gtz v0, :cond_d

    :cond_c
    move v0, v2

    .line 61
    :cond_d
    iget-object v3, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v3}, Lcom/octopus/ad/internal/e/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    if-gt v1, v3, :cond_e

    if-gtz v1, :cond_f

    :cond_e
    move v1, v3

    .line 62
    :cond_f
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v0, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 63
    iget-object v0, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 65
    iget-object v0, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    :goto_5
    iget-object p1, p0, Lcom/octopus/ad/e;->c:Lcom/octopus/ad/internal/e/c;

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->l()V

    :cond_10
    :goto_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/e/f;->t:Lcom/octopus/ad/internal/e/f;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/f;->getAdQueue()Ljava/util/Queue;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/e/f;->t:Lcom/octopus/ad/internal/e/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/f;->getAdQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/e/e;

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/e;->c()Lcom/octopus/ad/internal/e/b;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    iget-object v3, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/e;->c()Lcom/octopus/ad/internal/e/b;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    sget v3, Lcom/octopus/ad/R$style;->OctopusDialogStyle:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    sget v3, Lcom/octopus/ad/R$style;->OctopusDialogStyleTran:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTheme(I)V

    .line 12
    :goto_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    sget v1, Lcom/octopus/ad/R$style;->OctopusTheme_Black:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 14
    iget-object v0, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->hideSystemTitleBarUI(Landroid/app/Activity;)V

    .line 15
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    .line 16
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/octopus/ad/e;->e:Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    iget-object v1, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v0, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/octopus/ad/e;->f:J

    .line 20
    sget-object v0, Lcom/octopus/ad/internal/e/f;->t:Lcom/octopus/ad/internal/e/f;

    invoke-direct {p0, v0}, Lcom/octopus/ad/e;->a(Lcom/octopus/ad/internal/e/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 21
    :goto_1
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iget-object v0, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 23
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 24
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->d:Lcom/octopus/ad/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/d;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/f;->onResumeLifeCycle()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->d:Lcom/octopus/ad/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/d;->m()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/f;->onPauseLifeCycle()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->k()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->d:Lcom/octopus/ad/d;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/octopus/ad/d;->k()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/f;->setAdImplementation(Lcom/octopus/ad/AdActivity$a;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/f;->onDestroyLifeCycle()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/f;->destroy()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/octopus/ad/e;->g:Lcom/octopus/ad/internal/e/f;

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/e;->a:Landroid/app/Activity;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/e;->b:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->c()Lcom/octopus/ad/internal/e/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/octopus/ad/e;->c:Lcom/octopus/ad/internal/e/c;

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    instance-of v1, v0, Lcom/octopus/ad/d;

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    invoke-direct {v4, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/e;->d:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    invoke-direct {v4, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iput-object v0, p0, Lcom/octopus/ad/e;->c:Lcom/octopus/ad/internal/e/c;

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->l()V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    return-void
.end method
