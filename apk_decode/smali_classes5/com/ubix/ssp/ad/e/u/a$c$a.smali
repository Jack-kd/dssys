.class Lcom/ubix/ssp/ad/e/u/a$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/u/a$c;->a(Lcom/ubix/ssp/ad/e/y/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/y/a/g;

.field final synthetic b:Lcom/ubix/ssp/ad/e/u/a$c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/u/a$c;Lcom/ubix/ssp/ad/e/y/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->b:Lcom/ubix/ssp/ad/e/u/a$c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->a:Lcom/ubix/ssp/ad/e/y/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->b:Lcom/ubix/ssp/ad/e/u/a$c;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/u/a$c;->d:Lcom/ubix/ssp/ad/e/u/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->a:Lcom/ubix/ssp/ad/e/y/a/g;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;Lcom/ubix/ssp/ad/e/y/a/g;Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->b:Lcom/ubix/ssp/ad/e/u/a$c;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/u/a$c;->d:Lcom/ubix/ssp/ad/e/u/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/p;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->a:Lcom/ubix/ssp/ad/e/y/a/g;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/f;)[B

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->b:Lcom/ubix/ssp/ad/e/u/a$c;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/u/a$c;->d:Lcom/ubix/ssp/ad/e/u/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/w/q/a;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/q/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->b:Lcom/ubix/ssp/ad/e/u/a$c;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/u/a$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ubix/ssp/ad/e/w/q/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "\u7f13\u5b58\u6ca1\u6210\u529f\uff0c\u4e0d\u5f71\u54cd\u540e\u7eed\u6d41\u7a0b"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->b:Lcom/ubix/ssp/ad/e/u/a$c;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/u/a$c;->c:Lcom/ubix/ssp/open/AdLoadCallbackListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/u/a$c$a$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/u/a$c$a$a;-><init>(Lcom/ubix/ssp/ad/e/u/a$c$a;)V

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/b;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x6

    const-string v1, "\u7a7a\u5e7f\u544a\u4f53"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->f(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->b:Lcom/ubix/ssp/ad/e/u/a$c;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/u/a$c;->d:Lcom/ubix/ssp/ad/e/u/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/u/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ubix/ssp/ad/e/w/e;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/u/a$c$a;->b:Lcom/ubix/ssp/ad/e/u/a$c;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/u/a$c;->c:Lcom/ubix/ssp/open/AdLoadCallbackListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/ubix/ssp/open/AdLoadCallbackListener;->onError(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    :goto_1
    return-void
.end method
