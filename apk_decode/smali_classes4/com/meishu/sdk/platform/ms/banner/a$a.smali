.class public Lcom/meishu/sdk/platform/ms/banner/a$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/banner/a;->onADExposure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/banner/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/banner/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/banner/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/banner/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/banner/a;->b:Lcom/meishu/sdk/platform/ms/banner/b;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 6
    .line 7
    check-cast v0, Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/banner/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/a;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/banner/a;->b:Lcom/meishu/sdk/platform/ms/banner/b;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 22
    .line 23
    check-cast v0, Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/banner/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/a;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/banner/a;->d:Landroid/view/View;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Landroid/view/View;Landroid/view/View;)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v2, "BannerAdListenerAdapter"

    .line 41
    .line 42
    const-string v3, "send onAdExposure"

    .line 43
    .line 44
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    array-length v2, v0

    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_0
    if-ge v3, v2, :cond_2

    .line 50
    .line 51
    aget-object v4, v0, v3

    .line 52
    .line 53
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/banner/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/a;

    .line 60
    .line 61
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/banner/a;->b:Lcom/meishu/sdk/platform/ms/banner/b;

    .line 62
    .line 63
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 64
    .line 65
    check-cast v5, Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    and-int/lit8 v6, v5, 0x2

    .line 72
    .line 73
    const/4 v7, 0x2

    .line 74
    if-ne v6, v7, :cond_0

    .line 75
    .line 76
    add-int/lit8 v5, v5, -0x2

    .line 77
    .line 78
    or-int/2addr v5, v1

    .line 79
    :cond_0
    sget-object v6, Lcom/meishu/sdk/core/ad/AdType;->BANNER:Lcom/meishu/sdk/core/ad/AdType;

    .line 80
    .line 81
    invoke-static {v4, v5, v6}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;ILcom/meishu/sdk/core/ad/AdType;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/banner/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/a;

    .line 86
    .line 87
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/banner/a;->d:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/banner/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/a;

    .line 94
    .line 95
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/banner/a;->d:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-static {v4, v5, v6}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/banner/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/a;

    .line 106
    .line 107
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/banner/a;->b:Lcom/meishu/sdk/platform/ms/banner/b;

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-static {v4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v5, v4}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/banner/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/a;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/banner/a;->a:Lcom/meishu/sdk/core/ad/banner/b;

    .line 126
    .line 127
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/banner/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/a;

    .line 131
    .line 132
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/banner/a;->a(Lcom/meishu/sdk/platform/ms/banner/a;Z)Z

    .line 133
    .line 134
    .line 135
    return-void
.end method
