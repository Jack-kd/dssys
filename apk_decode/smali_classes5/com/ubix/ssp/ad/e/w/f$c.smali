.class Lcom/ubix/ssp/ad/e/w/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/w/f;->c(Ljava/util/HashMap;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ubix/ssp/ad/e/w/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/w/f;Ljava/util/HashMap;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/f$c;->d:Lcom/ubix/ssp/ad/e/w/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/w/f$c;->a:Ljava/util/HashMap;

    iput p3, p0, Lcom/ubix/ssp/ad/e/w/f$c;->b:I

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/w/f$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/f$c;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ubix/ssp/ad/e/w/j;->h:Lcom/ubix/ssp/ad/e/w/j;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/w/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ubix/ssp/ad/e/w/f$c;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EVENT_STATUS_CODE"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/f$c;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/f$c;->c:Ljava/lang/String;

    const-string v3, "EVENT_STATUS_MSG"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/f$c;->d:Lcom/ubix/ssp/ad/e/w/f;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/f$c;->a:Ljava/util/HashMap;

    invoke-static {v0, v2, v1}, Lcom/ubix/ssp/ad/e/w/f;->a(Lcom/ubix/ssp/ad/e/w/f;Lcom/ubix/ssp/ad/e/w/j;Ljava/util/Map;)V

    return-void
.end method
