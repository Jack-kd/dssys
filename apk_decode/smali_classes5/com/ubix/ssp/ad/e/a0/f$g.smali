.class Lcom/ubix/ssp/ad/e/a0/f$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/d/a;ILjava/lang/String;IIILcom/ubix/ssp/ad/e/a0/f$p;Lcom/ubix/ssp/ad/e/a0/f$q;Lcom/ubix/ssp/ad/e/a0/f$r;Lcom/ubix/ssp/ad/e/a0/f$o;Lcom/ubix/ssp/ad/e/a0/f$s;Lcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/e/a0/f$n;Lcom/ubix/ssp/ad/g/h;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/f$r;

.field final synthetic b:I

.field final synthetic c:Lcom/ubix/ssp/ad/d/a;

.field final synthetic d:Lcom/ubix/ssp/ad/e/a0/f$s;

.field final synthetic e:Lcom/ubix/ssp/ad/e/a0/f$q;

.field final synthetic f:Lcom/ubix/ssp/ad/e/a0/f$o;

.field final synthetic g:Lcom/ubix/ssp/ad/e/a0/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/a0/f$r;ILcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/e/a0/f$s;Lcom/ubix/ssp/ad/e/a0/f$q;Lcom/ubix/ssp/ad/e/a0/f$o;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->g:Lcom/ubix/ssp/ad/e/a0/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->a:Lcom/ubix/ssp/ad/e/a0/f$r;

    iput p3, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->b:I

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->c:Lcom/ubix/ssp/ad/d/a;

    iput-object p5, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->d:Lcom/ubix/ssp/ad/e/a0/f$s;

    iput-object p6, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->e:Lcom/ubix/ssp/ad/e/a0/f$q;

    iput-object p7, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->f:Lcom/ubix/ssp/ad/e/a0/f$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->e:Lcom/ubix/ssp/ad/e/a0/f$q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/f$q;->a()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->b:I

    invoke-interface {v0, v1, v2}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onClose()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->f:Lcom/ubix/ssp/ad/e/a0/f$o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/f$o;->a()V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->a:Lcom/ubix/ssp/ad/e/a0/f$r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/f$r;->a()Z

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->b:I

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/s/d;->b(I)I

    move-result v0

    const/16 v1, 0x2e

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->c:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->g:Lcom/ubix/ssp/ad/e/a0/f;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->c:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/f;->d(Lcom/ubix/ssp/ad/e/y/a/a;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->c:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->d:Lcom/ubix/ssp/ad/e/a0/f$s;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/f$s;->a()V

    :cond_4
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->b:I

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/s/d;->b(I)I

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->g:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/a0/f;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->c:Lcom/ubix/ssp/ad/d/a;

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/f$g;->b:I

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/d/a;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
