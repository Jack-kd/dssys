.class Lcom/ubix/ssp/ad/e/w/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/w/f;->a(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/ubix/ssp/ad/e/w/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/w/f;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/f$a;->b:Lcom/ubix/ssp/ad/e/w/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/w/f$a;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/f$a;->a:Ljava/util/HashMap;

    const-string v1, "EVENT_STATUS_CODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/f$a;->a:Ljava/util/HashMap;

    const-string v1, "EVENT_STATUS_MSG"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/f$a;->b:Lcom/ubix/ssp/ad/e/w/f;

    sget-object v1, Lcom/ubix/ssp/ad/e/w/j;->f:Lcom/ubix/ssp/ad/e/w/j;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/w/f$a;->a:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/w/f;->a(Lcom/ubix/ssp/ad/e/w/f;Lcom/ubix/ssp/ad/e/w/j;Ljava/util/Map;)V

    return-void
.end method
