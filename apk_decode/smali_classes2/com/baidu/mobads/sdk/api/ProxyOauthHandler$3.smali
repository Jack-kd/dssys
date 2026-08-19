.class Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;

.field final synthetic val$callback:Lcom/baidu/mobads/sdk/api/OauthCodeCallback;

.field final synthetic val$code:I

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$result:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;->this$0:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;->val$callback:Lcom/baidu/mobads/sdk/api/OauthCodeCallback;

    .line 4
    .line 5
    iput p3, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;->val$code:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;->val$message:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;->val$result:Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;->val$callback:Lcom/baidu/mobads/sdk/api/OauthCodeCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;->val$code:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;->val$message:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;->val$result:Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/mobads/sdk/api/OauthCodeCallback;->onFailure(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
