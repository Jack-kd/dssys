.class public final Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private adn:Ljava/lang/String;

.field private ado:Ljava/lang/String;

.field private adp:Lcom/kwad/sdk/core/response/model/AdResultData;

.field private adr:Z

.field private ads:I

.field private adt:Z

.field private adu:Ljava/lang/String;

.field private adv:Z

.field private adw:Lcom/kwad/components/core/innerEc/a/a;

.field private adx:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->ads:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final aQ(Z)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adx:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final aR(Z)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adr:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final aS(Z)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adt:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final aY(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method public final aY(Ljava/lang/String;)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adn:Ljava/lang/String;

    return-object p0
.end method

.method public final aZ(Ljava/lang/String;)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->ado:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final ba(Ljava/lang/String;)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adu:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bv(I)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->ads:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final q(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adp:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 2
    .line 3
    return-object p0
.end method

.method public final ua()Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;
    .locals 10

    .line 1
    iget-object v3, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adp:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 2
    .line 3
    if-eqz v3, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adn:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->ado:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v4, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adx:Z

    .line 12
    .line 13
    iget-boolean v5, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adr:Z

    .line 14
    .line 15
    iget-boolean v6, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adt:Z

    .line 16
    .line 17
    iget v7, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->ads:I

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdResultData;ZZZIB)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adn:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->ado:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 31
    .line 32
    iget-boolean v5, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adx:Z

    .line 33
    .line 34
    iget-boolean v6, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adr:Z

    .line 35
    .line 36
    iget-boolean v7, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adt:Z

    .line 37
    .line 38
    iget v8, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->ads:I

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    invoke-direct/range {v1 .. v9}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;ZZZIB)V

    .line 42
    .line 43
    .line 44
    move-object v0, v1

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adu:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->a(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adv:Z

    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->a(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;Z)Z

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->adw:Lcom/kwad/components/core/innerEc/a/a;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->a(Lcom/kwad/components/core/innerEc/a/a;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-object v0
.end method
