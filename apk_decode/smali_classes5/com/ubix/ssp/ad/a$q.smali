.class Lcom/ubix/ssp/ad/a$q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/v/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/b;

.field final synthetic b:Lcom/ubix/ssp/ad/d/l$a;

.field final synthetic c:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$q;->c:Lcom/ubix/ssp/ad/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/a$q;->a:Lcom/ubix/ssp/ad/b;

    iput-object p3, p0, Lcom/ubix/ssp/ad/a$q;->b:Lcom/ubix/ssp/ad/d/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$q;->a:Lcom/ubix/ssp/ad/b;

    iget-object p2, p0, Lcom/ubix/ssp/ad/a$q;->b:Lcom/ubix/ssp/ad/d/l$a;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/b;->a(Lcom/ubix/ssp/ad/d/l$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$q;->c:Lcom/ubix/ssp/ad/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/a;->c(Lcom/ubix/ssp/ad/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 2
    return-void
.end method
