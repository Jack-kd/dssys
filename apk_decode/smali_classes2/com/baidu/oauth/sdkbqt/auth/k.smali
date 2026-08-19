.class public Lcom/baidu/oauth/sdkbqt/auth/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq/c;)V
    .locals 3

    .line 1
    const-string v0, "aHR0cHM6Ly9vcGVuYXBpLmJhaWR1LmNvbS9vYXV0aC8yLjAvdG9rZW4="

    .line 2
    .line 3
    invoke-static {v0}, Lo/g;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/j;

    .line 8
    .line 9
    new-instance v2, Lcom/baidu/oauth/sdkbqt/auth/l;

    .line 10
    .line 11
    invoke-direct {v2, p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/l;-><init>(Lcom/baidu/oauth/sdkbqt/auth/k;Lq/c;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/baidu/oauth/sdkbqt/auth/j;-><init>(Lcom/baidu/oauth/sdkbqt/auth/j$a;)V

    .line 15
    .line 16
    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 22
    .line 23
    .line 24
    return-void
.end method
