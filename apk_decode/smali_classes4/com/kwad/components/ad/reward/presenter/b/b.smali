.class public final Lcom/kwad/components/ad/reward/presenter/b/b;
.super Lcom/kwad/components/ad/reward/presenter/b;
.source "SourceFile"


# instance fields
.field private js:Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;

.field private ky:J

.field private final mNetworking:Lcom/kwad/sdk/core/network/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/core/network/l<",
            "Lcom/kwad/components/core/liveEnd/a;",
            "Lcom/kwad/components/ad/reward/model/AdLiveEndResultData;",
            ">;"
        }
    .end annotation
.end field

.field private ta:Lcom/kwad/components/ad/reward/n/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final wP:Lcom/kwad/components/core/video/m;

.field private yh:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/b/b$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/b/b$1;-><init>(Lcom/kwad/components/ad/reward/presenter/b/b;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->mNetworking:Lcom/kwad/sdk/core/network/l;

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/b/b$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/b/b$2;-><init>(Lcom/kwad/components/ad/reward/presenter/b/b;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->wP:Lcom/kwad/components/core/video/m;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/b/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->ky:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/b/b;I)Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/b/b;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->yh:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/b/b;Lcom/kwad/components/ad/reward/n/p;)Lcom/kwad/components/ad/reward/n/p;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->ta:Lcom/kwad/components/ad/reward/n/p;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/b/b;)Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->js:Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/reward/presenter/b/b;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/reward/presenter/b/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b/b;->jl()V

    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/ad/reward/presenter/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b/b;->jm()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/kwad/components/ad/reward/presenter/b/b;)Lcom/kwad/components/ad/reward/n/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->ta:Lcom/kwad/components/ad/reward/n/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/reward/presenter/b/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/reward/presenter/b/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/reward/presenter/b/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/reward/presenter/b/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/ad/reward/presenter/b/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->ky:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private iU()V
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x18

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/adlog/c/b;->el(I)Lcom/kwad/sdk/core/adlog/c/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->b(Lcom/kwad/sdk/core/adlog/a$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-static {v3, v1, v2, v0}, Lcom/kwad/components/ad/reward/j/b;->a(ZLcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/b;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic j(Lcom/kwad/components/ad/reward/presenter/b/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private jl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->js:Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->mNetworking:Lcom/kwad/sdk/core/network/l;

    .line 7
    .line 8
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/b/b$3;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/reward/presenter/b/b$3;-><init>(Lcom/kwad/components/ad/reward/presenter/b/b;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/network/l;->request(Lcom/kwad/sdk/core/network/g;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private jm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->yh:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic k(Lcom/kwad/components/ad/reward/presenter/b/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/kwad/components/ad/reward/presenter/b/b;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->yh:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/kwad/components/ad/reward/presenter/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b/b;->iU()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/kwad/components/ad/reward/presenter/b/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/reward/presenter/b;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/m/e;->ls()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->wP:Lcom/kwad/components/core/video/m;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/m/e;->a(Lcom/kwad/components/core/video/m;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bn(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const-class v1, Lcom/kwad/components/core/offline/a/c/a;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/kwad/components/core/offline/a/c/a;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-interface {v1, v0}, Lcom/kwad/components/core/offline/a/c/a;->getAdLiveEndRequest(Ljava/lang/String;)Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->js:Lcom/kwad/components/offline/api/core/adlive/IAdLiveEndRequest;

    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->mNetworking:Lcom/kwad/sdk/core/network/l;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kwad/sdk/core/network/l;->cancel()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/m/e;->ls()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b/b;->wP:Lcom/kwad/components/core/video/m;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/m/e;->b(Lcom/kwad/components/core/video/m;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
