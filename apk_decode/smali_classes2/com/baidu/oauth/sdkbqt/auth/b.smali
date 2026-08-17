.class public Lcom/baidu/oauth/sdkbqt/auth/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/baidu/oauth/sdkbqt/auth/b;


# instance fields
.field public a:Z

.field public b:Lcom/baidu/oauth/sdkbqt/auth/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/oauth/sdkbqt/auth/b;->c:Lcom/baidu/oauth/sdkbqt/auth/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/auth/b;->a:Z

    .line 6
    .line 7
    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/b;->c:Lcom/baidu/oauth/sdkbqt/auth/b;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/baidu/oauth/sdkbqt/auth/b;->a:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v1, "bd sdk was not initall! please use: BdSdk.init() in your app Application or your main Activity. when you want to use bd sdk function, make sure call BdSdk.init() before this function"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public static b()Lcom/baidu/oauth/sdkbqt/auth/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/b;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/b;->c:Lcom/baidu/oauth/sdkbqt/auth/b;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/auth/b;->b:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 7
    .line 8
    return-object v0
.end method

.method public static c(Lcom/baidu/oauth/sdkbqt/auth/a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/b;->c:Lcom/baidu/oauth/sdkbqt/auth/b;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/baidu/oauth/sdkbqt/auth/b;->a:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/a;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/a;->f()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/b;->c:Lcom/baidu/oauth/sdkbqt/auth/b;

    .line 30
    .line 31
    iput-object p0, v0, Lcom/baidu/oauth/sdkbqt/auth/b;->b:Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    iput-boolean p0, v0, Lcom/baidu/oauth/sdkbqt/auth/b;->a:Z

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v0, "please set right app info (appKey,redirect"

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    return-void
.end method
