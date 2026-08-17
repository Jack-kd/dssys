.class public Lcom/baidu/oauth/sdkbqt/auth/p;
.super Lq/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/baidu/oauth/sdkbqt/auth/o;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/p;->a:Lcom/baidu/oauth/sdkbqt/auth/o;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/p;->a:Lcom/baidu/oauth/sdkbqt/auth/o;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/auth/o;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 4
    .line 5
    iget-object p1, p1, Ls/c;->o:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->b(Lcom/baidu/oauth/sdkbqt/auth/i;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/p;->a:Lcom/baidu/oauth/sdkbqt/auth/o;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/auth/o;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->loadUrl(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public synthetic onSuccess(Ls/b;)V
    .locals 0

    .line 1
    check-cast p1, Ls/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/p;->a(Ls/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
