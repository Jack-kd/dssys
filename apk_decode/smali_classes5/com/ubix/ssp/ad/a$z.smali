.class public abstract Lcom/ubix/ssp/ad/a$z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/s/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "z"
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Lcom/ubix/ssp/ad/e/s/e;

.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    iget-object v0, p1, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iget v0, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/a$z;->b:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/ubix/ssp/ad/a;I)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    iput p2, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/a$z;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/ubix/ssp/ad/a;II)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    iput p3, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    iput p2, p0, Lcom/ubix/ssp/ad/a$z;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/ubix/ssp/ad/a;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/a$z;-><init>(Lcom/ubix/ssp/ad/a;Ljava/util/HashMap;Lcom/ubix/ssp/ad/a$z;)V

    return-void
.end method

.method public constructor <init>(Lcom/ubix/ssp/ad/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ubix/ssp/ad/e/s/e;",
            ")V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    :cond_0
    iput p3, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    iget-object p2, p1, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    iput p1, p0, Lcom/ubix/ssp/ad/a$z;->b:I

    :cond_1
    iput-object p4, p0, Lcom/ubix/ssp/ad/a$z;->c:Lcom/ubix/ssp/ad/e/s/e;

    return-void
.end method

.method public constructor <init>(Lcom/ubix/ssp/ad/a;Ljava/util/HashMap;Lcom/ubix/ssp/ad/a$z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ubix/ssp/ad/a$z;",
            ")V"
        }
    .end annotation

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ubix/ssp/ad/a$z;-><init>(Lcom/ubix/ssp/ad/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/a$z;->b:I

    return v0
.end method

.method public a(I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iget v2, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->c:Lcom/ubix/ssp/ad/e/s/e;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/s/e;->a(I)V

    :cond_2
    return-void
.end method

.method public a(II)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iget v2, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    const/16 v3, 0x131

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->c:Lcom/ubix/ssp/ad/e/s/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/e/s/e;->a(II)V

    :cond_1
    return-void
.end method

.method public a(ILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    .locals 4

    .line 4
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "30802"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const-string v0, "30801"

    goto :goto_0

    :cond_1
    const-string v0, "30809"

    :goto_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    const-string v2, "__DOWN_ERR_ID__"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iget v2, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    const/16 v3, 0x134

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->c:Lcom/ubix/ssp/ad/e/s/e;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Lcom/ubix/ssp/ad/e/s/e;->a(ILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .line 5
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iget v2, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    const/16 v3, 0x12e

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iget v2, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    const/16 v3, 0x12f

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->c:Lcom/ubix/ssp/ad/e/s/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/e/s/e;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/s/e;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ubix/ssp/ad/a$z;->c:Lcom/ubix/ssp/ad/e/s/e;

    return-void
.end method

.method public b(II)V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->e:Lcom/ubix/ssp/ad/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iget v2, p0, Lcom/ubix/ssp/ad/a$z;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$z;->d:Ljava/util/HashMap;

    const/16 v3, 0x132

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->c:Lcom/ubix/ssp/ad/e/s/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/e/s/e;->b(II)V

    :cond_1
    return-void
.end method

.method public c(II)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$z;->c:Lcom/ubix/ssp/ad/e/s/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/e/s/e;->c(II)V

    :cond_0
    return-void
.end method
