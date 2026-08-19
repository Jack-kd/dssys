.class final Lcom/kwad/components/ad/draw/d$1;
.super Lcom/kwad/components/core/request/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/draw/d;->loadDrawAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic cg:Lcom/kwad/sdk/internal/api/SceneImpl;

.field final synthetic ch:J

.field final synthetic di:J

.field final synthetic dz:Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/internal/api/SceneImpl;JLcom/kwad/sdk/api/KsLoadManager$DrawAdListener;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/d$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/kwad/components/ad/draw/d$1;->di:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/kwad/components/ad/draw/d$1;->dz:Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/kwad/components/ad/draw/d$1;->ch:J

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/components/core/request/d;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .locals 6
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/kwad/components/ad/draw/d$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-wide v4, p0, Lcom/kwad/components/ad/draw/d$1;->di:J

    .line 16
    .line 17
    sub-long/2addr v2, v4

    .line 18
    invoke-static {v1, v0, v2, v3}, Lcom/kwad/components/ad/draw/a/d;->b(Lcom/kwad/sdk/internal/api/SceneImpl;IJ)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget v4, v2, Lcom/kwad/sdk/core/response/model/AdTemplate;->adStyle:I

    .line 53
    .line 54
    const/4 v5, 0x6

    .line 55
    if-eq v4, v5, :cond_1

    .line 56
    .line 57
    invoke-static {v2}, Lcom/kwad/components/ad/draw/a/d;->l(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {v3}, Lcom/kwad/sdk/core/response/helper/a;->cY(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    invoke-static {v3}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    invoke-static {v2}, Lcom/kwad/components/ad/draw/a/d;->l(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {p1, v2}, Lcom/kwad/sdk/core/response/helper/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v3, Lcom/kwad/components/ad/draw/c;

    .line 85
    .line 86
    invoke-direct {v3, v2}, Lcom/kwad/components/ad/draw/c;-><init>(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    sget-object v1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 100
    .line 101
    iget v1, v1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 102
    .line 103
    iget-object v2, p1, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 117
    .line 118
    iget-object v2, v2, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, "(\u65e0\u89c6\u9891\u8d44\u6e90)"

    .line 124
    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 134
    .line 135
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/kwad/components/ad/draw/d$1;->onError(ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    new-instance p1, Lcom/kwad/components/ad/draw/d$1$2;

    .line 140
    .line 141
    invoke-direct {p1, p0, v0}, Lcom/kwad/components/ad/draw/d$1$2;-><init>(Lcom/kwad/components/ad/draw/d$1;Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    .line 146
    .line 147
    :goto_2
    iget-object p1, p0, Lcom/kwad/components/ad/draw/d$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-static {p1, v0}, Lcom/kwad/sdk/commercial/convert/e;->b(Lcom/kwad/sdk/internal/api/SceneImpl;I)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/d$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, p0, Lcom/kwad/components/ad/draw/d$1;->di:J

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    invoke-static {v0, p1, p2, v1, v2}, Lcom/kwad/components/ad/draw/a/d;->a(Lcom/kwad/sdk/internal/api/SceneImpl;ILjava/lang/String;J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/draw/d$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 14
    .line 15
    invoke-static {v0, p1, p2}, Lcom/kwad/components/ad/draw/a/d;->a(Lcom/kwad/sdk/internal/api/SceneImpl;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/kwad/components/ad/draw/d$1$1;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/components/ad/draw/d$1$1;-><init>(Lcom/kwad/components/ad/draw/d$1;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
