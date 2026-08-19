.class Lcom/ubix/ssp/ad/e/a0/f$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/z/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/d/a;ILjava/lang/String;IIILcom/ubix/ssp/ad/e/a0/f$p;Lcom/ubix/ssp/ad/e/a0/f$q;Lcom/ubix/ssp/ad/e/a0/f$r;Lcom/ubix/ssp/ad/e/a0/f$o;Lcom/ubix/ssp/ad/e/a0/f$s;Lcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/e/a0/f$n;Lcom/ubix/ssp/ad/g/h;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/f$p;

.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:Lcom/ubix/ssp/ad/e/a0/f$n;

.field final synthetic d:Lcom/ubix/ssp/ad/e/a0/f$o;

.field final synthetic e:Lcom/ubix/ssp/ad/e/a0/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/a0/f$p;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/e/a0/f$n;Lcom/ubix/ssp/ad/e/a0/f$o;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$e;->e:Lcom/ubix/ssp/ad/e/a0/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f$e;->a:Lcom/ubix/ssp/ad/e/a0/f$p;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/a0/f$e;->b:Lcom/ubix/ssp/ad/d/a;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/a0/f$e;->c:Lcom/ubix/ssp/ad/e/a0/f$n;

    iput-object p5, p0, Lcom/ubix/ssp/ad/e/a0/f$e;->d:Lcom/ubix/ssp/ad/e/a0/f$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/z/h;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$e;->e:Lcom/ubix/ssp/ad/e/a0/f;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f$e;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/f;->d(Lcom/ubix/ssp/ad/e/y/a/a;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/16 p2, 0x16

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$e;->c:Lcom/ubix/ssp/ad/e/a0/f$n;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/f$n;->a()V

    :cond_1
    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$e;->d:Lcom/ubix/ssp/ad/e/a0/f$o;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/f$o;->a()V

    :cond_0
    return-void
.end method

.method public c(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$e;->a:Lcom/ubix/ssp/ad/e/a0/f$p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/a0/f$p;->a(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_0
    return-void
.end method
