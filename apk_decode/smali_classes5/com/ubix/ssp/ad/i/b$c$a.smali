.class Lcom/ubix/ssp/ad/i/b$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/a$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/b$c;->b(ILandroid/view/View;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:Lcom/ubix/ssp/ad/i/b$c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/b$c;ILcom/ubix/ssp/ad/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iput p2, p0, Lcom/ubix/ssp/ad/i/b$c$a;->a:I

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/b$c$a;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ubix/ssp/ad/i/a;->q:Z

    :cond_0
    return-void
.end method

.method public a(Z)Z
    .locals 3

    .line 2
    if-eqz p1, :cond_3

    iget p1, p0, Lcom/ubix/ssp/ad/i/b$c$a;->a:I

    const/16 v0, 0x2c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$c$a;->b:Lcom/ubix/ssp/ad/d/a;

    iget v2, v2, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p1, v0, v2}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;I)V

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b$c;->a(Lcom/ubix/ssp/ad/i/b$c;)V

    return v1

    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$c$a;->b:Lcom/ubix/ssp/ad/d/a;

    iget v2, v2, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p1, v0, v2}, Lcom/ubix/ssp/ad/e/s/d;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object p1, p1, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object p1, p1, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object p1, p1, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/i/a;

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/ubix/ssp/ad/i/a;->d(II)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object p1, p1, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object p1, p1, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    iget-object p1, p1, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/i/a;

    const/16 v0, 0x2a

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c$a;->c:Lcom/ubix/ssp/ad/i/b$c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b$c;->a(Lcom/ubix/ssp/ad/i/b$c;)V

    const/4 p1, 0x1

    return p1
.end method
