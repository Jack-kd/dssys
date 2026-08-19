.class public Lcom/baidu/oauth/sdkbqt/auth/B;
.super Lcom/baidu/oauth/sdkbqt/auth/i$a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/B;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

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
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/i$e;->c()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/B;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->O(Lcom/baidu/oauth/sdkbqt/auth/i;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p1, "1"

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    const-string p1, "0"

    .line 28
    .line 29
    return-object p1
.end method
