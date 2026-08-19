.class Lcom/sigmob/sdk/mraid2/s$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/ap$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/s$2;->a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/c;

.field final synthetic b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/sigmob/sdk/mraid2/s$2;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/s$2;Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->h:Lcom/sigmob/sdk/mraid2/s$2;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->a:Lcom/sigmob/sdk/mraid2/c;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p4, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->d:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->f:Z

    iput-object p8, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->h:Lcom/sigmob/sdk/mraid2/s$2;

    iget-object v1, v0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->a:Lcom/sigmob/sdk/mraid2/c;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->d:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->e:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->f:Z

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->h:Lcom/sigmob/sdk/mraid2/s$2;

    iget-object v0, p1, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->a:Lcom/sigmob/sdk/mraid2/c;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->d:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->e:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/sigmob/sdk/mraid2/s$2$1;->f:Z

    invoke-static/range {v0 .. v7}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method
