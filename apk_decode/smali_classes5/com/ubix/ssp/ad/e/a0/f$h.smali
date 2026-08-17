.class Lcom/ubix/ssp/ad/e/a0/f$h;
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

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/f$r;

.field final synthetic c:Lcom/ubix/ssp/ad/d/a;

.field final synthetic d:I

.field final synthetic e:Lcom/ubix/ssp/ad/e/a0/f$q;

.field final synthetic f:Lcom/ubix/ssp/ad/e/a0/f$o;

.field final synthetic g:Lcom/ubix/ssp/ad/e/a0/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/a0/f$p;Lcom/ubix/ssp/ad/e/a0/f$r;Lcom/ubix/ssp/ad/d/a;ILcom/ubix/ssp/ad/e/a0/f$q;Lcom/ubix/ssp/ad/e/a0/f$o;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->g:Lcom/ubix/ssp/ad/e/a0/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->a:Lcom/ubix/ssp/ad/e/a0/f$p;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->b:Lcom/ubix/ssp/ad/e/a0/f$r;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->c:Lcom/ubix/ssp/ad/d/a;

    iput p5, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->d:I

    iput-object p6, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->e:Lcom/ubix/ssp/ad/e/a0/f$q;

    iput-object p7, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->f:Lcom/ubix/ssp/ad/e/a0/f$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->e:Lcom/ubix/ssp/ad/e/a0/f$q;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/f$q;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V
    .locals 1
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
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->b:Lcom/ubix/ssp/ad/e/a0/f$r;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/f$r;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->g:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/a0/f;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->c:Lcom/ubix/ssp/ad/d/a;

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->d:I

    invoke-static {p1, p2, v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/d/a;I)Z

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->f:Lcom/ubix/ssp/ad/e/a0/f$o;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/f$o;->a()V

    :cond_0
    return-void
.end method

.method public c(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$h;->a:Lcom/ubix/ssp/ad/e/a0/f$p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/a0/f$p;->a(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_0
    return-void
.end method
