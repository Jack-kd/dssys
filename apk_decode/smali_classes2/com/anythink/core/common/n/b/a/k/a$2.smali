.class final Lcom/anythink/core/common/n/b/a/k/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/n/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/b/a/k/a;->a(Lcom/anythink/core/common/n/b/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/n/b/ad;

.field final synthetic b:Lcom/anythink/core/common/n/b/a/k/a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/n/b/a/k/a;Lcom/anythink/core/common/n/b/ad;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/n/b/a/k/a$2;->b:Lcom/anythink/core/common/n/b/a/k/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/core/common/n/b/a/k/a$2;->a:Lcom/anythink/core/common/n/b/ad;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/n/b/af;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/anythink/core/common/n/b/a/a;->a:Lcom/anythink/core/common/n/b/a/a;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/n/b/a/a;->a(Lcom/anythink/core/common/n/b/af;)Lcom/anythink/core/common/n/b/a/b/c;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a/k/a$2;->b:Lcom/anythink/core/common/n/b/a/k/a;

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/n/b/a/k/a;->a(Lcom/anythink/core/common/n/b/af;Lcom/anythink/core/common/n/b/a/b/c;)V

    .line 3
    invoke-virtual {v0}, Lcom/anythink/core/common/n/b/a/b/c;->f()Lcom/anythink/core/common/n/b/a/k/a$e;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/anythink/core/common/n/b/aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " webSocket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/n/b/a/k/a$2;->a:Lcom/anythink/core/common/n/b/ad;

    invoke-virtual {v1}, Lcom/anythink/core/common/n/b/ad;->a()Lcom/anythink/core/common/n/b/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/n/b/v;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a/k/a$2;->b:Lcom/anythink/core/common/n/b/a/k/a;

    invoke-virtual {v1, v0, p1}, Lcom/anythink/core/common/n/b/a/k/a;->a(Ljava/lang/String;Lcom/anythink/core/common/n/b/a/k/a$e;)V

    .line 6
    iget-object p1, p0, Lcom/anythink/core/common/n/b/a/k/a$2;->b:Lcom/anythink/core/common/n/b/a/k/a;

    invoke-virtual {p1}, Lcom/anythink/core/common/n/b/a/k/a;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 7
    :catch_0
    iget-object p1, p0, Lcom/anythink/core/common/n/b/a/k/a$2;->b:Lcom/anythink/core/common/n/b/a/k/a;

    invoke-virtual {p1}, Lcom/anythink/core/common/n/b/a/k/a;->j()V

    return-void

    :catch_1
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/anythink/core/common/n/b/a/b/c;->g()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a/k/a$2;->b:Lcom/anythink/core/common/n/b/a/k/a;

    invoke-virtual {v0}, Lcom/anythink/core/common/n/b/a/k/a;->j()V

    .line 10
    invoke-static {p1}, Lcom/anythink/core/common/n/b/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 0

    .line 11
    iget-object p1, p0, Lcom/anythink/core/common/n/b/a/k/a$2;->b:Lcom/anythink/core/common/n/b/a/k/a;

    invoke-virtual {p1}, Lcom/anythink/core/common/n/b/a/k/a;->j()V

    return-void
.end method
