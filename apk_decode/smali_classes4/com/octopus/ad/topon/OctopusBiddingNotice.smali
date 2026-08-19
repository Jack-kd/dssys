.class public Lcom/octopus/ad/topon/OctopusBiddingNotice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/ATBiddingNotice;


# instance fields
.field private octopusAd:Lcom/octopus/ad/IBidding;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/IBidding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    .line 5
    .line 6
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

.method public notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
    .locals 1
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
    iget-object p4, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    .line 2
    .line 3
    if-eqz p4, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    const/4 v0, -0x1

    .line 13
    sparse-switch p4, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string p4, "103"

    .line 18
    .line 19
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    goto :goto_0

    .line 28
    :sswitch_1
    const-string p4, "102"

    .line 29
    .line 30
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    const-string p4, "2"

    .line 40
    .line 41
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    :goto_0
    const-string p1, "OTHER"

    .line 50
    .line 51
    packed-switch v0, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    move-object p4, p1

    .line 55
    goto :goto_1

    .line 56
    :pswitch_0
    const-string p4, "1002"

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_1
    const-string p4, "1005"

    .line 60
    .line 61
    :goto_1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    .line 62
    .line 63
    double-to-int p2, p2

    .line 64
    invoke-interface {v0, p2, p4, p1}, Lcom/octopus/ad/IBidding;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    .line 69
    .line 70
    :cond_3
    return-void

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_2
        0xbdf3 -> :sswitch_1
        0xbdf4 -> :sswitch_0
    .end sparse-switch

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public notifyBidWin(DDLjava/util/Map;)V
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
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    double-to-int p2, p3

    .line 6
    invoke-interface {p1, p2}, Lcom/octopus/ad/IBidding;->sendWinNotice(I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusBiddingNotice;->octopusAd:Lcom/octopus/ad/IBidding;

    .line 11
    .line 12
    :cond_0
    return-void
.end method
