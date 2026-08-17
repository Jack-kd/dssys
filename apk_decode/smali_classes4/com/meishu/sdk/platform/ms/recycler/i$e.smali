.class public Lcom/meishu/sdk/platform/ms/recycler/i$e;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/widget/RelativeLayout;

.field public final synthetic c:Lcom/meishu/sdk/core/view/ShakeImageView;

.field public final synthetic d:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->d:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->b:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->c:Lcom/meishu/sdk/core/view/ShakeImageView;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->d:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v2, v1

    .line 20
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    const/high16 v4, 0x42f00000    # 120.0f

    .line 23
    .line 24
    mul-float/2addr v3, v4

    .line 25
    cmpg-float v2, v2, v3

    .line 26
    .line 27
    if-gez v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->b:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    .line 37
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .line 39
    const/high16 v3, 0x428c0000    # 70.0f

    .line 40
    .line 41
    mul-float/2addr v0, v3

    .line 42
    float-to-int v0, v0

    .line 43
    add-int/lit8 v1, v1, -0x46

    .line 44
    .line 45
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 50
    .line 51
    const/4 v0, -0x2

    .line 52
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 53
    .line 54
    const/16 v0, 0xd

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->b:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->b:Landroid/widget/RelativeLayout;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->c:Lcom/meishu/sdk/core/view/ShakeImageView;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/ShakeImageView;->startAnimation()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->b:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/i$e$a;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/recycler/i$e$a;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i$e;)V

    .line 80
    .line 81
    .line 82
    const-wide/16 v2, 0x7d0

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :catchall_0
    return-void
.end method
