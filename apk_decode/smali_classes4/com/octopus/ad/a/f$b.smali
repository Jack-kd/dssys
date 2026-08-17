.class public Lcom/octopus/ad/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/octopus/ad/model/OctLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/a/f$b;->a:Lcom/octopus/ad/model/OctLocation;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/octopus/ad/a/f$b;->a:Lcom/octopus/ad/model/OctLocation;

    invoke-virtual {v2}, Lcom/octopus/ad/model/OctLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/octopus/ad/a/f$b;->a:Lcom/octopus/ad/model/OctLocation;

    invoke-virtual {v2}, Lcom/octopus/ad/model/OctLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 6
    const-string v1, "type"

    iget-object v2, p0, Lcom/octopus/ad/a/f$b;->a:Lcom/octopus/ad/model/OctLocation;

    invoke-virtual {v2}, Lcom/octopus/ad/model/OctLocation;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    const-string v1, "time"

    iget-object v2, p0, Lcom/octopus/ad/a/f$b;->a:Lcom/octopus/ad/model/OctLocation;

    invoke-virtual {v2}, Lcom/octopus/ad/model/OctLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/octopus/ad/model/OctLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/f$b;->a:Lcom/octopus/ad/model/OctLocation;

    return-void
.end method
