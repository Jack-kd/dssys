.class public Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/baidu/passbqt/http/g;

.field public b:Landroid/content/Context;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lp/a;->c:Z

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/passbqt/http/g;->a()Lcom/baidu/passbqt/http/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lp/a;->a:Lcom/baidu/passbqt/http/g;

    .line 12
    .line 13
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/b;->b()Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lp/a;->b:Landroid/content/Context;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic e(Lp/a;Lp/c;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lp/a;->f(Lp/c;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lp/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lp/a;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lp/a;->c:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lp/d;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)Lcom/baidu/passbqt/http/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/passbqt/http/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/passbqt/http/j;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/baidu/passbqt/http/j;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, v0, Lcom/baidu/passbqt/http/j;->d:Lcom/baidu/passbqt/http/a;

    .line 9
    .line 10
    iput-object p3, v0, Lcom/baidu/passbqt/http/j;->h:Ljava/util/HashMap;

    .line 11
    .line 12
    iput-object p4, v0, Lcom/baidu/passbqt/http/j;->b:Ljava/util/List;

    .line 13
    .line 14
    iput-object p5, v0, Lcom/baidu/passbqt/http/j;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput p6, v0, Lcom/baidu/passbqt/http/j;->e:I

    .line 17
    .line 18
    return-object v0
.end method

.method public b(Ljava/lang/String;Lp/d;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;ILp/c;)V
    .locals 14

    .line 1
    invoke-virtual/range {p7 .. p7}, Lp/c;->a()V

    .line 2
    .line 3
    .line 4
    move-object/from16 v4, p7

    .line 5
    .line 6
    invoke-virtual {p0, v4}, Lp/a;->i(Lp/c;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v11, p0, Lp/a;->a:Lcom/baidu/passbqt/http/g;

    .line 14
    .line 15
    iget-object v12, p0, Lp/a;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p6}, Lp/a;->a(Ljava/lang/String;Lp/d;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)Lcom/baidu/passbqt/http/j;

    .line 18
    .line 19
    .line 20
    move-result-object v13

    .line 21
    new-instance v0, Lp/b;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v4}, Lp/c;->f()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    move-object v1, p0

    .line 32
    move-object v5, p1

    .line 33
    move-object/from16 v6, p2

    .line 34
    .line 35
    move-object/from16 v7, p3

    .line 36
    .line 37
    move-object/from16 v8, p4

    .line 38
    .line 39
    move-object/from16 v9, p5

    .line 40
    .line 41
    move/from16 v10, p6

    .line 42
    .line 43
    invoke-direct/range {v0 .. v10}, Lp/b;-><init>(Lp/a;Landroid/os/Looper;ZLp/c;Ljava/lang/String;Lp/d;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11, v12, v13, v0}, Lcom/baidu/passbqt/http/g;->b(Landroid/content/Context;Lcom/baidu/passbqt/http/j;Lcom/baidu/passbqt/http/c;)Lcom/baidu/passbqt/http/h;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public c(Ljava/lang/String;Lp/d;Ljava/util/List;Ljava/lang/String;Lp/c;)V
    .locals 8

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v7, p5

    .line 9
    invoke-virtual/range {v0 .. v7}, Lp/a;->b(Ljava/lang/String;Lp/d;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;ILp/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public d(Ljava/lang/String;Lp/d;Lp/c;)V
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lp/a;->c(Ljava/lang/String;Lp/d;Ljava/util/List;Ljava/lang/String;Lp/c;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final f(Lp/c;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-class v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/16 v0, -0xcb

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, -0xc9

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1, p2, v0, p3}, Lp/c;->d(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final i(Lp/c;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lp/a;->b:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, -0xce

    .line 8
    .line 9
    const-string v3, "SDK\u672a\u521d\u59cb\u5316"

    .line 10
    .line 11
    invoke-virtual {p1, v2, v0, v3}, Lp/c;->d(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lp/c;->e()V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-static {v0}, Lo/g;->h(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/16 v0, -0xcb

    .line 25
    .line 26
    const-string v3, "\u7f51\u7edc\u5f02\u5e38"

    .line 27
    .line 28
    invoke-virtual {p1, v2, v0, v3}, Lp/c;->d(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lp/c;->e()V

    .line 32
    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    return p1
.end method
