.class public final Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/page/AdWebViewActivityProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;
    }
.end annotation


# instance fields
.field private adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private adn:Ljava/lang/String;

.field private ado:Ljava/lang/String;

.field private adp:Lcom/kwad/sdk/core/response/model/AdResultData;

.field private adq:Z

.field private adr:Z

.field private ads:I

.field private adt:Z

.field private adu:Ljava/lang/String;

.field private adv:Z

.field private adw:Lcom/kwad/components/core/innerEc/a/a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdResultData;ZZZI)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 6
    iput-object p3, v0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adp:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 7
    invoke-static {p3}, Lcom/kwad/sdk/core/response/helper/c;->r(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    iput-object p1, v0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdResultData;ZZZIB)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdResultData;ZZZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;ZZZI)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 4
    iput-object p3, v0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;ZZZIB)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;ZZZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adn:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->ado:Ljava/lang/String;

    .line 11
    iput-boolean p3, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adq:Z

    .line 12
    iput-boolean p4, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adr:Z

    .line 13
    iput-boolean p5, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adt:Z

    .line 14
    iput p6, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->ads:I

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->ado:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adu:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adv:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adu:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adn:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->ads:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adv:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic f(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adr:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adq:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;)Lcom/kwad/sdk/core/response/model/AdResultData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adp:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/a/a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adw:Lcom/kwad/components/core/innerEc/a/a;

    return-void
.end method

.method public final getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final tS()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final tT()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->ado:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final tU()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->ads:I

    .line 2
    .line 3
    return v0
.end method

.method public final tV()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adq:Z

    .line 2
    .line 3
    return v0
.end method

.method public final tW()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adt:Z

    .line 2
    .line 3
    return v0
.end method

.method public final tX()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adr:Z

    .line 2
    .line 3
    return v0
.end method

.method public final tY()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final tZ()Lcom/kwad/components/core/innerEc/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->adw:Lcom/kwad/components/core/innerEc/a/a;

    .line 2
    .line 3
    return-object v0
.end method
