.class Lcom/ubix/ssp/ad/e/a0/f$l;
.super Lcom/ubix/ssp/ad/e/x/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/d/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/d/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$l;->b:Lcom/ubix/ssp/ad/d/a;

    iput p2, p0, Lcom/ubix/ssp/ad/e/a0/f$l;->c:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/x/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/a0/f$l;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    .line 2
    const-string v0, "data"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testUrl-onResponse:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "dstlink"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "clickid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v3

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/a0/f$l;->b:Lcom/ubix/ssp/ad/d/a;

    iget v8, p0, Lcom/ubix/ssp/ad/e/a0/f$l;->c:I

    invoke-interface/range {v3 .. v8}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ubix/ssp/ad/d/a;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchSDK onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/x/d;->e:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void
.end method
