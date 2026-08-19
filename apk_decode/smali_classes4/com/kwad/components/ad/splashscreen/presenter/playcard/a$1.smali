.class final Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;
.super Lcom/kwad/components/core/webview/tachikoma/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/webview/tachikoma/f/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JJJ)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->c(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-wide v3, v0, Lcom/kwad/components/ad/splashscreen/h;->mStartRenderTime:J

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v0, v3, v5

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->d(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->em(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->e(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    iget-object v5, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 60
    .line 61
    invoke-static {v5}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->f(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    iget-wide v5, v5, Lcom/kwad/components/ad/splashscreen/h;->mStartRenderTime:J

    .line 66
    .line 67
    sub-long/2addr v3, v5

    .line 68
    const/4 v5, 0x2

    .line 69
    invoke-static {v0, v5, v3, v4}, Lcom/kwad/sdk/commercial/convert/d;->b(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->g(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->em(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    .line 102
    .line 103
    .line 104
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->h(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v2, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 111
    .line 112
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->i(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v3, v0, Lcom/kwad/components/ad/splashscreen/h;->GO:Lcom/kwad/components/offline/api/tk/model/StyleTemplate;

    .line 119
    .line 120
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->j(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget v4, v0, Lcom/kwad/components/ad/splashscreen/h;->GX:I

    .line 127
    .line 128
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->k(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-wide v5, v0, Lcom/kwad/components/ad/splashscreen/h;->GZ:J

    .line 135
    .line 136
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->l(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget v7, v0, Lcom/kwad/components/ad/splashscreen/h;->GY:I

    .line 143
    .line 144
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->m(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-wide v8, v0, Lcom/kwad/components/ad/splashscreen/h;->Ha:J

    .line 151
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 153
    .line 154
    .line 155
    move-result-wide v10

    .line 156
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->n(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v12

    .line 162
    sub-long v16, v10, v12

    .line 163
    .line 164
    move-wide/from16 v10, p2

    .line 165
    .line 166
    move-wide/from16 v12, p4

    .line 167
    .line 168
    move-wide/from16 v14, p6

    .line 169
    .line 170
    invoke-static/range {v2 .. v17}, Lcom/kwad/components/ad/splashscreen/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/offline/api/tk/model/StyleTemplate;IJIJJJJJ)V

    .line 171
    .line 172
    .line 173
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 174
    .line 175
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->o(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-wide v10, v0, Lcom/kwad/components/ad/splashscreen/h;->Hb:J

    .line 180
    .line 181
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 182
    .line 183
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->p(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iput-wide v12, v0, Lcom/kwad/components/ad/splashscreen/h;->Hc:J

    .line 188
    .line 189
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 190
    .line 191
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->q(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-wide v14, v0, Lcom/kwad/components/ad/splashscreen/h;->Hd:J

    .line 196
    .line 197
    iget-object v0, v1, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 198
    .line 199
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->r(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Ljava/lang/Runnable;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->b(Ljava/lang/Runnable;)V

    .line 204
    .line 205
    .line 206
    :cond_1
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->a(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)Lcom/kwad/components/ad/splashscreen/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/kwad/components/ad/splashscreen/h;->bY:Z

    .line 9
    .line 10
    const-string v0, "tk_splash"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a$1;->Ko:Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;->b(Lcom/kwad/components/ad/splashscreen/presenter/playcard/a;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
