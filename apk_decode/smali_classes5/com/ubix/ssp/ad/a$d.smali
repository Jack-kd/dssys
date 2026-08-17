.class Lcom/ubix/ssp/ad/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/f$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IIIZLcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/g/h;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/a;

.field final synthetic b:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$d;->b:Lcom/ubix/ssp/ad/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/a$d;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$d;->b:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$d;->b:Lcom/ubix/ssp/ad/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/z/h;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/z/h;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$d;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/a;->a(ILcom/ubix/ssp/ad/d/a;)V

    :cond_0
    return-void
.end method
