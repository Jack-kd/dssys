.class public Lcom/baidu/oauth/sdkbqt/auth/h;
.super Lq/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/baidu/oauth/sdkbqt/auth/g;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/h;->a:Lcom/baidu/oauth/sdkbqt/auth/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lq/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ls/c;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/i;->x()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FE need get a new sso_hash"

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    const-string v1, "errno"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string v1, "sso_hash"

    .line 26
    .line 27
    iget-object v2, p1, Ls/c;->o:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lo/d;->c(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/h;->a:Lcom/baidu/oauth/sdkbqt/auth/g;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/auth/g;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->P(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/webkit/JsPromptResult;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object p1, p1, Ls/c;->o:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public synthetic onSuccess(Ls/b;)V
    .locals 0

    .line 1
    check-cast p1, Ls/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/h;->a(Ls/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
