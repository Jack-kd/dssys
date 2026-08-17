.class final Lcom/kwad/components/ad/c/e/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/webview/tachikoma/b/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/e/a;->a(Lcom/kwad/components/core/webview/tachikoma/b/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/kwad/components/ad/c/e/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/c/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/e/a$3;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isMuted()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kh()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/c/e/a$3;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/kwad/components/ad/c/e/a;->j(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/kwad/components/ad/c/b;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/kwad/components/core/t/a;->wD()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    :goto_0
    move v1, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/ad/c/e/a$3;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/kwad/components/ad/c/e/a;->k(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/kwad/components/ad/c/b;->bS:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 35
    .line 36
    instance-of v1, v1, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/kwad/components/ad/c/e/a$3;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/kwad/components/ad/c/e/a;->l(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v1, v1, Lcom/kwad/components/ad/c/b;->bS:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 47
    .line 48
    check-cast v1, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->getVideoSoundValue()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/kwad/components/ad/c/e/a$3;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/kwad/components/ad/c/e/a;->m(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v1, v1, Lcom/kwad/components/ad/c/b;->bS:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 63
    .line 64
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    xor-int/2addr v1, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/kwad/components/ad/c/e/a$3;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/kwad/components/ad/c/e/a;->n(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->ce(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const/4 v1, 0x0

    .line 90
    :goto_1
    iget-object v2, p0, Lcom/kwad/components/ad/c/e/a$3;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/kwad/components/ad/c/e/a;->o(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v2, v2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    iget-object v2, p0, Lcom/kwad/components/ad/c/e/a$3;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/kwad/components/ad/c/e/a;->p(Lcom/kwad/components/ad/c/e/a;)Lcom/kwad/components/ad/c/b;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v2, v2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 107
    .line 108
    xor-int/lit8 v3, v1, 0x1

    .line 109
    .line 110
    iput-boolean v3, v2, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsAudioEnable:Z

    .line 111
    .line 112
    :cond_3
    iget-object v2, p0, Lcom/kwad/components/ad/c/e/a$3;->dq:Lcom/kwad/components/ad/c/e/a;

    .line 113
    .line 114
    invoke-static {v2, v1}, Lcom/kwad/components/ad/c/e/a;->b(Lcom/kwad/components/ad/c/e/a;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    return v1

    .line 118
    :catchall_0
    return v0
.end method
