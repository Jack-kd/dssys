.class Lcom/anythink/network/ubix/UbATNativeExpressAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ubix/UbATNativeExpressAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ubix/UbATNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATNativeExpressAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const-string p1, "unknown"

    .line 17
    .line 18
    :goto_1
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v1, v0, p1}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public onAdLoadSucceed(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    :cond_0
    move-object v3, p0

    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v1, "express list contains only null items"

    .line 66
    .line 67
    invoke-interface {p1, v0, v1}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    move-object v3, p0

    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_5
    const/4 p1, 0x0

    .line 75
    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;->getPrice()J

    .line 82
    .line 83
    .line 84
    move-result-wide v9

    .line 85
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    new-array v5, v8, [Lcom/anythink/network/ubix/UbATExpressAd;

    .line 95
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .line 100
    .line 101
    move v2, p1

    .line 102
    :goto_1
    if-ge v2, v8, :cond_6

    .line 103
    .line 104
    new-instance v3, Lcom/anythink/network/ubix/UbATExpressAd;

    .line 105
    .line 106
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    invoke-direct {v3, v4, v6}, Lcom/anythink/network/ubix/UbATExpressAd;-><init>(Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    aput-object v3, v5, v2

    .line 117
    .line 118
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    iget-object v2, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 125
    .line 126
    invoke-static {v2}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-eqz v2, :cond_7

    .line 131
    .line 132
    iget-object v2, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 133
    .line 134
    invoke-static {v2}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    long-to-double v3, v9

    .line 139
    invoke-interface {v2, v1, v0, v3, v4}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdDataLoaded(Ljava/util/List;Ljava/lang/Object;D)V

    .line 140
    .line 141
    .line 142
    :cond_7
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    .line 144
    invoke-direct {v6, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 145
    .line 146
    .line 147
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    .line 149
    invoke-direct {v7, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 150
    .line 151
    .line 152
    move v4, p1

    .line 153
    :goto_2
    if-ge v4, v8, :cond_4

    .line 154
    .line 155
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 160
    .line 161
    new-instance v2, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;

    .line 162
    .line 163
    move-object v3, p0

    .line 164
    invoke-direct/range {v2 .. v11}, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;-><init>(Lcom/anythink/network/ubix/UbATNativeExpressAd$a;I[Lcom/anythink/network/ubix/UbATExpressAd;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;IJLjava/util/List;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v2}, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;->renderExpressNativeAd(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    .line 168
    .line 169
    .line 170
    add-int/lit8 v4, v4, 0x1

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :goto_3
    iget-object p1, v3, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 174
    .line 175
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_8

    .line 180
    .line 181
    iget-object p1, v3, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string v1, "express list is null"

    .line 188
    .line 189
    invoke-interface {p1, v0, v1}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_8
    :goto_4
    return-void
.end method
