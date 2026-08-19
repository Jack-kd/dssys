.class public Lcom/octopus/ad/a/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/a/f$c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/octopus/ad/a/g$d;

.field private b:Lcom/octopus/ad/a/g$c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/a/f$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/a/f$c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/a/f$c;Lcom/octopus/ad/a/g$c;)Lcom/octopus/ad/a/g$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/f$c;->b:Lcom/octopus/ad/a/g$c;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/f$c;Lcom/octopus/ad/a/g$d;)Lcom/octopus/ad/a/g$d;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/f$c;->a:Lcom/octopus/ad/a/g$d;

    return-object p1
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string v1, "net"

    iget-object v2, p0, Lcom/octopus/ad/a/f$c;->a:Lcom/octopus/ad/a/g$d;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "isp"

    iget-object v2, p0, Lcom/octopus/ad/a/f$c;->b:Lcom/octopus/ad/a/g$c;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
