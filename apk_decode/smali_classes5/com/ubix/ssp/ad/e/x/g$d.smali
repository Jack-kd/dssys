.class Lcom/ubix/ssp/ad/e/x/g$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/ubix/ssp/ad/e/x/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/ubix/ssp/ad/e/x/a;

.field final synthetic d:Lcom/ubix/ssp/ad/e/x/g;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/x/g;Ljava/lang/String;Ljava/util/HashMap;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/x/g$d;->d:Lcom/ubix/ssp/ad/e/x/g;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/x/g$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/x/g$d;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/x/g$d;->c:Lcom/ubix/ssp/ad/e/x/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/ubix/ssp/ad/e/x/c;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/x/c;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/x/g$d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/x/c;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/ubix/ssp/ad/e/x/d;

    move-result-object v0

    iget v1, v0, Lcom/ubix/ssp/ad/e/x/d;->c:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$d;->c:Lcom/ubix/ssp/ad/e/x/a;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/x/a;->d(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$d;->c:Lcom/ubix/ssp/ad/e/x/a;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/x/a;->a(Lcom/ubix/ssp/ad/e/x/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/x/g$d;->c:Lcom/ubix/ssp/ad/e/x/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/x/a;->a(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void
.end method
