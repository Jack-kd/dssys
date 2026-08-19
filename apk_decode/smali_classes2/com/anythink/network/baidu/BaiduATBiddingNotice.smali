.class public Lcom/anythink/network/baidu/BaiduATBiddingNotice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/ATBiddingNotice;


# static fields
.field private static final c:Ljava/lang/String; = "adn"

.field private static final d:Ljava/lang/String; = "ad_t"

.field private static final e:Ljava/lang/String; = "ad_time"

.field private static final f:Ljava/lang/String; = "bid_t"

.field private static final g:Ljava/lang/String; = "is_s"

.field private static final h:Ljava/lang/String; = "is_c"


# instance fields
.field a:Ljava/lang/Object;

.field b:Lcom/anythink/core/api/ATIBiddingResultListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->b:Lcom/anythink/core/api/ATIBiddingResultListener;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method private a(I)I
    .locals 1

    .line 1
    const/16 v0, 0xf

    if-eq p1, v0, :cond_5

    const/16 v0, 0x16

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    const/16 p1, 0xa

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1

    :cond_2
    const/16 p1, 0x8

    return p1

    :cond_3
    const/4 p1, 0x5

    return p1

    :cond_4
    const/16 p1, 0x9

    return p1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 18
    const-string v3, "adn_id"

    invoke-static {p2, v3}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    .line 19
    const-string v4, "adn_extra_nw_firm_id"

    const/4 v5, 0x0

    invoke-static {p2, v4, v5}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-lez v4, :cond_0

    .line 20
    invoke-direct {p0, v4}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a(I)I

    move-result v0

    goto :goto_0

    :cond_0
    if-eq v3, v6, :cond_1

    if-eq v3, v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    .line 21
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "102"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "103"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v6, 0x4

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    .line 22
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "adn"

    invoke-virtual {v2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "ad_time"

    invoke-virtual {v2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "bid_t"

    invoke-virtual {v2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string p1, "is_s"

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string p1, "is_c"

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string p1, "adn_extra_native_material_info"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 28
    :try_start_0
    check-cast p1, Ljava/util/Map;

    const-string p2, "native_material_type"

    invoke-static {p1, p2, v5}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    :cond_4
    move p1, v5

    :goto_2
    const-string p2, "ad_t"

    const/4 v0, 0x7

    if-lez p1, :cond_5

    if-gt p1, v0, :cond_5

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 30
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_3
    invoke-direct {p0, v2, v5}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a(Ljava/util/Map;Z)V

    return-object v2
.end method

.method private a(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 4
    const-string v1, "adn_id"

    invoke-static {p1, v1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    .line 5
    const-string v2, "adn_type"

    invoke-static {p1, v2}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    .line 6
    const-string v3, "adn_extra_nw_firm_id"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 7
    invoke-direct {p0, v3}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    :goto_0
    const/16 v3, 0x65

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :cond_2
    move v2, v5

    .line 8
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "adn"

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "ad_time"

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bid_t"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v1, "adn_extra_native_material_info"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    :try_start_0
    check-cast p1, Ljava/util/Map;

    const-string v1, "native_material_type"

    invoke-static {p1, v1, v4}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    const-string p1, "ad_t"

    const/4 v1, 0x7

    if-lez v4, :cond_4

    if-gt v4, v1, :cond_4

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :goto_2
    invoke-direct {p0, v0, v5}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a(Ljava/util/Map;Z)V

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATBiddingNotice;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    return-void
.end method

.method private a(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 32
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 35
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getNoticePriceCurrency()Lcom/anythink/core/api/ATAdConst$CURRENCY;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 2
    .line 3
    return-object v0
.end method

.method public notifyBidDisplay(ZD)V
    .locals 0

    return-void
.end method

.method public declared-synchronized notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x32

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x4

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eq v0, v1, :cond_5

    .line 16
    .line 17
    const/16 v1, 0x35

    .line 18
    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    const-string v0, "104"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v4

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :pswitch_1
    const-string v0, "103"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v0, v3

    .line 49
    goto :goto_1

    .line 50
    :pswitch_2
    const-string v0, "102"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move v0, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const-string v0, "5"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move v0, v5

    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const-string v0, "2"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    :goto_0
    const/4 v0, -0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_6
    const/4 v0, 0x0

    .line 83
    :goto_1
    if-eqz v0, :cond_9

    .line 84
    .line 85
    const/16 v1, 0x384

    .line 86
    .line 87
    if-eq v0, v5, :cond_a

    .line 88
    .line 89
    if-eq v0, v2, :cond_8

    .line 90
    .line 91
    if-eq v0, v3, :cond_8

    .line 92
    .line 93
    if-eq v0, v4, :cond_7

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_7
    const/16 v1, 0xca

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_8
    const/16 v1, 0xcb

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_9
    const/16 v1, 0x64

    .line 103
    .line 104
    :cond_a
    :goto_2
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 105
    .line 106
    .line 107
    move-result-wide p2

    .line 108
    long-to-int p2, p2

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 115
    .line 116
    if-eqz v0, :cond_b

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    goto :goto_3

    .line 123
    :cond_b
    const-string v0, ""

    .line 124
    .line 125
    :goto_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, ": notifyBidLoss winPrice: "

    .line 129
    .line 130
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, ", lossCode:"

    .line 137
    .line 138
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v0, ", lossReason:"

    .line 145
    .line 146
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-direct {p0, p3}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, p1, p4}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    const-string p3, "ecpm"

    .line 168
    .line 169
    invoke-virtual {p1, p3, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    const-string p3, "reason"

    .line 177
    .line 178
    invoke-virtual {p1, p3, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    const-string p2, "adn_bid_listener_object"

    .line 182
    .line 183
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    instance-of p3, p2, Lcom/anythink/core/api/ATIBiddingResultListener;

    .line 188
    .line 189
    if-eqz p3, :cond_c

    .line 190
    .line 191
    check-cast p2, Lcom/anythink/core/api/ATIBiddingResultListener;

    .line 192
    .line 193
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->b:Lcom/anythink/core/api/ATIBiddingResultListener;

    .line 194
    .line 195
    invoke-virtual {p2, v5}, Lcom/anythink/core/api/ATIBiddingResultListener;->setNeedWait(Z)V

    .line 196
    .line 197
    .line 198
    :cond_c
    new-instance p2, Lcom/anythink/network/baidu/BaiduATBiddingNotice$b;

    .line 199
    .line 200
    invoke-direct {p2, p0}, Lcom/anythink/network/baidu/BaiduATBiddingNotice$b;-><init>(Lcom/anythink/network/baidu/BaiduATBiddingNotice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .line 202
    .line 203
    :try_start_1
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 204
    .line 205
    if-eqz p3, :cond_d

    .line 206
    .line 207
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 208
    .line 209
    if-eqz p4, :cond_d

    .line 210
    .line 211
    check-cast p3, Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 212
    .line 213
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    .line 215
    .line 216
    monitor-exit p0

    .line 217
    return-void

    .line 218
    :catchall_1
    :cond_d
    :try_start_2
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 219
    .line 220
    if-eqz p3, :cond_e

    .line 221
    .line 222
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 223
    .line 224
    if-eqz p4, :cond_e

    .line 225
    .line 226
    check-cast p3, Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 227
    .line 228
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 229
    .line 230
    .line 231
    monitor-exit p0

    .line 232
    return-void

    .line 233
    :catchall_2
    :cond_e
    :try_start_3
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 234
    .line 235
    if-eqz p3, :cond_f

    .line 236
    .line 237
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 238
    .line 239
    if-eqz p4, :cond_f

    .line 240
    .line 241
    check-cast p3, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 242
    .line 243
    invoke-interface {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 244
    .line 245
    .line 246
    monitor-exit p0

    .line 247
    return-void

    .line 248
    :catchall_3
    :cond_f
    :try_start_4
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 249
    .line 250
    if-eqz p3, :cond_10

    .line 251
    .line 252
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 253
    .line 254
    if-eqz p4, :cond_10

    .line 255
    .line 256
    check-cast p3, Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 257
    .line 258
    invoke-interface {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 259
    .line 260
    .line 261
    monitor-exit p0

    .line 262
    return-void

    .line 263
    :catchall_4
    :cond_10
    :try_start_5
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 264
    .line 265
    if-eqz p3, :cond_11

    .line 266
    .line 267
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 268
    .line 269
    if-eqz p4, :cond_11

    .line 270
    .line 271
    check-cast p3, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 272
    .line 273
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 274
    .line 275
    .line 276
    monitor-exit p0

    .line 277
    return-void

    .line 278
    :catchall_5
    :cond_11
    :try_start_6
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 279
    .line 280
    if-eqz p3, :cond_12

    .line 281
    .line 282
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 283
    .line 284
    if-eqz p4, :cond_12

    .line 285
    .line 286
    check-cast p3, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 287
    .line 288
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 289
    .line 290
    .line 291
    monitor-exit p0

    .line 292
    return-void

    .line 293
    :catchall_6
    :cond_12
    const/4 p1, 0x0

    .line 294
    :try_start_7
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 295
    .line 296
    monitor-exit p0

    .line 297
    return-void

    .line 298
    :goto_4
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 299
    throw p1

    .line 300
    nop

    .line 301
    :pswitch_data_0
    .packed-switch 0xbdf3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized notifyBidWin(DDLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p5}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    .line 7
    .line 8
    .line 9
    move-result-wide p2

    .line 10
    long-to-int p2, p2

    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string p4, "ecpm"

    .line 20
    .line 21
    invoke-virtual {p1, p4, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object p4, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_0
    const-string p4, ""

    .line 42
    .line 43
    :goto_0
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p4, ": notifyBidWin : second price:"

    .line 47
    .line 48
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p0, p2}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lcom/anythink/network/baidu/BaiduATBiddingNotice$a;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lcom/anythink/network/baidu/BaiduATBiddingNotice$a;-><init>(Lcom/anythink/network/baidu/BaiduATBiddingNotice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :try_start_1
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 67
    .line 68
    if-eqz p3, :cond_1

    .line 69
    .line 70
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 71
    .line 72
    if-eqz p4, :cond_1

    .line 73
    .line 74
    check-cast p3, Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 75
    .line 76
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :catchall_1
    :cond_1
    :try_start_2
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 82
    .line 83
    if-eqz p3, :cond_2

    .line 84
    .line 85
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 86
    .line 87
    if-eqz p4, :cond_2

    .line 88
    .line 89
    check-cast p3, Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 90
    .line 91
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/SplashAd;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :catchall_2
    :cond_2
    :try_start_3
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 97
    .line 98
    if-eqz p3, :cond_3

    .line 99
    .line 100
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 101
    .line 102
    if-eqz p4, :cond_3

    .line 103
    .line 104
    check-cast p3, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 105
    .line 106
    invoke-interface {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 107
    .line 108
    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 111
    :catchall_3
    :cond_3
    :try_start_4
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 112
    .line 113
    if-eqz p3, :cond_4

    .line 114
    .line 115
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 116
    .line 117
    if-eqz p4, :cond_4

    .line 118
    .line 119
    check-cast p3, Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 120
    .line 121
    invoke-interface {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 122
    .line 123
    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 126
    :catchall_4
    :cond_4
    :try_start_5
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 127
    .line 128
    if-eqz p3, :cond_5

    .line 129
    .line 130
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 131
    .line 132
    if-eqz p4, :cond_5

    .line 133
    .line 134
    check-cast p3, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 135
    .line 136
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 137
    .line 138
    .line 139
    monitor-exit p0

    .line 140
    return-void

    .line 141
    :catchall_5
    :cond_5
    :try_start_6
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;

    .line 142
    .line 143
    if-eqz p3, :cond_6

    .line 144
    .line 145
    instance-of p4, p3, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 146
    .line 147
    if-eqz p4, :cond_6

    .line 148
    .line 149
    check-cast p3, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 150
    .line 151
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 152
    .line 153
    .line 154
    monitor-exit p0

    .line 155
    return-void

    .line 156
    :catchall_6
    :cond_6
    const/4 p1, 0x0

    .line 157
    :try_start_7
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 158
    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 161
    :goto_1
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 162
    throw p1
.end method
