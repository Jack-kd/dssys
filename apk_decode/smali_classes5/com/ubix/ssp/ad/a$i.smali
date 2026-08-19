.class Lcom/ubix/ssp/ad/a$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/d$c;


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

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$i;->f:Lcom/ubix/ssp/ad/a;

    iput p2, p0, Lcom/ubix/ssp/ad/a$i;->a:I

    iput-object p3, p0, Lcom/ubix/ssp/ad/a$i;->b:Lcom/ubix/ssp/ad/d/a;

    iput-object p4, p0, Lcom/ubix/ssp/ad/a$i;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/ubix/ssp/ad/a$i;->d:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/ubix/ssp/ad/a$i;->e:Lcom/ubix/ssp/ad/a$a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public b(J)V
    .locals 6

    const-wide/16 v0, 0x3e8

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/ubix/ssp/ad/a$i;->a:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$i;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    :try_start_0
    iget-object p2, p0, Lcom/ubix/ssp/ad/a$i;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget-object p2, p0, Lcom/ubix/ssp/ad/a$i;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v2, p2, Lcom/ubix/ssp/ad/e/y/a/a$b;->M:I

    iget-object v3, p2, Lcom/ubix/ssp/ad/e/y/a/a$b;->P:Lcom/ubix/ssp/ad/e/y/a/a$b$d;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a$i;->d:Ljava/util/HashMap;

    iget-object v5, p2, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/w/k;->a(IILcom/ubix/ssp/ad/e/y/a/a$b$d;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v1, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$i;->c:Landroid/content/Context;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$i;->f:Lcom/ubix/ssp/ad/a;

    iget v2, p1, Lcom/ubix/ssp/ad/a;->i:I

    iget-object p2, p0, Lcom/ubix/ssp/ad/a$i;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v3

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$i;->f:Lcom/ubix/ssp/ad/a;

    iget-object v4, p1, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$i;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$i;->e:Lcom/ubix/ssp/ad/a$a0;

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/ubix/ssp/ad/a$a0;->a(I)V

    :cond_0
    return-void
.end method
