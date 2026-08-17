.class final Lcom/kwad/components/ad/draw/presenter/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/draw/presenter/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ed:Lcom/kwad/components/ad/draw/presenter/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/draw/presenter/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->getRootView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/kwad/components/ad/draw/presenter/b;->a(Lcom/kwad/components/ad/draw/presenter/b;)Landroid/widget/ImageView;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/kwad/components/ad/draw/presenter/b;->b(Lcom/kwad/components/ad/draw/presenter/b;)Lcom/kwad/sdk/core/response/model/b;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/kwad/sdk/core/response/model/b;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/kwad/components/ad/draw/presenter/b;->b(Lcom/kwad/components/ad/draw/presenter/b;)Lcom/kwad/sdk/core/response/model/b;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/kwad/sdk/core/response/model/b;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    if-le v3, v2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    .line 50
    int-to-float v3, v3

    .line 51
    int-to-float v2, v2

    .line 52
    const/high16 v4, 0x3f800000    # 1.0f

    .line 53
    .line 54
    mul-float/2addr v2, v4

    .line 55
    div-float/2addr v3, v2

    .line 56
    int-to-float v0, v0

    .line 57
    mul-float/2addr v3, v0

    .line 58
    float-to-int v0, v3

    .line 59
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/b;->a(Lcom/kwad/components/ad/draw/presenter/b;)Landroid/widget/ImageView;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/b;->a(Lcom/kwad/components/ad/draw/presenter/b;)Landroid/widget/ImageView;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 83
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    .line 85
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    .line 87
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/b;->a(Lcom/kwad/components/ad/draw/presenter/b;)Landroid/widget/ImageView;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/b;->a(Lcom/kwad/components/ad/draw/presenter/b;)Landroid/widget/ImageView;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/b;->a(Lcom/kwad/components/ad/draw/presenter/b;)Landroid/widget/ImageView;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 113
    .line 114
    invoke-static {v1}, Lcom/kwad/components/ad/draw/presenter/b;->b(Lcom/kwad/components/ad/draw/presenter/b;)Lcom/kwad/sdk/core/response/model/b;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/b;->getUrl()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/b$2;->ed:Lcom/kwad/components/ad/draw/presenter/b;

    .line 123
    .line 124
    invoke-static {v2}, Lcom/kwad/components/ad/draw/presenter/b;->c(Lcom/kwad/components/ad/draw/presenter/b;)Lcom/kwad/components/ad/draw/b/b;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget-object v2, v2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 129
    .line 130
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
