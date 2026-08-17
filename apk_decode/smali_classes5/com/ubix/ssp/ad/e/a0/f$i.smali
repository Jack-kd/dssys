.class Lcom/ubix/ssp/ad/e/a0/f$i;
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

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ubix/ssp/ad/e/a0/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/d/a;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->d:Lcom/ubix/ssp/ad/e/a0/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->a:Lcom/ubix/ssp/ad/d/a;

    iput p3, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->b:I

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->a:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TYPE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "TITLE"

    const-string v2, "\u9690\u79c1"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    const-string v2, "TARGET_URL"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->d:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/a0/f;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v6

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_1
    return-void
.end method

.method public b()V
    .locals 9

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->a:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TYPE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "TITLE"

    const-string v2, "\u5e94\u7528\u4ecb\u7ecd"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    const-string v2, "TARGET_URL"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->d:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/a0/f;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v6

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_1
    return-void
.end method

.method public c()V
    .locals 9

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->a:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TYPE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "TITLE"

    const-string v2, "\u6743\u9650"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    const-string v2, "TARGET_URL"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->d:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/a0/f;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v6

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/a0/f$i;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_1
    return-void
.end method
