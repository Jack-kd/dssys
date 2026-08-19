.class public Lt/g;
.super Lq/d;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt/g;->a:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lq/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ls/d;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Ls/d;->o:Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "extra_oauth_result_json"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lt/g;->a:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {p1, v1}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->l(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;Z)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lt/g;->a:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lt/g;->a:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public b(Ls/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ls/b;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ls/b;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Lo/h;->c(ILjava/lang/String;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lt/g;->a:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lt/g;->a:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public synthetic onFailure(Ls/b;)V
    .locals 0

    .line 1
    check-cast p1, Ls/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt/g;->b(Ls/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic onSuccess(Ls/b;)V
    .locals 0

    .line 1
    check-cast p1, Ls/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt/g;->a(Ls/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
