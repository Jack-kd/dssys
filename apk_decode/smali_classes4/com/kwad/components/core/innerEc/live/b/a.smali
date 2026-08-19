.class public final Lcom/kwad/components/core/innerEc/live/b/a;
.super Lcom/kwad/components/core/n/c;
.source "SourceFile"


# instance fields
.field private Uy:I

.field private Uz:Ljava/lang/String;

.field private mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/n/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/b/a;->Uy:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->setRetainInstance(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private rJ()Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/b/a/b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/b/a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/b/a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getActivity()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/b/a;->Uz:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a;->rK()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v2, v3, v4, v1}, Lcom/kwad/components/core/innerEc/f;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILivePluginProvider;)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveBindOwner;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UD:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveBindOwner;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 32
    .line 33
    iput-object v2, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 34
    .line 35
    iput-object p0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UC:Lcom/kwad/sdk/api/core/fragment/KsFragment;

    .line 36
    .line 37
    new-instance v2, Lcom/kwad/components/core/innerEc/live/d/b;

    .line 38
    .line 39
    invoke-direct {v2}, Lcom/kwad/components/core/innerEc/live/d/b;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v2, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UR:Lcom/kwad/components/core/innerEc/live/d/b;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "jky onCreateCallerContext: callerContext.mTKLoadObserve is: "

    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UR:Lcom/kwad/components/core/innerEc/live/d/b;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "LiveDetailFragment"

    .line 61
    .line 62
    invoke-static {v3, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    new-instance v2, Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 68
    .line 69
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveBindOwner;->getLivePlayer()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-direct {v2, v3}, Lcom/kwad/components/core/innerEc/live/video/a/b;-><init>(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UI:Lcom/kwad/components/core/innerEc/live/video/a/b;

    .line 77
    .line 78
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveBindOwner;->getLongConnection()Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 83
    .line 84
    :cond_0
    new-instance v1, Lcom/kwad/components/core/innerEc/live/end/b;

    .line 85
    .line 86
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/end/b;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UK:Lcom/kwad/components/core/innerEc/live/end/a;

    .line 90
    .line 91
    iget-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 92
    .line 93
    invoke-interface {v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->init()V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/kwad/components/core/innerEc/live/config/b;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 99
    .line 100
    invoke-direct {v1, v2}, Lcom/kwad/components/core/innerEc/live/config/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 101
    .line 102
    .line 103
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UF:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 104
    .line 105
    new-instance v1, Lcom/kwad/components/core/innerEc/live/end/b;

    .line 106
    .line 107
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/end/b;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UG:Lcom/kwad/components/core/innerEc/live/end/a;

    .line 111
    .line 112
    new-instance v1, Lcom/kwad/components/core/widget/a/b;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/kwad/components/core/proxy/h;->oC:Landroid/view/ViewGroup;

    .line 115
    .line 116
    const/16 v3, 0x46

    .line 117
    .line 118
    invoke-direct {v1, p0, v2, v3}, Lcom/kwad/components/core/widget/a/b;-><init>(Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/view/View;I)V

    .line 119
    .line 120
    .line 121
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UE:Lcom/kwad/components/core/widget/a/b;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 124
    .line 125
    iput-object v1, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 126
    .line 127
    new-instance v1, Lcom/kwad/components/core/innerEc/live/c/a;

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getActivity()Landroid/app/Activity;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-direct {v1, v2, v0}, Lcom/kwad/components/core/innerEc/live/c/a;-><init>(Landroid/app/Activity;Lcom/kwad/components/core/innerEc/live/b/a/b;)V

    .line 134
    .line 135
    .line 136
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UJ:Lcom/kwad/components/core/innerEc/live/c/a;

    .line 137
    .line 138
    return-object v0
.end method

.method private rK()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/i/e;->aN(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "authorId"

    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method


# virtual methods
.method public final synthetic an()Lcom/kwad/sdk/mvp/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a;->rJ()Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final iH()Lcom/kwad/sdk/core/response/model/AdResultData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onActivityDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/n/c;->onActivityDestroy()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, "onActivityDestroy:"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "LiveDetailFragment"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/kwad/components/core/n/c;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 28
    .line 29
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/components/core/proxy/h;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "KEY_AD_RESULT_CACHE_IDX"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {}, Lcom/kwad/components/core/c/f;->oU()Lcom/kwad/components/core/c/f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/kwad/components/core/c/f;->d(IZ)Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "onCreate:"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "LiveDetailFragment"

    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, "onViewCreated: mAdResultData is null"

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getFirstAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/logger/a;->aT(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final onCreatePresenter()Lcom/kwad/sdk/mvp/Presenter;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "onCreatePresenter:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "LiveDetailFragment"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/c/e;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/d;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/c/d;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/i;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/c/i;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/b;

    .line 53
    .line 54
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/c/b;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 61
    .line 62
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/c/c;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 69
    .line 70
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/c/g;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 77
    .line 78
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/c/h;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/a;

    .line 85
    .line 86
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/c/a;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/j;

    .line 93
    .line 94
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/c/j;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/f;

    .line 101
    .line 102
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/b/c/f;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 106
    .line 107
    .line 108
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/n/c;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "onViewCreated:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "LiveDetailFragment"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getArguments()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const-string p1, "bundle is null"

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, "onViewCreated: mAdTemplate is null"

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/b/a;->Uy:I

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/i/e;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a;->Uz:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/logger/a;->aU(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 74
    .line 75
    .line 76
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final rI()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_live_play_fragment_layout:I

    .line 2
    .line 3
    return v0
.end method
