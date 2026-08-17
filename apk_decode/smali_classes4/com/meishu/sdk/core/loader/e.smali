.class public Lcom/meishu/sdk/core/loader/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/IAdLoadListener;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/meishu/sdk/core/loader/d;",
            "Lcom/meishu/sdk/core/loader/IAdLoadListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/meishu/sdk/core/ad/recycler/c;

    .line 6
    .line 7
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/ad/recycler/c;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/recycler/a;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/banner/b;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/meishu/sdk/core/ad/banner/d;

    .line 18
    .line 19
    check-cast p1, Lcom/meishu/sdk/core/ad/banner/b;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/ad/banner/d;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/banner/b;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Lcom/meishu/sdk/core/ad/splash/f;

    .line 30
    .line 31
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/ad/splash/f;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/splash/d;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    new-instance v0, Lcom/meishu/sdk/core/ad/reward/c;

    .line 42
    .line 43
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/ad/reward/c;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/reward/a;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_3
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    new-instance v0, Lcom/meishu/sdk/core/ad/interstitial/c;

    .line 54
    .line 55
    check-cast p1, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 56
    .line 57
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/ad/interstitial/c;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/interstitial/b;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_4
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/media/a;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    new-instance v0, Lcom/meishu/sdk/core/ad/media/b;

    .line 66
    .line 67
    check-cast p1, Lcom/meishu/sdk/core/ad/media/a;

    .line 68
    .line 69
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/ad/media/b;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/media/a;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_5
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/image/b;

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    new-instance v0, Lcom/meishu/sdk/core/ad/image/c;

    .line 78
    .line 79
    check-cast p1, Lcom/meishu/sdk/core/ad/image/b;

    .line 80
    .line 81
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/ad/image/c;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/image/b;)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_6
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    new-instance v0, Lcom/meishu/sdk/core/ad/draw/c;

    .line 90
    .line 91
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 92
    .line 93
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/ad/draw/c;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/draw/a;)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_7
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 98
    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    new-instance v0, Lcom/meishu/sdk/core/ad/paster/d;

    .line 102
    .line 103
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 104
    .line 105
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/ad/paster/d;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/paster/b;)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_8
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 110
    .line 111
    if-eqz v0, :cond_9

    .line 112
    .line 113
    new-instance v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/d;

    .line 114
    .line 115
    check-cast p1, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 116
    .line 117
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/ad/fullscreenvideo/d;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/fullscreenvideo/c;)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_9
    return-object p1
.end method
