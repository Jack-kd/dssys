.class public Lcom/meishu/sdk/platform/ms/recycler/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/ms/recycler/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$e;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

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
    sget v0, Lcom/meishu/sdk/platform/ms/recycler/t;->b:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 5
    .line 6
    if-lez v0, :cond_2

    .line 7
    .line 8
    sget v0, Lcom/meishu/sdk/platform/ms/recycler/t;->c:F

    .line 9
    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$e;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$e;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdp()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$e;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 44
    .line 45
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdg()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Ljava/lang/String;II)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    new-array v0, v0, [I

    .line 61
    .line 62
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$e;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->k:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    aget v2, v0, v1

    .line 71
    .line 72
    if-lez v2, :cond_1

    .line 73
    .line 74
    sget v2, Lcom/meishu/sdk/platform/ms/recycler/t;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .line 76
    if-nez v2, :cond_1

    .line 77
    .line 78
    :try_start_1
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$e;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/ms/recycler/l;->e()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    aget v3, v0, v1

    .line 85
    .line 86
    invoke-static {v2, v3}, Lcom/meishu/sdk/platform/ms/recycler/t;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$e;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 98
    .line 99
    sget v3, Lcom/meishu/sdk/platform/ms/recycler/t;->f:I

    .line 100
    .line 101
    aget v0, v0, v1

    .line 102
    .line 103
    sub-int/2addr v3, v0

    .line 104
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, v2, Lcom/meishu/sdk/platform/ms/recycler/l;->j:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_2
    return-void
.end method
