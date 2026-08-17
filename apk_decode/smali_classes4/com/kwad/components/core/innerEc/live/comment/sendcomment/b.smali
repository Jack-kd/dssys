.class public final Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;
    }
.end annotation


# instance fields
.field private final TQ:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;->TQ:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/base/b;->rv()Lcom/kwad/components/core/innerEc/live/base/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;->TQ:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/i/e;->aM(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/base/b;->aD(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;->TQ:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/i/e;->aN(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/base/b;->aC(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/live/base/b;->aF(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/i/e;->getKwaiUserId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/innerEc/live/base/b;->aE(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$1;

    .line 38
    .line 39
    invoke-direct {v0, p0, p1}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$1;-><init>(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;Lcom/kwad/components/core/innerEc/live/base/b;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;

    .line 43
    .line 44
    invoke-direct {v1, p0, p2, p1}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;-><init>(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;Lcom/kwad/components/core/innerEc/live/base/b;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/network/l;->request(Lcom/kwad/sdk/core/network/g;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
