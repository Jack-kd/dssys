.class public Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;
.super Lcom/meishu/sdk/core/safe/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/k;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    iput p2, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->i:I

    .line 4
    .line 5
    iput p3, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->j:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->f:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->l:Landroid/view/Surface;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, ""

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p2, " "

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    instance-of p1, p1, Landroid/view/View;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    :goto_0
    iget-object p3, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 99
    .line 100
    int-to-float v0, p1

    .line 101
    int-to-float v1, p2

    .line 102
    invoke-virtual {p3, v0, v1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a(FF)Landroid/graphics/Matrix;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 107
    .line 108
    iget-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->k:Z

    .line 109
    .line 110
    if-nez v1, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0, p1, p2, p3}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a(IILandroid/graphics/Matrix;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    invoke-virtual {v0, p3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 122
    .line 123
    .line 124
    return-void
.end method
