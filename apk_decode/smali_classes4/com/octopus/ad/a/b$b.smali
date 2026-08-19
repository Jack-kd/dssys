.class public Lcom/octopus/ad/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/a/b$b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/octopus/ad/a/g$i;

.field private e:Lcom/octopus/ad/a/g$g;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:J

.field private n:J

.field private o:Z

.field private p:Lcom/octopus/ad/model/ShakeValue;

.field private q:Lcom/octopus/ad/a/f$a;

.field private r:Lcom/octopus/ad/a/f$c;

.field private s:Lcom/octopus/ad/a/f$b;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/octopus/ad/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/a/b$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/a/b$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/a/b$b;->l:I

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/octopus/ad/a/b$b;->m:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/a/f$a;)Lcom/octopus/ad/a/f$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->q:Lcom/octopus/ad/a/f$a;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/a/f$b;)Lcom/octopus/ad/a/f$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->s:Lcom/octopus/ad/a/f$b;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/a/f$c;)Lcom/octopus/ad/a/f$c;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->r:Lcom/octopus/ad/a/f$c;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/a/g$g;)Lcom/octopus/ad/a/g$g;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->e:Lcom/octopus/ad/a/g$g;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/a/g$i;)Lcom/octopus/ad/a/g$i;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->d:Lcom/octopus/ad/a/g$i;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;Lcom/octopus/ad/model/ShakeValue;)Lcom/octopus/ad/model/ShakeValue;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->p:Lcom/octopus/ad/model/ShakeValue;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    :try_start_0
    const-string v1, "version"

    iget-object v2, p0, Lcom/octopus/ad/a/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v1, "soVersion"

    iget-object v2, p0, Lcom/octopus/ad/a/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "groupVersion"

    iget-object v2, p0, Lcom/octopus/ad/a/b$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string v1, "srcType"

    iget-object v2, p0, Lcom/octopus/ad/a/b$b;->d:Lcom/octopus/ad/a/g$i;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v1, "reqType"

    iget-object v2, p0, Lcom/octopus/ad/a/b$b;->e:Lcom/octopus/ad/a/g$g;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "timeStamp"

    iget-wide v2, p0, Lcom/octopus/ad/a/b$b;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    const-string v1, "appid"

    iget-object v2, p0, Lcom/octopus/ad/a/b$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "reqid"

    iget-object v2, p0, Lcom/octopus/ad/a/b$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v1, "retryReq"

    iget v2, p0, Lcom/octopus/ad/a/b$b;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/octopus/ad/a/b$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v1, "appName"

    iget-object v2, p0, Lcom/octopus/ad/a/b$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/octopus/ad/a/b$b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "appInstallTime"

    iget-wide v2, p0, Lcom/octopus/ad/a/b$b;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    const-string v1, "appUpdateTime"

    iget-wide v2, p0, Lcom/octopus/ad/a/b$b;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    const-string v1, "isCanShake"

    iget-boolean v2, p0, Lcom/octopus/ad/a/b$b;->o:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    iget-object v1, p0, Lcom/octopus/ad/a/b$b;->p:Lcom/octopus/ad/model/ShakeValue;

    if-eqz v1, :cond_0

    .line 29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    const-string v2, "acceleration"

    iget-object v3, p0, Lcom/octopus/ad/a/b$b;->p:Lcom/octopus/ad/model/ShakeValue;

    invoke-virtual {v3}, Lcom/octopus/ad/model/ShakeValue;->getAcceleration()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 31
    const-string v2, "angle"

    iget-object v3, p0, Lcom/octopus/ad/a/b$b;->p:Lcom/octopus/ad/model/ShakeValue;

    invoke-virtual {v3}, Lcom/octopus/ad/model/ShakeValue;->getAngle()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 32
    const-string v2, "time"

    iget-object v3, p0, Lcom/octopus/ad/a/b$b;->p:Lcom/octopus/ad/model/ShakeValue;

    invoke-virtual {v3}, Lcom/octopus/ad/model/ShakeValue;->getTime()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    const-string v2, "shakeValue"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 34
    :cond_0
    :goto_0
    invoke-static {}, Lcom/octopus/ad/Octopus;->getUserProfile()Lcom/octopus/ad/model/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 35
    const-string v2, "userProfile"

    invoke-virtual {v1}, Lcom/octopus/ad/model/UserProfile;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/a/b$b;->q:Lcom/octopus/ad/a/f$a;

    if-eqz v1, :cond_2

    .line 37
    const-string v2, "devInfo"

    invoke-virtual {v1}, Lcom/octopus/ad/a/f$a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/a/b$b;->r:Lcom/octopus/ad/a/f$c;

    if-eqz v1, :cond_3

    .line 39
    const-string v2, "envInfo"

    invoke-virtual {v1}, Lcom/octopus/ad/a/f$c;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/octopus/ad/a/b$b;->s:Lcom/octopus/ad/a/f$b;

    if-eqz v1, :cond_4

    .line 41
    const-string v2, "locInfo"

    invoke-virtual {v1}, Lcom/octopus/ad/a/f$b;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/octopus/ad/a/b$b;->t:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 43
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 44
    :goto_1
    iget-object v3, p0, Lcom/octopus/ad/a/b$b;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 45
    iget-object v3, p0, Lcom/octopus/ad/a/b$b;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/a/b$a;

    invoke-virtual {v3}, Lcom/octopus/ad/a/b$a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    :cond_5
    const-string v2, "adReqInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 48
    :goto_2
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->t:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/b$b;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/octopus/ad/a/b$b;->o:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/a/b$b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/a/b$b;->f:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/octopus/ad/a/b$b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/a/b$b;->n:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->j:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic e(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic f(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic g(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic h(Lcom/octopus/ad/a/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/b$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/a/b$b;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
