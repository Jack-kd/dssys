.class Lcom/ubix/ssp/ad/e/w/k$a;
.super Lcom/ubix/ssp/ad/e/x/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/w/k;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/ubix/ssp/ad/e/w/k;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/w/k;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/k$a;->e:Lcom/ubix/ssp/ad/e/w/k;

    iput p2, p0, Lcom/ubix/ssp/ad/e/w/k$a;->b:I

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/w/k$a;->c:Ljava/lang/String;

    iput p4, p0, Lcom/ubix/ssp/ad/e/w/k$a;->d:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/x/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ubix/ssp/ad/e/x/d;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/w/k$a;->f(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 2

    iget p1, p0, Lcom/ubix/ssp/ad/e/w/k$a;->b:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/k$a;->e:Lcom/ubix/ssp/ad/e/w/k;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/k$a;->c:Ljava/lang/String;

    iget v1, p0, Lcom/ubix/ssp/ad/e/w/k$a;->d:I

    invoke-static {p1, v0, v1}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/w/k;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public f(Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 0

    return-void
.end method
