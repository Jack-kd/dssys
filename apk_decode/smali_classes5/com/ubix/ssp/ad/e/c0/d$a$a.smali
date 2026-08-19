.class Lcom/ubix/ssp/ad/e/c0/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/z/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/c0/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/c0/d$a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/c0/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/c0/d;->b(Lcom/ubix/ssp/ad/e/c0/d;Z)Z

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/z/h;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/c0/d$a;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/c0/d$a;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ubixad"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "mini_program"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p2, p1, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/c0/d$a;->c:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ubix/ssp/ad/e/c0/d;->a(Lcom/ubix/ssp/ad/e/c0/d;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/c0/d;->a(Lcom/ubix/ssp/ad/e/c0/d;)Lcom/ubix/ssp/ad/e/c0/d$b;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/c0/d;->a(Lcom/ubix/ssp/ad/e/c0/d;)Lcom/ubix/ssp/ad/e/c0/d$b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/ubix/ssp/ad/e/c0/d$b;->onTwiceClicked(I)V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/c0/d;->a(Lcom/ubix/ssp/ad/e/c0/d;)Lcom/ubix/ssp/ad/e/c0/d$b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/c0/d;->a(Lcom/ubix/ssp/ad/e/c0/d;)Lcom/ubix/ssp/ad/e/c0/d$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/c0/d$b;->replacePackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/c0/d;->b(Lcom/ubix/ssp/ad/e/c0/d;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/c0/d$a;->c:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object v0, p2, Lcom/ubix/ssp/ad/e/c0/d$a;->a:Landroid/webkit/WebView;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/c0/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/ubix/ssp/ad/e/c0/d;->a(Lcom/ubix/ssp/ad/e/c0/d;Z)Z

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    invoke-static {p2, p1}, Lcom/ubix/ssp/ad/e/c0/d;->a(Lcom/ubix/ssp/ad/e/c0/d;Landroid/net/Uri;)V

    :cond_4
    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c0/d$a$a;->a:Lcom/ubix/ssp/ad/e/c0/d$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/c0/d;->b(Lcom/ubix/ssp/ad/e/c0/d;Z)Z

    return-void
.end method

.method public c(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    return-void
.end method
