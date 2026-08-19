.class Lcom/ubix/ssp/ad/e/a0/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/d;

.field final synthetic b:Ljava/util/Timer;

.field final synthetic c:Lcom/ubix/ssp/ad/e/y/a/a$b;

.field final synthetic d:Lcom/ubix/ssp/ad/e/a0/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/a0/d;Ljava/util/Timer;Lcom/ubix/ssp/ad/e/y/a/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$a;->d:Lcom/ubix/ssp/ad/e/a0/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/a0/f$a;->b:Ljava/util/Timer;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/a0/f$a;->c:Lcom/ubix/ssp/ad/e/y/a/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "new deeplink \u76ee\u6807app\u5df2\u5b89\u88c5 "

    const-string v1, "\u8c03\u8d77\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$a;->d:Lcom/ubix/ssp/ad/e/a0/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ubix/ssp/ad/e/a0/f;->j:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/d;->c()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d$d;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$a;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$a;->c:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/f$a;->d:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/f;->b(Lcom/ubix/ssp/ad/e/a0/f;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x193

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
