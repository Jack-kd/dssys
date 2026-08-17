.class Lcom/ubix/ssp/ad/a$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/a;

.field final synthetic b:J

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;JLandroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$f;->e:Lcom/ubix/ssp/ad/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/a$f;->a:Lcom/ubix/ssp/ad/d/a;

    iput-wide p3, p0, Lcom/ubix/ssp/ad/a$f;->b:J

    iput-object p5, p0, Lcom/ubix/ssp/ad/a$f;->c:Landroid/content/Context;

    iput-object p6, p0, Lcom/ubix/ssp/ad/a$f;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$f;->e:Lcom/ubix/ssp/ad/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$f;->a:Lcom/ubix/ssp/ad/d/a;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/ubix/ssp/ad/a;->a(I[Ljava/lang/Object;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    sget p1, Lcom/ubix/ssp/ad/d/b;->D:I

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/a$f;->b:J

    sub-long/2addr v0, v2

    sget p1, Lcom/ubix/ssp/ad/d/b;->D:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$f;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v1

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$f;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v3, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->M:I

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->P:Lcom/ubix/ssp/ad/e/y/a/a$b$d;

    iget-object v5, p0, Lcom/ubix/ssp/ad/a$f;->d:Ljava/util/HashMap;

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
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$f;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$f;->c:Landroid/content/Context;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$f;->e:Lcom/ubix/ssp/ad/a;

    iget v3, p1, Lcom/ubix/ssp/ad/a;->i:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$f;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v4

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$f;->e:Lcom/ubix/ssp/ad/a;

    iget-object v5, p1, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$f;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v6, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-static/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
