.class Lcom/ubix/ssp/ad/e/s/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/s/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/ad/d/a;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/ubix/ssp/ad/e/y/a/a$c;

.field final synthetic f:Lcom/ubix/ssp/ad/e/s/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/s/b;Ljava/lang/String;Lcom/ubix/ssp/ad/d/a;Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/b$b;->f:Lcom/ubix/ssp/ad/e/s/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/s/b$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/s/b$b;->b:Lcom/ubix/ssp/ad/d/a;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/s/b$b;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/ubix/ssp/ad/e/s/b$b;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/ubix/ssp/ad/e/s/b$b;->e:Lcom/ubix/ssp/ad/e/y/a/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    const-string v0, "CountDownTool onFinish time"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/s/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/b$b;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    const-string v1, "delay"

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/f;

    new-instance v2, Lcom/ubix/ssp/ad/d/l;

    invoke-direct {v2}, Lcom/ubix/ssp/ad/d/l;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/ubix/ssp/ad/e/a0/f;-><init>(Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/s/b$b;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v3, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->R:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x16

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/b$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/s/b$b;->e:Lcom/ubix/ssp/ad/e/y/a/a$c;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/b$b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/s/b$b;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/s/b$b;->d:Ljava/lang/String;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/b$b;->f:Lcom/ubix/ssp/ad/e/s/b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/s/b$b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/s/b$b;->b:Lcom/ubix/ssp/ad/d/a;

    const/4 v4, 0x0

    :goto_0
    invoke-static {v0, v2, v3, v1, v4}, Lcom/ubix/ssp/ad/e/s/b;->a(Lcom/ubix/ssp/ad/e/s/b;Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/b$b;->f:Lcom/ubix/ssp/ad/e/s/b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/s/b$b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/s/b$b;->b:Lcom/ubix/ssp/ad/d/a;

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public a(J)V
    .locals 0

    .line 2
    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "CountDownTool onTerminal time"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void
.end method
