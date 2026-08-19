.class final Lcom/kwad/components/ad/c/d/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/c/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/d/c;->aB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dh:Lcom/kwad/components/ad/c/d/c;

.field final synthetic di:J


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/c/d/c;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/kwad/components/ad/c/d/c$3;->di:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(IILcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/components/core/e/d/d;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lcom/kwad/components/core/e/d/d;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/components/core/e/d/a$a;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/kwad/components/ad/c/d/c;->j(Lcom/kwad/components/ad/c/d/c;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p3}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Lcom/kwad/components/core/e/d/a$a;->ax(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->au(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p2}, Lcom/kwad/components/core/e/d/a$a;->aN(I)Lcom/kwad/components/core/e/d/a$a;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, p1}, Lcom/kwad/components/core/e/d/a$a;->aM(I)Lcom/kwad/components/core/e/d/a$a;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-instance v0, Lcom/kwad/components/ad/c/d/c$3$1;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1, p3}, Lcom/kwad/components/ad/c/d/c$3$1;-><init>(Lcom/kwad/components/ad/c/d/c$3;ILcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->c(Lcom/kwad/components/core/e/d/a$a;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/kwad/components/ad/c/b;->ab()V

    .line 66
    .line 67
    .line 68
    invoke-static {p3}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    const/4 p1, 0x2

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move p1, v2

    .line 77
    :goto_0
    invoke-static {p3, v2, p1}, Lcom/kwad/components/ad/c/c/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method public final d(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/c/d/c;->h(Lcom/kwad/components/ad/c/d/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 14
    .line 15
    iget-wide v3, v0, Lcom/kwad/components/ad/c/b;->bU:J

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmp-long v3, v3, v5

    .line 20
    .line 21
    if-lez v3, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iget-object v5, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 34
    .line 35
    iget-object v5, v5, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 36
    .line 37
    iget-wide v5, v5, Lcom/kwad/components/ad/c/b;->bU:J

    .line 38
    .line 39
    sub-long/2addr v3, v5

    .line 40
    invoke-static {v0, v2, v3, v4}, Lcom/kwad/sdk/commercial/convert/d;->b(IIJ)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 46
    .line 47
    iget-object v3, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 48
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 56
    .line 57
    iget-wide v6, v0, Lcom/kwad/components/ad/c/b;->bU:J

    .line 58
    .line 59
    sub-long/2addr v4, v6

    .line 60
    invoke-static {p1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    move v7, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move v7, v2

    .line 69
    :goto_0
    const/4 v8, 0x1

    .line 70
    const/4 v6, 0x1

    .line 71
    invoke-static/range {v3 .. v8}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 80
    .line 81
    invoke-static {v0, v2}, Lcom/kwad/components/ad/c/d/c;->d(Lcom/kwad/components/ad/c/d/c;Z)Z

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    move v3, v1

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move v3, v2

    .line 99
    :goto_2
    invoke-static {v0, v2, v3}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 100
    .line 101
    .line 102
    iget-boolean v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    .line 103
    .line 104
    if-nez v0, :cond_7

    .line 105
    .line 106
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    .line 107
    .line 108
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcom/kwad/sdk/core/adlog/a$a;

    .line 112
    .line 113
    invoke-direct {v3}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v4, "101"

    .line 117
    .line 118
    iput-object v4, v3, Lcom/kwad/sdk/core/adlog/a$a;->templateId:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v4, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 121
    .line 122
    iget-object v4, v4, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 123
    .line 124
    iget-object v4, v4, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 125
    .line 126
    invoke-static {v4}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {v4}, Lcom/kwad/sdk/core/response/helper/a;->dB(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_4

    .line 135
    .line 136
    move v4, v2

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    move v4, v1

    .line 139
    :goto_3
    iput v4, v3, Lcom/kwad/sdk/core/adlog/a$a;->aLu:I

    .line 140
    .line 141
    invoke-virtual {v0, v3}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/kwad/components/core/t/b;->wF()Lcom/kwad/components/core/t/b;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const/4 v4, 0x0

    .line 149
    invoke-virtual {v3, p1, v4, v0}, Lcom/kwad/components/core/t/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/b;)Z

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/kwad/components/ad/c/b;->aa()V

    .line 157
    .line 158
    .line 159
    invoke-static {p1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    move v0, v1

    .line 166
    goto :goto_4

    .line 167
    :cond_5
    move v0, v2

    .line 168
    :goto_4
    invoke-static {p1, v2, v0}, Lcom/kwad/components/ad/c/c/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 172
    .line 173
    .line 174
    move-result-wide v3

    .line 175
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 176
    .line 177
    iget-object v0, v0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 178
    .line 179
    iget-wide v5, v0, Lcom/kwad/components/ad/c/b;->bU:J

    .line 180
    .line 181
    sub-long/2addr v3, v5

    .line 182
    invoke-static {p1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_6
    move v1, v2

    .line 190
    :goto_5
    invoke-static {p1, v3, v4, v2, v1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JII)V

    .line 191
    .line 192
    .line 193
    :cond_7
    return-void
.end method

.method public final e(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/adlog/c;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/kwad/components/ad/c/b;->ac()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v3

    .line 23
    :goto_0
    invoke-static {p1, v3, v1}, Lcom/kwad/components/ad/c/c/c;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/kwad/components/ad/c/b;->bQ:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/kwad/components/ad/c/d/c;->e(Lcom/kwad/components/ad/c/d/c;)Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v2, v3

    .line 52
    :goto_1
    invoke-static {p1, v3, v2}, Lcom/kwad/components/ad/c/c/c;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/kwad/components/ad/c/d/c;->onDestroy()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "onMediaPlayError"

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/kwad/components/ad/c/b;->c(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/kwad/components/ad/c/b;->bT:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/kwad/components/ad/c/d/c;->k(Lcom/kwad/components/ad/c/d/c;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iget-wide v3, p0, Lcom/kwad/components/ad/c/d/c$3;->di:J

    .line 32
    .line 33
    sub-long/2addr v1, v3

    .line 34
    invoke-static {v0, v1, v2, p1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
