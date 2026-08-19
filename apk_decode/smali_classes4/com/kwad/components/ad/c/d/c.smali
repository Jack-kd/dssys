.class public final Lcom/kwad/components/ad/c/d/c;
.super Lcom/kwad/components/ad/c/d/a;
.source "SourceFile"


# instance fields
.field private cT:Lcom/kwad/components/ad/c/b/a;

.field private cU:Lcom/kwad/components/ad/c/b/a;

.field private cV:Landroid/widget/FrameLayout;

.field private cW:Z

.field private cX:Z

.field private cY:Z

.field private cZ:J

.field private da:Z

.field private db:Z

.field private dc:Z

.field private dd:Z

.field private de:Lcom/kwad/sdk/utils/bi;

.field private df:I

.field dg:Z

.field private handler:Landroid/os/Handler;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/c/d/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/c/d/c;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/kwad/components/ad/c/d/c;->da:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/kwad/components/ad/c/d/c;->dd:Z

    .line 16
    .line 17
    new-instance v1, Lcom/kwad/components/ad/c/d/c$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/c/d/c$1;-><init>(Lcom/kwad/components/ad/c/d/c;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/kwad/components/ad/c/d/c;->de:Lcom/kwad/sdk/utils/bi;

    .line 23
    .line 24
    iput v0, p0, Lcom/kwad/components/ad/c/d/c;->df:I

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/c/d/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/ad/c/d/c;->cZ:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/c/d/c;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/kwad/components/ad/c/d/c;->dd:Z

    return p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/c/d/c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/ad/c/d/c;->cY:Z

    return p1
.end method

.method private aA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/ad/c/d/c;->de:Lcom/kwad/sdk/utils/bi;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private az()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/ad/c/d/c;->de:Lcom/kwad/sdk/utils/bi;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/kwad/components/ad/c/d/c;->de:Lcom/kwad/sdk/utils/bi;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/c/d/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/ad/c/d/c;->startTime:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/c/d/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/kwad/components/ad/c/d/c;->startTime:J

    return-wide p1
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kf()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 6
    new-instance v0, Lcom/kwad/components/core/widget/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/components/core/widget/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    new-instance p1, Lcom/kwad/components/ad/c/d/c$2;

    invoke-direct {p1, p0}, Lcom/kwad/components/ad/c/d/c$2;-><init>(Lcom/kwad/components/ad/c/d/c;)V

    invoke-virtual {v0, p1}, Lcom/kwad/components/core/widget/a;->setViewCallback(Lcom/kwad/components/core/widget/a$a;)V

    .line 9
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a;->zM()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/c/d/c;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/ad/c/d/c;->cX:Z

    return p1
.end method

.method public static synthetic c(Lcom/kwad/components/ad/c/d/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/c/d/c;->cX:Z

    return p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/c/d/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/c/d/c;->dd:Z

    return p1
.end method

.method public static synthetic d(Lcom/kwad/components/ad/c/d/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/ad/c/d/c;->cZ:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/c/d/c;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/c/d/c;->da:Z

    return p1
.end method

.method public static synthetic e(Lcom/kwad/components/ad/c/d/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/c;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/c/d/c;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/c/d/c;->dc:Z

    return p1
.end method

.method public static synthetic f(Lcom/kwad/components/ad/c/d/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/c/d/c;->az()V

    return-void
.end method

.method public static synthetic f(Lcom/kwad/components/ad/c/d/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/c/d/c;->db:Z

    return p1
.end method

.method public static synthetic g(Lcom/kwad/components/ad/c/d/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/c/d/c;->aA()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/kwad/components/ad/c/d/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/c/d/c;->da:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/kwad/components/ad/c/d/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/c/d/c;->dc:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/kwad/components/ad/c/d/c;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/kwad/components/ad/c/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/c/d/c;->df:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic l(Lcom/kwad/components/ad/c/d/c;)Lcom/kwad/components/ad/c/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/c;->cU:Lcom/kwad/components/ad/c/b/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/kwad/components/ad/c/d/c;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/c;->cV:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/kwad/components/ad/c/d/c;)Lcom/kwad/components/ad/c/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/c/d/c;->cT:Lcom/kwad/components/ad/c/b/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/kwad/components/ad/c/d/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/c/d/c;->db:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final aB()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/c/d/c;->cY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/kwad/components/ad/c/b;->bT:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    new-instance v2, Lcom/kwad/components/ad/c/b/a;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 28
    .line 29
    iget-object v4, v4, Lcom/kwad/components/ad/c/b;->bT:Ljava/util/List;

    .line 30
    .line 31
    iget v5, p0, Lcom/kwad/components/ad/c/d/c;->df:I

    .line 32
    .line 33
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 38
    .line 39
    new-instance v5, Lcom/kwad/components/ad/c/d/c$3;

    .line 40
    .line 41
    invoke-direct {v5, p0, v0, v1}, Lcom/kwad/components/ad/c/d/c$3;-><init>(Lcom/kwad/components/ad/c/d/c;J)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3, v4, v5}, Lcom/kwad/components/ad/c/b/a;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/c/b/a$a;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/kwad/components/ad/c/b;->bS:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lcom/kwad/components/ad/c/b/a;->a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/kwad/components/ad/c/b;->bT:Ljava/util/List;

    .line 57
    .line 58
    iget v3, p0, Lcom/kwad/components/ad/c/d/c;->df:I

    .line 59
    .line 60
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/kwad/components/ad/c/d/c;->cW:Z

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    const-wide/16 v3, 0x1f4

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    iput-object v2, p0, Lcom/kwad/components/ad/c/d/c;->cT:Lcom/kwad/components/ad/c/b/a;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->cV:Landroid/widget/FrameLayout;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->cT:Lcom/kwad/components/ad/c/b/a;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/kwad/components/ad/c/b/a;->aq()V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->handler:Landroid/os/Handler;

    .line 90
    .line 91
    new-instance v6, Lcom/kwad/components/ad/c/d/c$4;

    .line 92
    .line 93
    invoke-direct {v6, p0}, Lcom/kwad/components/ad/c/d/c$4;-><init>(Lcom/kwad/components/ad/c/d/c;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    .line 98
    .line 99
    iput-boolean v5, p0, Lcom/kwad/components/ad/c/d/c;->cW:Z

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iput-object v2, p0, Lcom/kwad/components/ad/c/d/c;->cU:Lcom/kwad/components/ad/c/b/a;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->cV:Landroid/widget/FrameLayout;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->cU:Lcom/kwad/components/ad/c/b/a;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/kwad/components/ad/c/b/a;->aq()V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->handler:Landroid/os/Handler;

    .line 117
    .line 118
    new-instance v6, Lcom/kwad/components/ad/c/d/c$5;

    .line 119
    .line 120
    invoke-direct {v6, p0}, Lcom/kwad/components/ad/c/d/c$5;-><init>(Lcom/kwad/components/ad/c/d/c;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    .line 125
    .line 126
    iput-boolean v1, p0, Lcom/kwad/components/ad/c/d/c;->cW:Z

    .line 127
    .line 128
    :goto_1
    iget v0, p0, Lcom/kwad/components/ad/c/d/c;->df:I

    .line 129
    .line 130
    add-int/2addr v0, v5

    .line 131
    iput v0, p0, Lcom/kwad/components/ad/c/d/c;->df:I

    .line 132
    .line 133
    iget-object v3, p0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 134
    .line 135
    iget-object v3, v3, Lcom/kwad/components/ad/c/b;->bT:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-ne v0, v3, :cond_3

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/kwad/components/ad/c/d/c;->aC()V

    .line 144
    .line 145
    .line 146
    iput v1, p0, Lcom/kwad/components/ad/c/d/c;->df:I

    .line 147
    .line 148
    :cond_3
    iget-boolean v0, p0, Lcom/kwad/components/ad/c/d/c;->dg:Z

    .line 149
    .line 150
    if-nez v0, :cond_4

    .line 151
    .line 152
    iput-boolean v5, p0, Lcom/kwad/components/ad/c/d/c;->dg:Z

    .line 153
    .line 154
    return-void

    .line 155
    :cond_4
    const-string v0, "translationX"

    .line 156
    .line 157
    iget-object v3, p0, Lcom/kwad/components/ad/c/d/c;->cV:Landroid/widget/FrameLayout;

    .line 158
    .line 159
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    int-to-float v3, v3

    .line 164
    const/4 v4, 0x2

    .line 165
    new-array v4, v4, [F

    .line 166
    .line 167
    aput v3, v4, v1

    .line 168
    .line 169
    const/4 v1, 0x0

    .line 170
    aput v1, v4, v5

    .line 171
    .line 172
    invoke-static {v2, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const-wide/16 v1, 0x12c

    .line 177
    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :goto_2
    invoke-static {v0}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public final aC()V
    .locals 7

    .line 1
    sget-object v0, Lcom/kwad/components/ad/c/g;->cf:Lcom/kwad/sdk/api/KsScene;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->covert(Lcom/kwad/sdk/api/KsScene;)Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/internal/api/SceneImpl;->setBidResponse(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/internal/api/SceneImpl;->setBidResponseV2(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v0}, Lcom/kwad/sdk/commercial/convert/e;->d(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v3, p0, Lcom/kwad/components/ad/c/d/c;->db:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x1

    .line 28
    :goto_0
    invoke-static {v0, v3}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/internal/api/SceneImpl;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/kwad/components/core/t/t;->wU()Lcom/kwad/components/core/t/t;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "loadBannerAd"

    .line 36
    .line 37
    invoke-virtual {v3, v0, v4}, Lcom/kwad/components/core/t/t;->b(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x5

    .line 42
    invoke-virtual {v0, v4}, Lcom/kwad/sdk/internal/api/SceneImpl;->setAdStyle(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    new-instance v5, Lcom/kwad/components/core/request/model/a$a;

    .line 50
    .line 51
    invoke-direct {v5}, Lcom/kwad/components/core/request/model/a$a;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v6, Lcom/kwad/components/core/request/model/ImpInfo;

    .line 55
    .line 56
    invoke-direct {v6, v0}, Lcom/kwad/components/core/request/model/ImpInfo;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6}, Lcom/kwad/components/core/request/model/a$a;->e(Lcom/kwad/components/core/request/model/ImpInfo;)Lcom/kwad/components/core/request/model/a$a;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5, v3}, Lcom/kwad/components/core/request/model/a$a;->aZ(Z)Lcom/kwad/components/core/request/model/a$a;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    new-instance v5, Lcom/kwad/components/ad/c/d/c$7;

    .line 68
    .line 69
    invoke-direct {v5, p0}, Lcom/kwad/components/ad/c/d/c$7;-><init>(Lcom/kwad/components/ad/c/d/c;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v5}, Lcom/kwad/components/core/request/model/a$a;->a(Lcom/kwad/components/core/request/j;)Lcom/kwad/components/core/request/model/a$a;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    new-instance v5, Lcom/kwad/components/ad/c/d/c$6;

    .line 77
    .line 78
    invoke-direct {v5, p0, v0, v1, v2}, Lcom/kwad/components/ad/c/d/c$6;-><init>(Lcom/kwad/components/ad/c/d/c;Lcom/kwad/sdk/internal/api/SceneImpl;J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v5}, Lcom/kwad/components/core/request/model/a$a;->a(Lcom/kwad/components/core/request/c;)Lcom/kwad/components/core/request/model/a$a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/kwad/components/core/request/model/a$a;->wd()Lcom/kwad/components/core/request/model/a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v4, v0}, Lcom/kwad/components/ad/KsAdLoadManager;->a(Lcom/kwad/components/core/request/model/a;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/c/d/a;->ay()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_banner_base_content:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/ad/c/d/c;->cV:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/kwad/components/ad/c/d/c;->startTime:J

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/kwad/components/ad/c/d/c;->az()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->cV:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/kwad/components/ad/c/d/c;->b(Landroid/view/ViewGroup;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
