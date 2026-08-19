.class final Lcom/kwad/sdk/o$9;
.super Lcom/kwad/sdk/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/o;->e(Lcom/kwad/sdk/core/response/model/SdkConfigData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/g/b<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aGI:Lcom/kwad/sdk/o;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/o$9;->aGI:Lcom/kwad/sdk/o;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/g/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static g(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "useContextClassLoader"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/o$9;->g(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
