.class Lcom/ubix/ssp/ad/a$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/a$a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Lcom/ubix/ssp/ad/a$a0;

.field final synthetic f:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;ILcom/ubix/ssp/ad/d/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/ubix/ssp/ad/a$a0;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$h;->f:Lcom/ubix/ssp/ad/a;

    iput p2, p0, Lcom/ubix/ssp/ad/a$h;->a:I

    iput-object p3, p0, Lcom/ubix/ssp/ad/a$h;->b:Lcom/ubix/ssp/ad/d/a;

    iput-object p4, p0, Lcom/ubix/ssp/ad/a$h;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/ubix/ssp/ad/a$h;->d:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/ubix/ssp/ad/a$h;->e:Lcom/ubix/ssp/ad/a$a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/ubix/ssp/ad/a$h;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$h;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$h;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v1

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$h;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v3, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->M:I

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->P:Lcom/ubix/ssp/ad/e/y/a/a$b$d;

    iget-object v5, p0, Lcom/ubix/ssp/ad/a$h;->d:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/w/k;->a(IILcom/ubix/ssp/ad/e/y/a/a$b$d;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v2, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/ubix/ssp/ad/a$h;->c:Landroid/content/Context;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$h;->f:Lcom/ubix/ssp/ad/a;

    iget v3, p1, Lcom/ubix/ssp/ad/a;->i:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$h;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v4

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$h;->f:Lcom/ubix/ssp/ad/a;

    iget-object v5, p1, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$h;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v6, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-static/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$h;->e:Lcom/ubix/ssp/ad/a$a0;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/a$a0;->a(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
