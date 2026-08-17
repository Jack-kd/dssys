.class Lcom/fl/saas/Q0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/Q0;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/Q0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/Q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/fl/saas/Q0;->d(Lcom/fl/saas/Q0;)Lcom/fl/saas/Q0$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/fl/saas/Q0;->d(Lcom/fl/saas/Q0;)Lcom/fl/saas/Q0$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/fl/saas/Q0$b;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onBitmapLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/fl/saas/Q0;->a(Lcom/fl/saas/Q0;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1, p2}, Lcom/fl/saas/a0;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance p2, Landroid/widget/ImageView;

    .line 14
    .line 15
    iget-object p3, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 16
    .line 17
    invoke-static {p3}, Lcom/fl/saas/Q0;->a(Lcom/fl/saas/Q0;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p1}, Lcom/fl/saas/a0;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    new-instance p3, Lcom/fl/saas/adx/base/widget/ShaderRoundImageView;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/fl/saas/Q0;->a(Lcom/fl/saas/Q0;)Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p3, v0}, Lcom/fl/saas/adx/base/widget/ShaderRoundImageView;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 44
    .line 45
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/fl/saas/Q0;->b(Lcom/fl/saas/Q0;)Lcom/fl/saas/Q0$c;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/fl/saas/Q0$c;->b()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, -0x1

    .line 63
    const/4 v2, -0x2

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    .line 74
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    :goto_0
    const/16 v1, 0x11

    .line 78
    .line 79
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 80
    .line 81
    iget-object v1, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/fl/saas/Q0;->c(Lcom/fl/saas/Q0;)Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-virtual {v1, p3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/fl/saas/Q0;->c(Lcom/fl/saas/Q0;)Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, p2, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/fl/saas/Q0;->d(Lcom/fl/saas/Q0;)Lcom/fl/saas/Q0$b;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    iget-object p1, p0, Lcom/fl/saas/Q0$a;->a:Lcom/fl/saas/Q0;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/fl/saas/Q0;->d(Lcom/fl/saas/Q0;)Lcom/fl/saas/Q0$b;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Lcom/fl/saas/Q0$b;->a()V

    .line 123
    .line 124
    .line 125
    :cond_2
    return-void
.end method
