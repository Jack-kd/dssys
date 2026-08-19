.class public Lcom/baidu/oauth/sdkbqt/auth/q;
.super Lcom/baidu/oauth/sdkbqt/auth/i$a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/q;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i$a;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/oauth/sdkbqt/auth/i$e;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/i;->x()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "user has clicked Authorized login"

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
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/q;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->Q(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/q;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->Q(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/auth/i$c;->a:Lcom/baidu/oauth/sdkbqt/auth/i$d;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/i$e;->c()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i$d;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method
