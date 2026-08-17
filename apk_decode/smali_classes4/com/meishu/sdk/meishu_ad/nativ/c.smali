.class public Lcom/meishu/sdk/meishu_ad/nativ/c;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/d;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/nativ/d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/d;Landroid/view/ViewGroup;Lcom/meishu/sdk/platform/ms/recycler/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->c:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->b:Lcom/meishu/sdk/platform/ms/recycler/d;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->c:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    iget-boolean p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->B:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->a:Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->c:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClickUrl()[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    array-length v0, v0

    .line 27
    if-ge p1, v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->a:Landroid/view/ViewGroup;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->a:Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    if-lez v1, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->c:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClickUrl()[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    aget-object v2, v2, p1

    .line 54
    .line 55
    invoke-static {v2, v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->c:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClickUrl()[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    aput-object v0, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/c;->b:Lcom/meishu/sdk/platform/ms/recycler/d;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    :try_start_1
    iget-object v0, p1, Lcom/meishu/sdk/platform/ms/recycler/d;->a:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v0, p1, Lcom/meishu/sdk/platform/ms/recycler/d;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 88
    .line 89
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    iget-object v0, p1, Lcom/meishu/sdk/platform/ms/recycler/d;->a:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 100
    .line 101
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    goto :goto_4

    .line 107
    :cond_3
    :goto_3
    iget-object v0, p1, Lcom/meishu/sdk/platform/ms/recycler/d;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 108
    .line 109
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/d;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 118
    .line 119
    invoke-static {p1, v1}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    :goto_5
    return-void

    .line 127
    :cond_4
    :goto_6
    const-string p1, "NativeAdDataImpl"

    .line 128
    .line 129
    const-string v0, "is`not FeedAdExposure"

    .line 130
    .line 131
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
