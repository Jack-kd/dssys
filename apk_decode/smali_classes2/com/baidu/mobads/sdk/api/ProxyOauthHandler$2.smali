.class Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;
.super Lq/a;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;

.field final synthetic val$callback:Lcom/baidu/mobads/sdk/api/OauthCodeCallback;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/mobads/sdk/api/OauthCodeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->this$0:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->val$callback:Lcom/baidu/mobads/sdk/api/OauthCodeCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Lq/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Ls/a;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->this$0:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->access$002(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/oauth/sdkbqt/auth/c;)Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 3
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->this$0:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;

    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->val$callback:Lcom/baidu/mobads/sdk/api/OauthCodeCallback;

    invoke-virtual {p1}, Ls/b;->a()I

    move-result v2

    invoke-virtual {p1}, Ls/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->this$0:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;

    invoke-static {v4, p1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->access$100(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Ls/a;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->access$200(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic onFailure(Ls/b;)V
    .locals 0

    .line 1
    check-cast p1, Ls/a;

    invoke-virtual {p0, p1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->onFailure(Ls/a;)V

    return-void
.end method

.method public onSuccess(Ls/a;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->this$0:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->access$002(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/oauth/sdkbqt/auth/c;)Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 3
    invoke-virtual {p1}, Ls/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->this$0:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;

    invoke-static {v1, p1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->access$100(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Ls/a;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2$1;-><init>(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->this$0:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;

    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->val$callback:Lcom/baidu/mobads/sdk/api/OauthCodeCallback;

    const/16 v2, -0xc9

    const-string v3, "Empty code."

    invoke-static {v0, v1, v2, v3, p1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->access$200(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ls/b;)V
    .locals 0

    .line 1
    check-cast p1, Ls/a;

    invoke-virtual {p0, p1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->onSuccess(Ls/a;)V

    return-void
.end method
