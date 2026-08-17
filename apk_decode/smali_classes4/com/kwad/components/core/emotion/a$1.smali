.class final Lcom/kwad/components/core/emotion/a$1;
.super Lcom/kwad/sdk/core/network/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/emotion/a;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/l<",
        "Lcom/kwad/components/core/emotion/b;",
        "Lcom/kwad/components/core/emotion/EmotionPackageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic RT:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/emotion/a$1;->RT:Landroid/app/Application;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private at(Ljava/lang/String;)Lcom/kwad/components/core/emotion/EmotionPackageResponse;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/core/emotion/EmotionPackageResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/emotion/EmotionPackageResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/emotion/EmotionPackageResponse;->parseJson(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/kwad/components/core/emotion/a$1;->RT:Landroid/app/Application;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kwad/components/core/emotion/EmotionPackageResponse;->getFullJson()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p1, v1}, Lcom/kwad/components/core/innerEc/f;->b(Landroid/app/Application;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private static qO()Lcom/kwad/components/core/emotion/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/core/emotion/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/emotion/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final synthetic createRequest()Lcom/kwad/sdk/core/network/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/components/core/emotion/a$1;->qO()Lcom/kwad/components/core/emotion/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final synthetic parseData(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/BaseResultData;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/core/emotion/a$1;->at(Ljava/lang/String;)Lcom/kwad/components/core/emotion/EmotionPackageResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
