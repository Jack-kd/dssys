.class public final Lcom/kwad/components/ad/reward/n;
.super Lcom/kwad/components/ad/reward/presenter/b;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/reward/e/g;
.implements Lcom/kwad/components/core/e/e/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/ad/reward/n$a;
    }
.end annotation


# instance fields
.field private kj:Lcom/kwad/components/core/n/b;

.field private kk:Lcom/kwad/components/ad/reward/presenter/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private kl:Landroid/widget/FrameLayout;

.field private km:Lcom/kwad/components/ad/reward/presenter/f/b;

.field private ko:Lcom/kwad/components/ad/reward/presenter/e/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private kp:Lcom/kwad/components/ad/reward/presenter/f/f;

.field private kq:Z

.field private mContext:Landroid/content/Context;

.field private mModel:Lcom/kwad/components/ad/reward/model/c;

.field private mRootContainer:Landroid/view/ViewGroup;

.field private mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

.field private uj:Lcom/kwad/components/ad/reward/g;

.field private uk:Lcom/kwad/components/ad/reward/n$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/n/b;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/kwad/components/ad/reward/model/c;Lcom/kwad/components/ad/reward/g;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/n;->kq:Z

    .line 6
    .line 7
    new-instance v1, Lcom/kwad/components/ad/reward/n$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/reward/n$1;-><init>(Lcom/kwad/components/ad/reward/n;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/kwad/components/ad/reward/n;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/kwad/components/ad/reward/n;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/kwad/components/ad/reward/n;->mRootContainer:Landroid/view/ViewGroup;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/kwad/components/ad/reward/n;->mModel:Lcom/kwad/components/ad/reward/model/c;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/kwad/components/ad/reward/n;->kj:Lcom/kwad/components/core/n/b;

    .line 23
    .line 24
    invoke-direct {p0, p4}, Lcom/kwad/components/ad/reward/n;->a(Lcom/kwad/components/ad/reward/model/c;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p4}, Lcom/kwad/components/ad/reward/model/c;->da()Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/b;->eM(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/a;->cY(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/kwad/components/ad/reward/g;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdResultData;->adGlobalConfigInfo:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/kwad/components/ad/reward/n;->a(Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    :cond_0
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/a;->bj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p4}, Lcom/kwad/components/ad/reward/model/c;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/kwad/components/ad/reward/g;->T(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move v1, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    move v1, v2

    .line 74
    :goto_1
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/a;->dj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    iget-object p2, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 81
    .line 82
    iget-object p2, p2, Lcom/kwad/components/ad/reward/g;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 83
    .line 84
    iget-object p2, p2, Lcom/kwad/sdk/core/response/model/AdResultData;->adGlobalConfigInfo:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

    .line 85
    .line 86
    invoke-static {p2}, Lcom/kwad/components/ad/reward/n;->a(Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    move v0, v2

    .line 93
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "notFullTk: "

    .line 96
    .line 97
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ", mLoadStrategy: "

    .line 104
    .line 105
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/kwad/components/ad/reward/g;->tt:Lcom/kwad/components/ad/reward/LoadStrategy;

    .line 111
    .line 112
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    const-string v2, "RewardPresenter"

    .line 120
    .line 121
    invoke-static {v2, p2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/kwad/components/ad/reward/n;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/tachikoma/e/c;->a(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 133
    .line 134
    .line 135
    sget-object p1, Lcom/kwad/components/ad/reward/RewardRenderResult;->LIVE_TK:Lcom/kwad/components/ad/reward/RewardRenderResult;

    .line 136
    .line 137
    invoke-virtual {p5, p1}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/RewardRenderResult;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/n;->dj()V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    if-eqz p3, :cond_5

    .line 145
    .line 146
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/kwad/components/ad/reward/n;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/tachikoma/e/c;->a(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 153
    .line 154
    .line 155
    sget-object p1, Lcom/kwad/components/ad/reward/RewardRenderResult;->TK_IMAGE:Lcom/kwad/components/ad/reward/RewardRenderResult;

    .line 156
    .line 157
    invoke-virtual {p5, p1}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/RewardRenderResult;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/n;->dk()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_5
    if-nez v1, :cond_6

    .line 165
    .line 166
    iget-object p2, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 167
    .line 168
    iget-object p2, p2, Lcom/kwad/components/ad/reward/g;->tt:Lcom/kwad/components/ad/reward/LoadStrategy;

    .line 169
    .line 170
    sget-object p3, Lcom/kwad/components/ad/reward/LoadStrategy;->FULL_TK:Lcom/kwad/components/ad/reward/LoadStrategy;

    .line 171
    .line 172
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    if-eqz p2, :cond_6

    .line 177
    .line 178
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p2, p0, Lcom/kwad/components/ad/reward/n;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/tachikoma/e/c;->a(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 185
    .line 186
    .line 187
    sget-object p1, Lcom/kwad/components/ad/reward/RewardRenderResult;->NEO_TK:Lcom/kwad/components/ad/reward/RewardRenderResult;

    .line 188
    .line 189
    invoke-virtual {p5, p1}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/RewardRenderResult;)V

    .line 190
    .line 191
    .line 192
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/n;->hI()V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_6
    sget-object p2, Lcom/kwad/components/ad/reward/RewardRenderResult;->DEFAULT:Lcom/kwad/components/ad/reward/RewardRenderResult;

    .line 197
    .line 198
    invoke-virtual {p5, p2}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/RewardRenderResult;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, p1, p4}, Lcom/kwad/components/ad/reward/n;->a(Lcom/kwad/components/core/n/b;Lcom/kwad/components/ad/reward/model/c;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method private a(Lcom/kwad/components/ad/reward/e/g;)I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/kwad/components/ad/reward/n;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lcom/kwad/components/ad/reward/e/g;->getPriority()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private a(Lcom/kwad/components/ad/reward/model/c;)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/model/c;->da()Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 53
    iget-boolean p1, p1, Lcom/kwad/components/ad/reward/model/c;->jM:Z

    if-nez p1, :cond_0

    .line 54
    invoke-direct {p0, p0}, Lcom/kwad/components/ad/reward/n;->a(Lcom/kwad/components/ad/reward/n;)V

    .line 55
    :cond_0
    invoke-static {v0}, Lcom/kwad/components/ad/reward/g;->g(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    new-instance p1, Lcom/kwad/components/ad/reward/presenter/g;

    invoke-direct {p1}, Lcom/kwad/components/ad/reward/presenter/g;-><init>()V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 57
    :cond_1
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aU(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/kwad/sdk/utils/as;->VM()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    new-instance p1, Lcom/kwad/components/ad/reward/presenter/h/a;

    invoke-direct {p1}, Lcom/kwad/components/ad/reward/presenter/h/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 59
    :cond_2
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dN(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 60
    new-instance p1, Lcom/kwad/components/ad/reward/presenter/f/h;

    invoke-direct {p1}, Lcom/kwad/components/ad/reward/presenter/f/h;-><init>()V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 61
    :cond_3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->eJ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 62
    invoke-static {}, Lcom/kwad/sdk/utils/as;->isOrientationPortrait()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 63
    new-instance p1, Lcom/kwad/components/ad/reward/presenter/e/a;

    invoke-direct {p1}, Lcom/kwad/components/ad/reward/presenter/e/a;-><init>()V

    iput-object p1, p0, Lcom/kwad/components/ad/reward/n;->ko:Lcom/kwad/components/ad/reward/presenter/e/a;

    .line 64
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_4
    return-void
.end method

.method private a(Lcom/kwad/components/ad/reward/n;)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/n;->kq:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/a;

    iget-object v1, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    invoke-direct {v0, v1}, Lcom/kwad/components/ad/reward/presenter/a;-><init>(Lcom/kwad/components/ad/reward/g;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 6
    iput-boolean v1, p0, Lcom/kwad/components/ad/reward/n;->kq:Z

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/n;Lcom/kwad/components/ad/reward/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/reward/n;->a(Lcom/kwad/components/ad/reward/n;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/n;Lcom/kwad/components/core/n/b;Lcom/kwad/components/ad/reward/model/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/reward/n;->a(Lcom/kwad/components/core/n/b;Lcom/kwad/components/ad/reward/model/c;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/n/b;Lcom/kwad/components/ad/reward/model/c;)V
    .locals 5

    .line 7
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n;->mModel:Lcom/kwad/components/ad/reward/model/c;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/e/e/g;->qK()Lcom/kwad/components/core/e/e/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/kwad/components/core/e/e/g;->a(Lcom/kwad/components/core/e/e/f;)V

    .line 9
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n;->mModel:Lcom/kwad/components/ad/reward/model/c;

    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/model/c;->da()Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->mModel:Lcom/kwad/components/ad/reward/model/c;

    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/model/c;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    .line 11
    iget-boolean v1, p2, Lcom/kwad/components/ad/reward/model/c;->jM:Z

    if-eqz v1, :cond_1

    .line 12
    invoke-direct {p0, p0}, Lcom/kwad/components/ad/reward/n;->a(Lcom/kwad/components/ad/reward/n;)V

    .line 13
    :cond_1
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/v;

    invoke-direct {v1}, Lcom/kwad/components/ad/reward/presenter/v;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 14
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aV(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/d;

    invoke-direct {v1}, Lcom/kwad/components/ad/reward/presenter/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 16
    :cond_2
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/m;

    invoke-direct {v1}, Lcom/kwad/components/ad/reward/presenter/m;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 17
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/h;

    invoke-direct {v1}, Lcom/kwad/components/ad/reward/presenter/h;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 18
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/platdetail/c;

    invoke-direct {v1}, Lcom/kwad/components/ad/reward/presenter/platdetail/c;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 19
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/platdetail/a/e;

    invoke-direct {v1}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/e;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 20
    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/model/c;->iF()Z

    move-result v1

    .line 21
    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/model/c;->iG()Z

    move-result v3

    .line 22
    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/model/c;->db()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/kwad/sdk/utils/as;->isOrientationPortrait()Z

    move-result p2

    if-nez p2, :cond_3

    move p2, v2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-nez v1, :cond_4

    if-nez v3, :cond_4

    if-nez p2, :cond_4

    .line 23
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/platdetail/actionbar/c;

    invoke-direct {p2}, Lcom/kwad/components/ad/reward/presenter/platdetail/actionbar/c;-><init>()V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 24
    :cond_4
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/n;

    invoke-direct {p2}, Lcom/kwad/components/ad/reward/presenter/n;-><init>()V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 25
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/c;

    invoke-direct {p2, p1}, Lcom/kwad/components/ad/reward/presenter/c;-><init>(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 26
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/d/b;

    invoke-direct {p2, v0, v2}, Lcom/kwad/components/ad/reward/presenter/d/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 27
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/c/a;

    invoke-direct {p2}, Lcom/kwad/components/ad/reward/presenter/c/a;-><init>()V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 28
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/u;

    invoke-direct {p2}, Lcom/kwad/components/ad/reward/presenter/u;-><init>()V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 29
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/e;

    iget-object v1, p0, Lcom/kwad/components/ad/reward/n;->mRootContainer:Landroid/view/ViewGroup;

    invoke-direct {p2, p1, v1}, Lcom/kwad/components/ad/reward/presenter/e;-><init>(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 30
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/r;

    invoke-direct {p2, v0}, Lcom/kwad/components/ad/reward/presenter/r;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object p2, p0, Lcom/kwad/components/ad/reward/n;->kk:Lcom/kwad/components/ad/reward/presenter/r;

    .line 31
    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 32
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/l;

    invoke-direct {p2}, Lcom/kwad/components/ad/reward/presenter/l;-><init>()V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 33
    iget-object p2, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    iget-boolean v1, p2, Lcom/kwad/components/ad/reward/g;->sO:Z

    if-eqz v1, :cond_5

    iget-object p2, p2, Lcom/kwad/components/core/n/a;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    .line 35
    invoke-static {p2, v1}, Lcom/kwad/components/ad/reward/d/a;->b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 36
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/a/a;

    invoke-direct {p2}, Lcom/kwad/components/ad/reward/presenter/a/a;-><init>()V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 37
    :cond_5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->eb(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 38
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/t;

    invoke-direct {p2}, Lcom/kwad/components/ad/reward/presenter/t;-><init>()V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 39
    :cond_6
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->bj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 40
    new-instance p2, Lcom/kwad/components/ad/reward/presenter/platdetail/b;

    invoke-direct {p2}, Lcom/kwad/components/ad/reward/presenter/platdetail/b;-><init>()V

    invoke-virtual {p0, p2, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 41
    :cond_7
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->cY(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 42
    new-instance p1, Lcom/kwad/components/ad/reward/presenter/b/c;

    invoke-direct {p1}, Lcom/kwad/components/ad/reward/presenter/b/c;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 43
    new-instance p1, Lcom/kwad/components/ad/reward/presenter/b/a;

    invoke-direct {p1}, Lcom/kwad/components/ad/reward/presenter/b/a;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 44
    new-instance p1, Lcom/kwad/components/ad/reward/presenter/b/b;

    invoke-direct {p1}, Lcom/kwad/components/ad/reward/presenter/b/b;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 45
    new-instance p1, Lcom/kwad/components/ad/reward/presenter/k;

    invoke-direct {p1}, Lcom/kwad/components/ad/reward/presenter/k;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 46
    :cond_8
    new-instance p1, Lcom/kwad/components/ad/reward/presenter/j;

    invoke-direct {p1}, Lcom/kwad/components/ad/reward/presenter/j;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 47
    :try_start_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    iget-wide v0, p1, Lcom/kwad/components/ad/reward/g;->mStartRenderTime:J

    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-lez p2, :cond_9

    .line 48
    iget-object p1, p1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    move-result p1

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p2, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    iget-wide v3, p2, Lcom/kwad/components/ad/reward/g;->mStartRenderTime:J

    sub-long/2addr v0, v3

    .line 50
    invoke-static {p1, v2, v0, v1}, Lcom/kwad/sdk/commercial/convert/d;->b(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_9
    :goto_1
    return-void

    .line 51
    :goto_2
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;->neoPageType:I

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/reward/n;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/reward/n;)Landroid/content/Context;
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

.method public static synthetic d(Lcom/kwad/components/ad/reward/n;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/n;->do()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private dj()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/f/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/reward/presenter/f/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n;->km:Lcom/kwad/components/ad/reward/presenter/f/b;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private dk()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/f/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/reward/presenter/f/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n;->kp:Lcom/kwad/components/ad/reward/presenter/f/f;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private do()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->kl:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->mRootContainer:Landroid/view/ViewGroup;

    .line 6
    .line 7
    sget v1, Lcom/kwad/sdk/R$id;->ksad_reward_play_layout:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/FrameLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n;->kl:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->kl:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    return-object v0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/reward/n;)Lcom/kwad/components/core/n/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/n;->kj:Lcom/kwad/components/core/n/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/reward/n;)Lcom/kwad/components/ad/reward/model/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/n;->mModel:Lcom/kwad/components/ad/reward/model/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private hI()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/f/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/reward/presenter/f/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n;->kp:Lcom/kwad/components/ad/reward/presenter/f/f;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/ad/reward/n$a;)V
    .locals 0
    .param p1    # Lcom/kwad/components/ad/reward/n$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    iput-object p1, p0, Lcom/kwad/components/ad/reward/n;->uk:Lcom/kwad/components/ad/reward/n$a;

    return-void
.end method

.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/reward/presenter/b;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kwad/components/ad/reward/g;->b(Lcom/kwad/components/ad/reward/e/g;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/kwad/components/ad/reward/c/a;->ih()Lcom/kwad/components/ad/reward/c/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/c/a;->setCallerContext(Lcom/kwad/components/ad/reward/g;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/ad/reward/e/g;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/reward/n;->a(Lcom/kwad/components/ad/reward/e/g;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->D(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->E(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/g;->gP()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hJ()Lcom/kwad/components/ad/reward/page/BackPressHandleResult;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->kk:Lcom/kwad/components/ad/reward/presenter/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/presenter/r;->onBackPressed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/kwad/components/ad/reward/page/BackPressHandleResult;->HANDLED:Lcom/kwad/components/ad/reward/page/BackPressHandleResult;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->ko:Lcom/kwad/components/ad/reward/presenter/e/a;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/presenter/e/a;->hJ()Lcom/kwad/components/ad/reward/page/BackPressHandleResult;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/kwad/components/ad/reward/page/BackPressHandleResult;->HANDLED:Lcom/kwad/components/ad/reward/page/BackPressHandleResult;

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->km:Lcom/kwad/components/ad/reward/presenter/f/b;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/presenter/f/b;->hJ()Lcom/kwad/components/ad/reward/page/BackPressHandleResult;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->kp:Lcom/kwad/components/ad/reward/presenter/f/f;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/presenter/f/f;->hJ()Lcom/kwad/components/ad/reward/page/BackPressHandleResult;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_3
    sget-object v0, Lcom/kwad/components/ad/reward/page/BackPressHandleResult;->NOT_HANDLED:Lcom/kwad/components/ad/reward/page/BackPressHandleResult;

    .line 46
    .line 47
    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->mRootContainer:Landroid/view/ViewGroup;

    .line 5
    .line 6
    sget v1, Lcom/kwad/sdk/R$id;->ksad_reward_play_layout:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n;->kl:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n;->kj:Lcom/kwad/components/core/n/b;

    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/kwad/components/ad/reward/n;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/e/c;->b(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onUnbind()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kwad/components/ad/reward/g;->c(Lcom/kwad/components/ad/reward/e/g;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->uk:Lcom/kwad/components/ad/reward/n$a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/kwad/components/ad/reward/n$a;->onUnbind()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/e/e/g;->qK()Lcom/kwad/components/core/e/e/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/e/e/g;->b(Lcom/kwad/components/core/e/e/f;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/kwad/components/ad/reward/c/a;->ih()Lcom/kwad/components/ad/reward/c/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/c/a;->reset()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/g;->gQ()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n;->uj:Lcom/kwad/components/ad/reward/g;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->E(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
