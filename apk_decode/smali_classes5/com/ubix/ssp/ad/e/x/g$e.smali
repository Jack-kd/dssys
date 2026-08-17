.class Lcom/ubix/ssp/ad/e/x/g$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/d;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/y/a/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/ubix/ssp/ad/e/x/a;

.field final synthetic e:Lcom/ubix/ssp/ad/e/x/g;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/x/g;Lcom/ubix/ssp/ad/e/y/a/d;Ljava/lang/String;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/x/g$e;->e:Lcom/ubix/ssp/ad/e/x/g;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/x/g$e;->a:Lcom/ubix/ssp/ad/e/y/a/d;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/x/g$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/x/g$e;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/ubix/ssp/ad/e/x/g$e;->d:Lcom/ubix/ssp/ad/e/x/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "req\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$e;->a:Lcom/ubix/ssp/ad/e/y/a/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->f(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqBase\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->b()Lcom/ubix/ssp/ad/e/a0/n$c;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/x/g$e;->a:Lcom/ubix/ssp/ad/e/y/a/d;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/f;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/n$c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->f(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqUrl\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->f(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/x/c;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/x/c;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/x/g$e;->a:Lcom/ubix/ssp/ad/e/y/a/d;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/f;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/x/g$e;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/x/c;->a(Ljava/lang/String;[BLjava/util/Map;)Lcom/ubix/ssp/ad/e/x/d;

    move-result-object v0

    iget v1, v0, Lcom/ubix/ssp/ad/e/x/d;->c:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    :try_start_0
    iget-object v1, v0, Lcom/ubix/ssp/ad/e/x/d;->f:[B

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/y/a/e;->a([B)Lcom/ubix/ssp/ad/e/y/a/e;

    move-result-object v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->f(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/x/g$e;->d:Lcom/ubix/ssp/ad/e/x/a;

    invoke-virtual {v2, v1}, Lcom/ubix/ssp/ad/e/x/a;->a(Lcom/ubix/ssp/ad/e/y/a/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$e;->d:Lcom/ubix/ssp/ad/e/x/a;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/x/a;->a(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void
.end method
