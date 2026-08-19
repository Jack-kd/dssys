.class public final Lcom/kwad/components/core/innerEc/live/b/c/j;
.super Lcom/kwad/components/core/innerEc/live/b/a/a;
.source "SourceFile"


# instance fields
.field private TQ:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/j;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/j;->TQ:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method private sB()V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/j$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/j$1;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/j;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/j$2;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/kwad/components/core/innerEc/live/b/c/j$2;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/j;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/network/l;->request(Lcom/kwad/sdk/core/network/g;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final ay()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/j;->TQ:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 9
    .line 10
    return-void
.end method

.method public final onUnbind()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/j;->sB()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
