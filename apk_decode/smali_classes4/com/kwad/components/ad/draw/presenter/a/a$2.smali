.class final Lcom/kwad/components/ad/draw/presenter/a/a$2;
.super Lcom/kwad/components/core/video/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/draw/presenter/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic eX:Lcom/kwad/components/ad/draw/presenter/a/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/draw/presenter/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/video/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMediaPlayCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/adlog/c;->cu(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->f(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->g(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onMediaPlayError(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/components/core/video/m;->onMediaPlayError(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/kwad/components/ad/draw/presenter/a/a;->n(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/kwad/components/ad/draw/presenter/a/a;->o(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onMediaPlayPaused()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/video/m;->onMediaPlayPaused()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->l(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->m(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-static {v0, v1}, Lcom/kwad/components/ad/draw/presenter/a/a;->b(Lcom/kwad/components/ad/draw/presenter/a/a;Z)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onMediaPlayProgress(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 2
    .line 3
    invoke-static {p1, p3, p4}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onMediaPlayStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->b(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->c(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdShow()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/b;->dF(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x1

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v2, v3

    .line 60
    :goto_0
    invoke-static {v0, v3, v2}, Lcom/kwad/components/ad/draw/a/d;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0, v3}, Lcom/kwad/components/ad/draw/a/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->d(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->e(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 89
    .line 90
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/kwad/components/ad/draw/presenter/a/a;->b(Lcom/kwad/components/ad/draw/presenter/a/a;Z)Z

    .line 101
    .line 102
    .line 103
    :cond_2
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    .line 104
    .line 105
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 109
    .line 110
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/kwad/components/core/t/b;->wF()Lcom/kwad/components/core/t/b;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 121
    .line 122
    invoke-static {v2}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-virtual {v1, v2, v3, v0}, Lcom/kwad/components/core/t/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/b;)Z

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/kwad/sdk/core/adlog/c;->ct(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final onMediaPlaying()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/video/m;->onMediaPlaying()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->h(Lcom/kwad/components/ad/draw/presenter/a/a;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lcom/kwad/components/ad/draw/presenter/a/a;->b(Lcom/kwad/components/ad/draw/presenter/a/a;Z)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->i(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->j(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/components/ad/draw/b/b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/kwad/components/ad/draw/presenter/a/a;->k(Lcom/kwad/components/ad/draw/presenter/a/a;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-static {v0, v1}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;Z)Z

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/a/a$2;->eX:Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/kwad/components/ad/draw/presenter/a/a;->a(Lcom/kwad/components/ad/draw/presenter/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/kwad/components/core/p/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method
