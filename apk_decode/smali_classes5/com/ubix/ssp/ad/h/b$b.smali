.class Lcom/ubix/ssp/ad/h/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/v/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/h/b;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/h/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/b$b;->a:Lcom/ubix/ssp/ad/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    :try_start_0
    move-object p3, p1

    check-cast p3, Lcom/ubix/ssp/ad/e/v/a;

    invoke-interface {p3, p2}, Lcom/ubix/ssp/ad/e/v/a;->c(Ljava/lang/String;)Z

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/v/e;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b$b;->a:Lcom/ubix/ssp/ad/h/b;

    const-string p3, "\u8d44\u6e90\u4e0b\u8f7d\u9519\u8bef"

    const/4 p4, 0x5

    invoke-static {p4, p3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ubix/ssp/ad/h/b;->a(ILcom/ubix/ssp/open/AdError;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b$b;->a:Lcom/ubix/ssp/ad/h/b;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/h/b;->I()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b$b;->a:Lcom/ubix/ssp/ad/h/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/h/b;->f(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->c()Lcom/ubix/ssp/ad/e/v/f;

    move-result-object p3

    new-instance p4, Lcom/ubix/ssp/ad/h/b$b$a;

    invoke-direct {p4, p0}, Lcom/ubix/ssp/ad/h/b$b$a;-><init>(Lcom/ubix/ssp/ad/h/b$b;)V

    invoke-interface {p3, p1, p4}, Lcom/ubix/ssp/ad/e/v/f;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b$b;->a:Lcom/ubix/ssp/ad/h/b;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/h/b;->n(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b$b;->a:Lcom/ubix/ssp/ad/h/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/ubix/ssp/ad/h/b;->a(ILcom/ubix/ssp/open/AdError;)V

    return-void
.end method
