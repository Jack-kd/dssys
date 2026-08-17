.class public Lcom/anythink/network/meishu/MsNativeExpressAd;
.super Lcom/anythink/network/meishu/MsNativeAd;
.source "SourceFile"


# instance fields
.field private final a:Lcom/anythink/network/meishu/MsNativeAd$AdListener;

.field private b:Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

.field c:Z

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(ZIILcom/anythink/network/meishu/MsNativeAd$AdListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/meishu/MsNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->a:Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->c:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->e:I

    .line 9
    .line 10
    iput p2, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->d:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/meishu/MsNativeExpressAd;)Lcom/anythink/network/meishu/MsNativeAd$AdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->a:Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/network/meishu/MsNativeExpressAd;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->e:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->b:Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->b:Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p3, "key_height"

    .line 2
    .line 3
    const-string v0, "key_width"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    .line 29
    :cond_0
    move v0, v1

    .line 30
    :goto_0
    :try_start_2
    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    goto :goto_1

    .line 49
    :catchall_1
    move-exception p3

    .line 50
    :try_start_3
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    new-instance p3, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    .line 54
    .line 55
    invoke-direct {p3}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p2}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setPid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    sget-object p3, Lcom/anythink/network/meishu/MsATInitManager;->CHANNEL:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setChannel(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setWidth(I)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_4

    .line 76
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2, v1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setHeight(I)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-boolean p3, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->c:Z

    .line 82
    .line 83
    if-eqz p3, :cond_4

    .line 84
    .line 85
    const/4 p3, 0x1

    .line 86
    invoke-virtual {p2, p3}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setFetchCount(I)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    iget p3, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->d:I

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->setFetchCount(I)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;

    .line 93
    .line 94
    .line 95
    :goto_3
    new-instance p3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->build()Lcom/meishu/sdk/core/ad/MsAdSlot;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    new-instance p4, Lcom/anythink/network/meishu/MsNativeExpressAd$a;

    .line 102
    .line 103
    invoke-direct {p4, p0, p1}, Lcom/anythink/network/meishu/MsNativeExpressAd$a;-><init>(Lcom/anythink/network/meishu/MsNativeExpressAd;Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p3, p1, p2, p4}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;-><init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/MsAdSlot;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdEventListener;)V

    .line 107
    .line 108
    .line 109
    iput-object p3, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->b:Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 110
    .line 111
    invoke-virtual {p3}, Lcom/meishu/sdk/core/loader/c;->loadAd()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :goto_4
    iget-object p2, p0, Lcom/anythink/network/meishu/MsNativeExpressAd;->a:Lcom/anythink/network/meishu/MsNativeAd$AdListener;

    .line 116
    .line 117
    if-eqz p2, :cond_5

    .line 118
    .line 119
    new-instance p3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string p4, "loadAd with exception:"

    .line 125
    .line 126
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string p3, ""

    .line 141
    .line 142
    invoke-interface {p2, p3, p1}, Lcom/anythink/network/meishu/MsNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_5
    return-void
.end method
