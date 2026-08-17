.class public Lcom/meishu/sdk/platform/ms/recycler/i$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$m;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$m;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$m;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdp()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$m;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdg()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Ljava/lang/String;II)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [I

    .line 47
    .line 48
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$m;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->n:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    aget v2, v0, v1

    .line 57
    .line 58
    if-lez v2, :cond_0

    .line 59
    .line 60
    sget v2, Lcom/meishu/sdk/platform/ms/recycler/t;->f:I

    .line 61
    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    sget v2, Lcom/meishu/sdk/platform/ms/recycler/t;->b:F

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    cmpl-float v2, v2, v3

    .line 68
    .line 69
    if-lez v2, :cond_0

    .line 70
    .line 71
    sget v2, Lcom/meishu/sdk/platform/ms/recycler/t;->c:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .line 73
    cmpl-float v2, v2, v3

    .line 74
    .line 75
    if-lez v2, :cond_0

    .line 76
    .line 77
    :try_start_1
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$m;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/ms/recycler/i;->e()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    aget v3, v0, v1

    .line 84
    .line 85
    invoke-static {v2, v3}, Lcom/meishu/sdk/platform/ms/recycler/t;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$m;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 94
    .line 95
    aget v3, v0, v1

    .line 96
    .line 97
    iput v3, v2, Lcom/meishu/sdk/platform/ms/recycler/i;->z:I

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_1
    move-exception v0

    .line 101
    goto :goto_2

    .line 102
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$m;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 103
    .line 104
    iget-boolean v3, v2, Lcom/meishu/sdk/platform/ms/recycler/i;->A:Z

    .line 105
    .line 106
    if-nez v3, :cond_1

    .line 107
    .line 108
    aget v0, v0, v1

    .line 109
    .line 110
    iget v1, v2, Lcom/meishu/sdk/platform/ms/recycler/i;->z:I

    .line 111
    .line 112
    sub-int v1, v0, v1

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/4 v2, 0x5

    .line 119
    if-le v1, v2, :cond_2

    .line 120
    .line 121
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$m;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 122
    .line 123
    iget v3, v2, Lcom/meishu/sdk/platform/ms/recycler/i;->m:I

    .line 124
    .line 125
    add-int/2addr v3, v1

    .line 126
    iput v3, v2, Lcom/meishu/sdk/platform/ms/recycler/i;->m:I

    .line 127
    .line 128
    iput v0, v2, Lcom/meishu/sdk/platform/ms/recycler/i;->z:I

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_1
    aget v0, v0, v1

    .line 132
    .line 133
    iput v0, v2, Lcom/meishu/sdk/platform/ms/recycler/i;->z:I

    .line 134
    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-static {v2, v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->c(Lcom/meishu/sdk/platform/ms/recycler/i;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    :cond_2
    :goto_3
    return-void
.end method
