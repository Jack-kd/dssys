.class Lcom/ubix/ssp/ad/e/a0/f$k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/z/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/d/a;ILjava/lang/String;IIILcom/ubix/ssp/ad/e/a0/f$p;Lcom/ubix/ssp/ad/e/a0/f$q;Lcom/ubix/ssp/ad/e/a0/f$r;Lcom/ubix/ssp/ad/e/a0/f$o;Lcom/ubix/ssp/ad/e/a0/f$s;Lcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/e/a0/f$n;Lcom/ubix/ssp/ad/g/h;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ubix/ssp/ad/e/a0/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/d/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->c:Lcom/ubix/ssp/ad/e/a0/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->a:Lcom/ubix/ssp/ad/d/a;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->a:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->c:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/a0/f;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->a:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->c:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/a0/f;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 7

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->a:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->c:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/a0/f;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/a0/f$k;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_0
    return-void
.end method
