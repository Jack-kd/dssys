.class Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->setShakeStatus()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 9
    .line 10
    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->m(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, ""

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Lcom/sigmob/windad/Splash/WindSplashAdRequest;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->j(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->n(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    div-int/lit16 v1, v1, 0x3e8

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->setFetchDelay(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->j(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->setDisableAutoHideAd(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 53
    .line 54
    new-instance v1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;-><init>(Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Lcom/sigmob/windad/Splash/WindSplashADListener;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 63
    .line 64
    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->j(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 73
    .line 74
    invoke-static {v3}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->o(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-direct {v1, v2, v3}, Lcom/sigmob/windad/Splash/WindSplashAD;-><init>(Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/windad/Splash/WindSplashADListener;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->r(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->s(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "USD"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/m;->setCurrency(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->k(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)D

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    const-wide/16 v2, 0x0

    .line 110
    .line 111
    cmpl-double v0, v0, v2

    .line 112
    .line 113
    if-lez v0, :cond_0

    .line 114
    .line 115
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->s(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->k(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)D

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    double-to-int v1, v1

    .line 128
    mul-int/lit8 v1, v1, 0x64

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/m;->setBidFloor(I)V

    .line 131
    .line 132
    .line 133
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->s(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->loadAd()Z

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->l(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_2

    .line 154
    .line 155
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->s(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 162
    .line 163
    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->l(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->loadAd(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->s(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->loadAd()Z

    .line 178
    .line 179
    .line 180
    return-void
.end method
