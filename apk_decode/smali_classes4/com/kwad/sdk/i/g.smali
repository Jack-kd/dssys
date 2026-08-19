.class public final Lcom/kwad/sdk/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Nt:Ljava/lang/String;

.field private aAS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aLM:Lorg/json/JSONObject;

.field private aQZ:Ljava/lang/String;

.field private aRa:Ljava/lang/String;

.field private aWY:Ljava/lang/String;

.field private aWc:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private biw:Lorg/json/JSONObject;

.field private bix:Z

.field private sdkVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RL()Lcom/kwad/sdk/i/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/i/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/i/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final RM()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/i/g;->biw:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final RN()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/i/g;->bix:Z

    .line 2
    .line 3
    return v0
.end method

.method public final RO()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/i/g;->aWc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final RP()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/i/g;->aLM:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final cd(Z)Lcom/kwad/sdk/i/g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/i/g;->bix:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final gP(Ljava/lang/String;)Lcom/kwad/sdk/i/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/i/g;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final gQ(Ljava/lang/String;)Lcom/kwad/sdk/i/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/i/g;->sdkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final gR(Ljava/lang/String;)Lcom/kwad/sdk/i/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/i/g;->aRa:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final gS(Ljava/lang/String;)Lcom/kwad/sdk/i/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/i/g;->Nt:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final gT(Ljava/lang/String;)Lcom/kwad/sdk/i/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/i/g;->aWY:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final gU(Ljava/lang/String;)Lcom/kwad/sdk/i/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/i/g;->aQZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final gV(Ljava/lang/String;)Lcom/kwad/sdk/i/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/i/g;->aWc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/i/g;->aWY:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/i/g;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/i/g;->Nt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/i/g;->aQZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/i/g;->aRa:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/i/g;->aAS:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/i/g;->sdkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Ljava/util/Map;)Lcom/kwad/sdk/i/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwad/sdk/i/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/i/g;->aAS:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final n(Lorg/json/JSONObject;)Lcom/kwad/sdk/i/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/i/g;->biw:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Lorg/json/JSONObject;)Lcom/kwad/sdk/i/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/i/g;->aLM:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method
