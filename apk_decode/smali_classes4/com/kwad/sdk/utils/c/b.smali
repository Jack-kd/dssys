.class public final Lcom/kwad/sdk/utils/c/b;
.super Lcom/kwad/sdk/utils/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/utils/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/utils/c/a<",
        "Lcom/kwad/sdk/core/request/model/b;",
        "Lcom/kwad/sdk/utils/c/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "ksad_device_info"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/c/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static a(Lcom/kwad/sdk/utils/c/b$a;)Lcom/kwad/sdk/core/request/model/b;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/sdk/utils/c/b$a;->bsM:Z

    iget p0, p0, Lcom/kwad/sdk/utils/c/b$a;->aXf:I

    invoke-static {v0, p0}, Lcom/kwad/sdk/core/request/model/b;->h(ZI)Lcom/kwad/sdk/core/request/model/b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/kwad/sdk/core/request/model/b;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Lcom/kwad/sdk/core/request/model/b;Lcom/kwad/sdk/utils/c/b$a;)V
    .locals 1

    .line 3
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/utils/c/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-boolean v0, p2, Lcom/kwad/sdk/utils/c/b$a;->bsM:Z

    iget p2, p2, Lcom/kwad/sdk/utils/c/b$a;->aXf:I

    invoke-virtual {p1, v0, p2}, Lcom/kwad/sdk/core/request/model/b;->i(ZI)V

    return-void
.end method

.method private static iB(Ljava/lang/String;)Lcom/kwad/sdk/core/request/model/b;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/kwad/sdk/core/request/model/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/request/model/b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/core/request/model/b;

    .line 2
    .line 3
    check-cast p2, Lcom/kwad/sdk/utils/c/b$a;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/utils/c/b;->a(Lcom/kwad/sdk/core/request/model/b;Lcom/kwad/sdk/utils/c/b$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final synthetic dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/core/request/model/b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/utils/c/b;->a(Lcom/kwad/sdk/core/request/model/b;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final synthetic iA(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/kwad/sdk/utils/c/b;->iB(Ljava/lang/String;)Lcom/kwad/sdk/core/request/model/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/utils/c/b$a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/utils/c/b;->a(Lcom/kwad/sdk/utils/c/b$a;)Lcom/kwad/sdk/core/request/model/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
