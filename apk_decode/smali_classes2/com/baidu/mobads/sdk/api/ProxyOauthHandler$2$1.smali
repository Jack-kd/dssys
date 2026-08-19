.class Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;

.field final synthetic val$oauthCode:Ljava/lang/String;

.field final synthetic val$resultJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2$1;->this$1:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2$1;->val$oauthCode:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2$1;->val$resultJson:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2$1;->this$1:Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;->val$callback:Lcom/baidu/mobads/sdk/api/OauthCodeCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2$1;->val$oauthCode:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2$1;->val$resultJson:Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/OauthCodeCallback;->onSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
