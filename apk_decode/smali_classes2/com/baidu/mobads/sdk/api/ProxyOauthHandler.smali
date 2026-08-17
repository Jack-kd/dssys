.class public Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/oauth/sdkbqt/auth/c;)Lcom/baidu/oauth/sdkbqt/auth/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Ls/a;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->resultToJson(Ls/a;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->callbackFail(Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private callbackFail(Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$3;-><init>(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private resultToJson(Ls/a;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "sub_code"

    .line 7
    .line 8
    iget v2, p1, Ls/b;->f:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "sub_msg"

    .line 14
    .line 15
    iget-object v2, p1, Ls/b;->g:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "is_visible_auth"

    .line 21
    .line 22
    iget-boolean v2, p1, Ls/b;->d:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "is_degrade"

    .line 28
    .line 29
    iget-boolean v2, p1, Ls/b;->e:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "is_install_bd_app"

    .line 35
    .line 36
    iget-boolean v2, p1, Ls/b;->i:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "is_pass_new_version"

    .line 42
    .line 43
    iget-boolean v2, p1, Ls/b;->h:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "app_version"

    .line 49
    .line 50
    iget-object v2, p1, Ls/b;->j:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "pass_sdk_version"

    .line 56
    .line 57
    iget-object v2, p1, Ls/b;->k:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "allow_launch_auth_app"

    .line 63
    .line 64
    iget-boolean v2, p1, Ls/b;->l:Z

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "login_state_before_auth"

    .line 70
    .line 71
    iget-object v2, p1, Ls/b;->m:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "login_state_after_auth"

    .line 77
    .line 78
    iget-object p1, p1, Ls/b;->n:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/az;->e(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method


# virtual methods
.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/oauth/sdkbqt/auth/c;->h(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :goto_0
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/az;->e(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/baidu/mobads/sdk/api/OauthCodeCallback;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Init failed."

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    const/16 p3, 0x12f

    .line 7
    .line 8
    invoke-direct {p0, p6, p3, p1, p2}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->callbackFail(Lcom/baidu/mobads/sdk/api/OauthCodeCallback;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v3, Lcom/baidu/mobads/sdk/internal/z;->d:Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "basic"

    .line 21
    .line 22
    move-object v2, p2

    .line 23
    move-object v6, p3

    .line 24
    move v5, p4

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/baidu/oauth/sdkbqt/auth/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    invoke-virtual {v0, p2}, Lcom/baidu/oauth/sdkbqt/auth/a;->h(Z)Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 30
    .line 31
    .line 32
    new-instance p3, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$1;

    .line 33
    .line 34
    invoke-direct {p3, p0}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$1;-><init>(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p3}, Lcom/baidu/oauth/sdkbqt/auth/a;->j(Lcom/baidu/oauth/sdkbqt/auth/a$a;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/b;->c(Lcom/baidu/oauth/sdkbqt/auth/a;)V

    .line 41
    .line 42
    .line 43
    new-instance p3, Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 44
    .line 45
    invoke-direct {p3, p1}, Lcom/baidu/oauth/sdkbqt/auth/c;-><init>(Landroid/app/Activity;)V

    .line 46
    .line 47
    .line 48
    iput-object p3, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 49
    .line 50
    new-instance p1, Lr/a;

    .line 51
    .line 52
    invoke-direct {p1}, Lr/a;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 p3, 0x3

    .line 56
    iput-char p3, p1, Lr/a;->a:C

    .line 57
    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    iput-object p3, p1, Lr/a;->c:Ljava/lang/String;

    .line 67
    .line 68
    new-instance p3, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string p4, "Y29tLmJhaWR1LnNlYXJjaGJveA=="

    .line 74
    .line 75
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iput-object p3, p1, Lr/a;->d:Ljava/util/List;

    .line 79
    .line 80
    xor-int/2addr p2, p5

    .line 81
    iput-boolean p2, p1, Lr/a;->b:Z

    .line 82
    .line 83
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 84
    .line 85
    new-instance p3, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;

    .line 86
    .line 87
    invoke-direct {p3, p0, p6}, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler$2;-><init>(Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;Lcom/baidu/mobads/sdk/api/OauthCodeCallback;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p1, p3}, Lcom/baidu/oauth/sdkbqt/auth/c;->g(Lr/a;Lq/a;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/baidu/mobads/sdk/api/ProxyOauthHandler;->bdSsoHandler:Lcom/baidu/oauth/sdkbqt/auth/c;

    .line 3
    .line 4
    return-void
.end method
