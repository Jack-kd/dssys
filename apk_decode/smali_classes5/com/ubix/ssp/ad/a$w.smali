.class Lcom/ubix/ssp/ad/a$w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/f$q;


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

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$w;->c:Lcom/ubix/ssp/ad/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/a$w;->a:Lcom/ubix/ssp/ad/d/a;

    iput-object p3, p0, Lcom/ubix/ssp/ad/a$w;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$w;->c:Lcom/ubix/ssp/ad/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$w;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$w;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    return-void
.end method
