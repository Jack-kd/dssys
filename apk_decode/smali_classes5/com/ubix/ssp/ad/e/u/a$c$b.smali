.class Lcom/ubix/ssp/ad/e/u/a$c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/u/a$c;->b(Lcom/ubix/ssp/ad/e/x/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/x/d;

.field final synthetic b:Lcom/ubix/ssp/ad/e/u/a$c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/u/a$c;Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/u/a$c$b;->b:Lcom/ubix/ssp/ad/e/u/a$c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/u/a$c$b;->a:Lcom/ubix/ssp/ad/e/x/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a$c$b;->a:Lcom/ubix/ssp/ad/e/x/d;

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/ubix/ssp/ad/e/x/d;->c:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u54cd\u5e94\u5f02\u5e38\uff0c\u8bf7\u6839\u636e\u8fd4\u56de\u7801\u68c0\u67e5\u95ee\u9898"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/u/a$c$b;->a:Lcom/ubix/ssp/ad/e/x/d;

    iget v1, v1, Lcom/ubix/ssp/ad/e/x/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget-object v1, v0, Lcom/ubix/ssp/ad/e/x/d;->e:Ljava/lang/Exception;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/ubix/ssp/ad/e/x/d;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/x/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->f(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {v2, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->f(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u4f20\u5165\u7684\u5e7f\u544a\u53c2\u6570\u662f\u5426\u6b63\u786e"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->f(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/u/a$c$b;->b:Lcom/ubix/ssp/ad/e/u/a$c;

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

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/u/a$c$b;->b:Lcom/ubix/ssp/ad/e/u/a$c;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/u/a$c;->c:Lcom/ubix/ssp/open/AdLoadCallbackListener;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/ubix/ssp/open/AdLoadCallbackListener;->onError(Lcom/ubix/ssp/open/AdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
