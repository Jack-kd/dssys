.class Lcom/ubix/ssp/ad/e/a0/e0/a$b;
.super Lcom/ubix/ssp/ad/e/x/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/e0/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/e0/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/e0/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/x/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ubix/ssp/ad/e/x/d;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->f(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/e0/a;->a(Lcom/ubix/ssp/ad/e/a0/e0/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/e0/a;->b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p1, Lcom/ubix/ssp/ad/e/x/d;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/x/d;->e:Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/ubix/ssp/ad/e/x/d;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/x/d;->b:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/x/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/ubix/ssp/ad/e/x/d;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    const-string p1, "unknown"

    goto :goto_2

    :cond_2
    const-string p1, "response is null"

    :goto_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/e0/a;->b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "\u5956\u52b1\u8fd4\u56de\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, p1, v2}, Lcom/ubix/ssp/ad/e/a0/e0/a$c;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/a0/e0/a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->a()V

    :cond_4
    return-void
.end method

.method public f(Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 6

    const-string v0, ""

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/x/d;->f:[B

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "extra"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/e0/a;->a(Lcom/ubix/ssp/ad/e/a0/e0/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/e0/a;->b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/e0/a;->b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ubix/ssp/ad/e/a0/e0/a$c;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/e0/a;->a(Lcom/ubix/ssp/ad/e/a0/e0/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/e0/a;->b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/e0/a;->b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    move-result-object v3

    const-string v4, "\u5956\u52b1\u65e0\u6548"

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2, p1}, Lcom/ubix/ssp/ad/e/a0/e0/a$c;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/a0/e0/a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz p1, :cond_3

    goto :goto_3

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/e0/a;->a(Lcom/ubix/ssp/ad/e/a0/e0/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/e0/a;->b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/e0/a;->b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    move-result-object v1

    const-string v2, "\u5956\u52b1\u8fd4\u56de\u5f02\u5e38"

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lcom/ubix/ssp/ad/e/a0/e0/a$c;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/a0/e0/a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->a()V

    :cond_3
    return-void

    :goto_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$b;->b:Lcom/ubix/ssp/ad/e/a0/e0/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/e0/a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->a()V

    :cond_4
    throw p1
.end method
