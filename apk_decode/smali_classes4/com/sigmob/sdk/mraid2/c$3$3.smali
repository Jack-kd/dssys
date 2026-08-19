.class Lcom/sigmob/sdk/mraid2/c$3$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid2/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/c$3;->f(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/c$3;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/c$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c$3$3;->a:Lcom/sigmob/sdk/mraid2/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3$3;->a:Lcom/sigmob/sdk/mraid2/c$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->c(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3$3;->a:Lcom/sigmob/sdk/mraid2/c$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->c(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
