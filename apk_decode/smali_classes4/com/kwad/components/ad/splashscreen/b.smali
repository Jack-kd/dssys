.class public final Lcom/kwad/components/ad/splashscreen/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/ad/splashscreen/b$a;,
        Lcom/kwad/components/ad/splashscreen/b$b;
    }
.end annotation


# static fields
.field private static final jk:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/kwad/components/ad/splashscreen/b;->jk:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method private static a(Lcom/kwad/components/core/request/model/ImpInfo;)V
    .locals 5

    .line 19
    iget-object p0, p0, Lcom/kwad/components/core/request/model/ImpInfo;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 20
    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getBidResponse()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getBidResponseV2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/components/core/p/a;->vO()V

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 24
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-wide v2, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J

    invoke-static {v2, v3}, Lcom/kwad/components/ad/splashscreen/monitor/b;->y(J)V

    const/4 v2, 0x4

    .line 25
    invoke-virtual {p0, v2}, Lcom/kwad/sdk/internal/api/SceneImpl;->setAdStyle(I)V

    const/4 v2, 0x5

    .line 26
    invoke-virtual {p0, v2}, Lcom/kwad/sdk/internal/api/SceneImpl;->setAdNum(I)V

    .line 27
    new-instance v2, Lcom/kwad/components/core/request/model/ImpInfo;

    invoke-direct {v2, p0}, Lcom/kwad/components/core/request/model/ImpInfo;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 28
    const-string v3, "KsAdSplashScreenLoadManager"

    const-string v4, "loadSplashScreenCache "

    invoke-static {v3, v4}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    move-result-object v3

    new-instance v4, Lcom/kwad/components/core/request/model/a$a;

    invoke-direct {v4}, Lcom/kwad/components/core/request/model/a$a;-><init>()V

    .line 30
    invoke-virtual {v4, v2}, Lcom/kwad/components/core/request/model/a$a;->e(Lcom/kwad/components/core/request/model/ImpInfo;)Lcom/kwad/components/core/request/model/a$a;

    move-result-object v2

    const/4 v4, 0x0

    .line 31
    invoke-virtual {v2, v4}, Lcom/kwad/components/core/request/model/a$a;->aZ(Z)Lcom/kwad/components/core/request/model/a$a;

    move-result-object v2

    new-instance v4, Lcom/kwad/components/ad/splashscreen/b$5;

    invoke-direct {v4, p0, v0, v1}, Lcom/kwad/components/ad/splashscreen/b$5;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;J)V

    .line 32
    invoke-virtual {v2, v4}, Lcom/kwad/components/core/request/model/a$a;->a(Lcom/kwad/components/core/request/c;)Lcom/kwad/components/core/request/model/a$a;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/kwad/components/core/request/model/a$a;->wd()Lcom/kwad/components/core/request/model/a;

    move-result-object p0

    .line 34
    invoke-virtual {v3, p0}, Lcom/kwad/components/ad/KsAdLoadManager;->a(Lcom/kwad/components/core/request/model/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsSplashScreenAd;Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V
    .locals 7

    .line 6
    new-instance v0, Lcom/kwad/components/ad/splashscreen/b$4;

    move-object v6, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/kwad/components/ad/splashscreen/b$4;-><init>(Lcom/kwad/sdk/api/KsSplashScreenAd;Lcom/kwad/sdk/core/response/model/AdTemplate;JILcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Lcom/kwad/components/ad/splashscreen/b$b;Lcom/kwad/sdk/core/response/model/AdTemplate;JJLjava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/components/ad/splashscreen/b$b;->a(Lcom/kwad/components/ad/splashscreen/b$b;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    move-wide p5, p4

    move-wide p3, p2

    const/4 p2, 0x7

    .line 3
    invoke-static/range {p1 .. p6}, Lcom/kwad/components/ad/splashscreen/monitor/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;IJJ)V

    .line 4
    const-string p0, "KsAdSplashScreenLoadManager"

    const-string p1, "loadSplashAd isTimeOut return "

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_0
    sget-object p0, Lcom/kwad/components/ad/splashscreen/b;->jk:Landroid/os/Handler;

    invoke-virtual {p0, p6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/splashscreen/b$a;Lcom/kwad/components/core/request/d;ZJ)Z
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    iget v0, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 9
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    iget-object v1, v1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 11
    :goto_0
    invoke-static {p3, v0, v1, p4, p5}, Lcom/kwad/components/ad/splashscreen/monitor/b;->c(ZILjava/lang/String;J)V

    const/4 p4, 0x1

    .line 12
    invoke-static {p1, p4}, Lcom/kwad/components/ad/splashscreen/b$a;->a(Lcom/kwad/components/ad/splashscreen/b$a;Z)Z

    .line 13
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    iget p1, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 14
    iget-object p5, p0, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    sget-object p0, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    iget-object p0, p0, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 16
    :goto_1
    invoke-virtual {p2, p1, p0, p3}, Lcom/kwad/components/core/request/d;->a(ILjava/lang/String;Z)V

    .line 17
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    move-result-object p0

    const/4 p1, 0x3

    .line 18
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/p/a;->bQ(I)V

    return p4

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/kwad/components/core/request/model/ImpInfo;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/components/ad/splashscreen/b;->a(Lcom/kwad/components/core/request/model/ImpInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsSplashScreenAd;Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/kwad/components/ad/splashscreen/b;->a(Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsSplashScreenAd;Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V

    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/splashscreen/b$b;Lcom/kwad/sdk/core/response/model/AdTemplate;JJLjava/lang/Runnable;)Z
    .locals 0

    .line 3
    invoke-static/range {p0 .. p6}, Lcom/kwad/components/ad/splashscreen/b;->a(Lcom/kwad/components/ad/splashscreen/b$b;Lcom/kwad/sdk/core/response/model/AdTemplate;JJLjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/splashscreen/b$a;Lcom/kwad/components/core/request/d;ZJ)Z
    .locals 0

    .line 4
    invoke-static/range {p0 .. p5}, Lcom/kwad/components/ad/splashscreen/b;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/splashscreen/b$a;Lcom/kwad/components/core/request/d;ZJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic lT()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/ad/splashscreen/b;->jk:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public static loadSplashScreenAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V
    .locals 19
    .param p0    # Lcom/kwad/sdk/api/KsScene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v8

    .line 5
    invoke-static/range {p0 .. p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->covert(Lcom/kwad/sdk/api/KsScene;)Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-static {v4}, Lcom/kwad/sdk/commercial/convert/e;->d(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Lcom/kwad/components/ad/splashscreen/monitor/b;->x(J)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/kwad/components/core/t/t;->wU()Lcom/kwad/components/core/t/t;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "loadSplashScreenAd"

    .line 27
    .line 28
    invoke-virtual {v0, v4, v1}, Lcom/kwad/components/core/t/t;->b(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-virtual {v4, v1}, Lcom/kwad/sdk/internal/api/SceneImpl;->setAdStyle(I)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v4, v1}, Lcom/kwad/sdk/internal/api/SceneImpl;->setAdNum(I)V

    .line 38
    .line 39
    .line 40
    const-string v2, "KsAdSplashScreenLoadManager"

    .line 41
    .line 42
    const-string v3, "loadSplashScreenAd "

    .line 43
    .line 44
    invoke-static {v2, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Lcom/kwad/components/ad/splashscreen/b$a;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {v3, v2}, Lcom/kwad/components/ad/splashscreen/b$a;-><init>(B)V

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v2}, Lcom/kwad/components/ad/splashscreen/b$a;->a(Lcom/kwad/components/ad/splashscreen/b$a;Z)Z

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    new-instance v5, Lcom/kwad/components/core/request/model/ImpInfo;

    .line 61
    .line 62
    invoke-direct {v5, v4}, Lcom/kwad/components/core/request/model/ImpInfo;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 63
    .line 64
    .line 65
    new-instance v10, Lcom/kwad/components/ad/splashscreen/b$b;

    .line 66
    .line 67
    invoke-direct {v10, v2}, Lcom/kwad/components/ad/splashscreen/b$b;-><init>(B)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/kwad/components/core/p/a;->vN()V

    .line 75
    .line 76
    .line 77
    sget-object v2, Lcom/kwad/components/ad/splashscreen/b;->jk:Landroid/os/Handler;

    .line 78
    .line 79
    new-instance v11, Lcom/kwad/components/ad/splashscreen/b$1;

    .line 80
    .line 81
    invoke-direct {v11, v5}, Lcom/kwad/components/ad/splashscreen/b$1;-><init>(Lcom/kwad/components/core/request/model/ImpInfo;)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v12, 0x3a98

    .line 85
    .line 86
    invoke-virtual {v2, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    .line 88
    .line 89
    new-instance v11, Lcom/kwad/components/ad/splashscreen/b$2;

    .line 90
    .line 91
    move-object/from16 v12, p1

    .line 92
    .line 93
    invoke-direct {v11, v10, v12, v4}, Lcom/kwad/components/ad/splashscreen/b$2;-><init>(Lcom/kwad/components/ad/splashscreen/b$b;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 94
    .line 95
    .line 96
    sget-object v13, Lcom/kwad/components/ad/splashscreen/b/a;->Hj:Lcom/kwad/sdk/core/config/item/l;

    .line 97
    .line 98
    invoke-static {v13}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/l;)I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    if-gez v13, :cond_0

    .line 103
    .line 104
    const/16 v13, 0x1388

    .line 105
    .line 106
    :cond_0
    int-to-long v13, v13

    .line 107
    invoke-virtual {v2, v11, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 111
    .line 112
    .line 113
    move-result-wide v13

    .line 114
    sub-long/2addr v13, v8

    .line 115
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-static {v1, v2, v13, v14}, Lcom/kwad/components/ad/splashscreen/monitor/b;->f(JJ)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    move-object v15, v3

    .line 130
    invoke-virtual {v4}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    move-object/from16 v16, v4

    .line 135
    .line 136
    const/4 v4, 0x2

    .line 137
    invoke-virtual {v1, v2, v3, v4}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->a(JI)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->ma()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2, v1}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->i(Ljava/util/List;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    .line 157
    .line 158
    .line 159
    invoke-virtual/range {v16 .. v16}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 160
    .line 161
    .line 162
    move-result-wide v3

    .line 163
    invoke-static {v3, v4, v1, v2}, Lcom/kwad/components/ad/splashscreen/monitor/b;->a(JLjava/util/List;Ljava/util/List;)V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    new-instance v2, Lcom/kwad/components/core/request/model/a$a;

    .line 171
    .line 172
    invoke-direct {v2}, Lcom/kwad/components/core/request/model/a$a;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v5}, Lcom/kwad/components/core/request/model/a$a;->e(Lcom/kwad/components/core/request/model/ImpInfo;)Lcom/kwad/components/core/request/model/a$a;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    const/4 v3, 0x1

    .line 180
    invoke-virtual {v2, v3}, Lcom/kwad/components/core/request/model/a$a;->aY(Z)Lcom/kwad/components/core/request/model/a$a;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2, v0}, Lcom/kwad/components/core/request/model/a$a;->aZ(Z)Lcom/kwad/components/core/request/model/a$a;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    move-object v2, v0

    .line 189
    new-instance v0, Lcom/kwad/components/ad/splashscreen/b$3;

    .line 190
    .line 191
    move-object v5, v12

    .line 192
    move-object v3, v15

    .line 193
    move-object/from16 v4, v16

    .line 194
    .line 195
    move-object v12, v1

    .line 196
    move-object v1, v10

    .line 197
    move-wide/from16 v17, v13

    .line 198
    .line 199
    move-object v13, v2

    .line 200
    move-object v2, v11

    .line 201
    move-wide/from16 v10, v17

    .line 202
    .line 203
    invoke-direct/range {v0 .. v11}, Lcom/kwad/components/ad/splashscreen/b$3;-><init>(Lcom/kwad/components/ad/splashscreen/b$b;Ljava/lang/Runnable;Lcom/kwad/components/ad/splashscreen/b$a;Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;JJJ)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13, v0}, Lcom/kwad/components/core/request/model/a$a;->a(Lcom/kwad/components/core/request/c;)Lcom/kwad/components/core/request/model/a$a;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/kwad/components/core/request/model/a$a;->wd()Lcom/kwad/components/core/request/model/a;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v12, v0}, Lcom/kwad/components/ad/KsAdLoadManager;->a(Lcom/kwad/components/core/request/model/a;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method
