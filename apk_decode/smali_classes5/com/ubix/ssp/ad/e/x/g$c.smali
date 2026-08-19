.class Lcom/ubix/ssp/ad/e/x/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/x/g;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/ubix/ssp/ad/e/x/a;

.field final synthetic e:Lcom/ubix/ssp/ad/e/x/g;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/x/g;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/x/g$c;->e:Lcom/ubix/ssp/ad/e/x/g;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/x/g$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/x/g$c;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/x/g$c;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/ubix/ssp/ad/e/x/g$c;->d:Lcom/ubix/ssp/ad/e/x/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/ubix/ssp/ad/e/x/c;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/x/c;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$c;->e:Lcom/ubix/ssp/ad/e/x/g;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/x/g$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/x/g$c;->b:Ljava/util/Map;

    invoke-static {v1, v2, v3}, Lcom/ubix/ssp/ad/e/x/g;->a(Lcom/ubix/ssp/ad/e/x/g;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/x/g$c;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/x/c;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/ubix/ssp/ad/e/x/d;

    move-result-object v0

    iget v1, v0, Lcom/ubix/ssp/ad/e/x/d;->c:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$c;->d:Lcom/ubix/ssp/ad/e/x/a;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/x/a;->d(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$c;->d:Lcom/ubix/ssp/ad/e/x/a;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/x/a;->a(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void
.end method
