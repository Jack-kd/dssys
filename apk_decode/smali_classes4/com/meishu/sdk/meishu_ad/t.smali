.class public Lcom/meishu/sdk/meishu_ad/t;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/widget/RelativeLayout;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:I

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/t;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/t;->a:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/t;->b:Landroid/widget/ImageView;

    .line 6
    .line 7
    iput p4, p0, Lcom/meishu/sdk/meishu_ad/t;->c:I

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/t;->a:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/t;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/t;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-double v2, v0

    .line 21
    const-wide v4, 0x402b666666666666L    # 13.7

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    mul-double/2addr v2, v4

    .line 27
    double-to-int v2, v2

    .line 28
    div-int/lit8 v2, v2, 0x64

    .line 29
    .line 30
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/t;->b:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    mul-int/lit8 v0, v0, 0x5

    .line 39
    .line 40
    div-int/lit8 v3, v0, 0x64

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/t;->b:Landroid/widget/ImageView;

    .line 43
    .line 44
    neg-int v2, v2

    .line 45
    add-int/2addr v2, v3

    .line 46
    int-to-float v2, v2

    .line 47
    const/4 v3, 0x3

    .line 48
    new-array v3, v3, [F

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    aput v4, v3, v1

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    aput v2, v3, v1

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    aput v2, v3, v4

    .line 58
    .line 59
    const-string v2, "translationY"

    .line 60
    .line 61
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/t;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-wide/16 v2, 0x320

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    .line 74
    .line 75
    iget v2, p0, Lcom/meishu/sdk/meishu_ad/t;->c:I

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/t;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/v;->e:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method
