.class Lcom/ubix/ssp/ad/e/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/ubix/ssp/ad/g/k/b;

.field private b:Lcom/ubix/ssp/ad/e/z/h$b;

.field final synthetic c:Lcom/ubix/ssp/ad/e/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/f$b;->c:Lcom/ubix/ssp/ad/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ubix/ssp/ad/e/f;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/f$b;->c:Lcom/ubix/ssp/ad/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/f$b;->b:Lcom/ubix/ssp/ad/e/z/h$b;

    return-void
.end method

.method public constructor <init>(Lcom/ubix/ssp/ad/e/f;Lcom/ubix/ssp/ad/g/k/b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/f$b;->c:Lcom/ubix/ssp/ad/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/f$b;->a:Lcom/ubix/ssp/ad/g/k/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/f$b;->a:Lcom/ubix/ssp/ad/g/k/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/g/k/b;->i(I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/f$b;->b:Lcom/ubix/ssp/ad/e/z/h$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/z/h$b;->a()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/f$b;->a:Lcom/ubix/ssp/ad/g/k/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/g/k/b;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/f$b;->b:Lcom/ubix/ssp/ad/e/z/h$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/z/h$b;->b()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/f$b;->a:Lcom/ubix/ssp/ad/g/k/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/g/k/b;->f(I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/f$b;->b:Lcom/ubix/ssp/ad/e/z/h$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/z/h$b;->c()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/f$b;->a:Lcom/ubix/ssp/ad/g/k/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
