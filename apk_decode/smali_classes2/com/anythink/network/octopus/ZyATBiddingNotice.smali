.class public Lcom/anythink/network/octopus/ZyATBiddingNotice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/ATBiddingNotice;


# static fields
.field private static final b:Ljava/lang/String; = "ZyATBiddingNotice"


# instance fields
.field private a:Lcom/octopus/ad/IBidding;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/octopus/ad/IBidding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATBiddingNotice;->a:Lcom/octopus/ad/IBidding;

    .line 5
    .line 6
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    if-eq p1, v0, :cond_a

    .line 4
    .line 5
    const/16 v0, 0x16

    .line 6
    .line 7
    if-eq p1, v0, :cond_9

    .line 8
    .line 9
    const/16 v0, 0x27

    .line 10
    .line 11
    if-eq p1, v0, :cond_8

    .line 12
    .line 13
    const/16 v0, 0x31

    .line 14
    .line 15
    if-eq p1, v0, :cond_7

    .line 16
    .line 17
    const/16 v0, 0x48

    .line 18
    .line 19
    if-eq p1, v0, :cond_6

    .line 20
    .line 21
    const/16 v0, 0x4a

    .line 22
    .line 23
    if-eq p1, v0, :cond_5

    .line 24
    .line 25
    const/16 v0, 0x60

    .line 26
    .line 27
    if-eq p1, v0, :cond_4

    .line 28
    .line 29
    const/16 v0, 0x1c

    .line 30
    .line 31
    if-eq p1, v0, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x1d

    .line 34
    .line 35
    if-eq p1, v0, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x4f

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x50

    .line 42
    .line 43
    if-eq p1, v0, :cond_0

    .line 44
    .line 45
    const-string p1, "OTHER"

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    const-string p1, "OPPO"

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_1
    const-string p1, "VIVO"

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    const-string p1, "SIGMOB"

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_3
    const-string p1, "KUAISHOU"

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_4
    const-string p1, "OCTOPUS"

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_5
    const-string p1, "QM"

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    const-string p1, "JD"

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_7
    const-string p1, "XIAOMI"

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_8
    const-string p1, "HUAWEI"

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_9
    const-string p1, "BAIDU"

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_a
    const-string p1, "CSJ"

    .line 79
    .line 80
    return-object p1
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
    .locals 8
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
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 6
    .line 7
    .line 8
    const-string v0, "adn_id"

    .line 9
    .line 10
    invoke-static {p4, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "OTHER"

    .line 15
    .line 16
    const-string v2, "adn_extra_nw_firm_id"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {p4, v2, v3}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-lez p4, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, p4}, Lcom/anythink/network/octopus/ZyATBiddingNotice;->a(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    :goto_0
    move-object v1, p4

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_0
    const/4 p4, 0x5

    .line 35
    if-ne v0, p4, :cond_1

    .line 36
    .line 37
    const-string p4, "OCTOPUS"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    const-string p4, "1006"

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v2, 0x32

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    const/4 v5, 0x3

    .line 50
    const/4 v6, 0x4

    .line 51
    const/4 v7, 0x2

    .line 52
    if-eq v0, v2, :cond_3

    .line 53
    .line 54
    const/16 v2, 0x35

    .line 55
    .line 56
    if-eq v0, v2, :cond_2

    .line 57
    .line 58
    packed-switch v0, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :pswitch_0
    const-string v0, "104"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    move v3, v7

    .line 71
    goto :goto_3

    .line 72
    :pswitch_1
    const-string v0, "103"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    move v3, v6

    .line 81
    goto :goto_3

    .line 82
    :pswitch_2
    const-string v0, "102"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    move v3, v5

    .line 91
    goto :goto_3

    .line 92
    :cond_2
    const-string v0, "5"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    const-string v0, "2"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    move v3, v4

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    :goto_2
    const/4 v3, -0x1

    .line 112
    :goto_3
    if-eqz v3, :cond_7

    .line 113
    .line 114
    if-eq v3, v4, :cond_7

    .line 115
    .line 116
    if-eq v3, v7, :cond_6

    .line 117
    .line 118
    if-eq v3, v5, :cond_5

    .line 119
    .line 120
    if-eq v3, v6, :cond_5

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_5
    const-string p1, "1002"

    .line 124
    .line 125
    :goto_4
    move-object p4, p1

    .line 126
    goto :goto_5

    .line 127
    :cond_6
    const-string p1, "1001"

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_7
    const-string p1, "1005"

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :goto_5
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATBiddingNotice;->a:Lcom/octopus/ad/IBidding;

    .line 137
    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    double-to-int p2, p2

    .line 141
    invoke-interface {p1, p2, p4, v1}, Lcom/octopus/ad/IBidding;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATBiddingNotice;->a:Lcom/octopus/ad/IBidding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    goto :goto_7

    .line 148
    :goto_6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_7
    monitor-exit p0

    .line 152
    return-void

    .line 153
    :catchall_1
    move-exception p1

    .line 154
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    throw p1

    .line 156
    nop

    .line 157
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
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    long-to-int p1, p1

    .line 10
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/anythink/network/octopus/ZyATBiddingNotice;->a:Lcom/octopus/ad/IBidding;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-interface {p2, p1}, Lcom/octopus/ad/IBidding;->sendWinNotice(I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATBiddingNotice;->a:Lcom/octopus/ad/IBidding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    throw p1
.end method
