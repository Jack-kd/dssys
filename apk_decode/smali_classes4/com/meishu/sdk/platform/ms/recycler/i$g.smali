.class public Lcom/meishu/sdk/platform/ms/recycler/i$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->b:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->b:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->b:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-long v2, v0

    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->b:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v4, v0

    .line 27
    mul-long/2addr v2, v4

    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->a:Landroid/view/ViewGroup;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-long v4, v0

    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->a:Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-long v6, v0

    .line 42
    mul-long/2addr v4, v6

    .line 43
    long-to-double v2, v2

    .line 44
    long-to-double v4, v4

    .line 45
    const-wide v6, 0x3fd3333333333333L    # 0.3

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    mul-double/2addr v4, v6

    .line 51
    cmpl-double v0, v2, v4

    .line 52
    .line 53
    if-ltz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/platform/ms/recycler/i;Z)Z

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 63
    .line 64
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 71
    .line 72
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->a:Landroid/view/ViewGroup;

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    invoke-static {v2, v3, v4}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Landroid/view/View;Landroid/view/View;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setMonitorUrl([Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 91
    .line 92
    iget-boolean v2, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->j:Z

    .line 93
    .line 94
    if-eqz v2, :cond_1

    .line 95
    .line 96
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/4 v2, 0x2

    .line 103
    if-ne v0, v2, :cond_1

    .line 104
    .line 105
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->b(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->c(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$g;->a:Landroid/view/ViewGroup;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    return v1
.end method
