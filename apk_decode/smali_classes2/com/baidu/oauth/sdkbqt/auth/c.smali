.class public Lcom/baidu/oauth/sdkbqt/auth/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "c"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lq/a;

.field public c:Lr/a;

.field public d:Ls/a;

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "activity is null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lo/g;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Landroid/app/Activity;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    sget-object v1, Lo/b;->a:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lo/b;->a:Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v3}, Lo/g;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "0"

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    aget-object v3, v1, v2

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget-object v4, Lo/b;->a:Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    aget-object v1, v1, v2

    .line 60
    .line 61
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1}, Lo/g;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    sget-object v2, Lo/b;->a:Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_2

    .line 105
    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_3

    .line 117
    .line 118
    sget-object v1, Lo/b;->a:Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    return-object v0

    .line 131
    :cond_5
    :goto_1
    sget-object p1, Lo/b;->a:Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    return-object p1
.end method

.method public final b(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/b;->b()Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "extra_calling_app_id"

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const-string v1, "extra_redirect_url"

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;->f()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string v1, "extra_scope"

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;->g()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string v1, "extra_oauth_state"

    .line 33
    .line 34
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string p2, "extra_oauth_sdk_version"

    .line 38
    .line 39
    const-string v1, "2.0.6.10"

    .line 40
    .line 41
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string p2, "extra_use_sha1_auth"

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/a;->i()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string p2, "extra_pass_sdk_version"

    .line 54
    .line 55
    const-string v0, "8.8.8"

    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Landroid/app/Activity;

    .line 61
    .line 62
    const/16 v0, 0x3e9

    .line 63
    .line 64
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string p2, "oauth_type"

    .line 73
    .line 74
    const-string v0, "sso"

    .line 75
    .line 76
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string p2, "bdoauth_open"

    .line 80
    .line 81
    invoke-static {p2, p1}, Lo/e;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/baidu/oauth/sdkbqt/auth/c;->d(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final d(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/oauth/sdkbqt/auth/c;->e(Ljava/lang/String;ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final e(Ljava/lang/String;ZZ)V
    .locals 3

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/d;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/b;->b()Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/baidu/oauth/sdkbqt/auth/a;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/baidu/oauth/sdkbqt/auth/d;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Landroid/app/Activity;

    .line 22
    .line 23
    const-class v2, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "extra_oauth_state"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string p1, "extra_degrade_h5_auth"

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string p1, "extra_degrade_exempt_auth_page"

    .line 39
    .line 40
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Landroid/app/Activity;

    .line 44
    .line 45
    const/16 p3, 0x3ea

    .line 46
    .line 47
    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string p3, "oauth_type"

    .line 56
    .line 57
    const-string v0, "web"

    .line 58
    .line 59
    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    if-eqz p2, :cond_0

    .line 63
    .line 64
    const-string p2, "1"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string p2, "0"

    .line 68
    .line 69
    :goto_0
    const-string p3, "isDegrade"

    .line 70
    .line 71
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string p2, "bdoauth_open"

    .line 75
    .line 76
    invoke-static {p2, p1}, Lo/e;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final f(Lq/a;)Z
    .locals 2

    .line 1
    const-string v0, "please set auth listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/g;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->b:Lq/a;

    .line 7
    .line 8
    const-string v0, "android.permission.INTERNET"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lo/g;->i(Ljava/lang/String;Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/b;->b()Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ls/a;

    .line 25
    .line 26
    invoke-direct {v0}, Ls/a;-><init>()V

    .line 27
    .line 28
    .line 29
    const/16 v1, -0xce

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ls/b;->c(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Lq/b;->onFailure(Ls/b;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    return p1

    .line 39
    :cond_0
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "Application requires permission to access the Internet"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public g(Lr/a;Lq/a;)V
    .locals 7

    .line 1
    const-string v0, "please set auth dto params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/g;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/baidu/oauth/sdkbqt/auth/c;->f(Lq/a;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->c:Lr/a;

    .line 15
    .line 16
    iget-object v0, p1, Lr/a;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/baidu/oauth/sdkbqt/auth/c;->a(Ljava/util/List;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/baidu/oauth/sdkbqt/auth/c;->g:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "authorize isSlient:"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-boolean v3, p1, Lr/a;->b:Z

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const-string v3, ", final authorizedPkgs.size="

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    if-lez v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v6, "authorize first package="

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    array-length v6, v2

    .line 78
    if-lez v6, :cond_1

    .line 79
    .line 80
    aget-object v2, v2, v4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const-string v2, "null"

    .line 84
    .line 85
    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, ", dto.authorizedPkgs.size="

    .line 89
    .line 90
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v2, p1, Lr/a;->d:Ljava/util/List;

    .line 94
    .line 95
    if-nez v2, :cond_2

    .line 96
    .line 97
    move v2, v4

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v5, "authorize  to.authorizedPkgs.size="

    .line 134
    .line 135
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v5, p1, Lr/a;->d:Ljava/util/List;

    .line 139
    .line 140
    if-nez v5, :cond_4

    .line 141
    .line 142
    move v5, v4

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :goto_3
    new-instance v2, Lcom/baidu/oauth/sdkbqt/auth/m;

    .line 173
    .line 174
    invoke-direct {v2}, Lcom/baidu/oauth/sdkbqt/auth/m;-><init>()V

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Landroid/app/Activity;

    .line 178
    .line 179
    iget-boolean v5, p1, Lr/a;->b:Z

    .line 180
    .line 181
    invoke-virtual {v2, v3, v0, v5}, Lcom/baidu/oauth/sdkbqt/auth/m;->a(Landroid/content/Context;Ljava/util/HashMap;Z)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    const/4 v3, 0x1

    .line 186
    if-eqz v2, :cond_5

    .line 187
    .line 188
    iput-boolean v3, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->f:Z

    .line 189
    .line 190
    :cond_5
    iget-char v5, p1, Lr/a;->a:C

    .line 191
    .line 192
    const/4 v6, 0x3

    .line 193
    if-eqz v5, :cond_9

    .line 194
    .line 195
    if-eq v5, v3, :cond_7

    .line 196
    .line 197
    const/4 p2, 0x2

    .line 198
    if-eq v5, p2, :cond_6

    .line 199
    .line 200
    if-eq v5, v6, :cond_9

    .line 201
    .line 202
    :goto_4
    return-void

    .line 203
    :cond_6
    const-string p2, "authorize oauthType=OAUTH_TYPE_WEB"

    .line 204
    .line 205
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-static {v1, p2}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p1, Lr/a;->c:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/c;->c(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_7
    if-nez v2, :cond_8

    .line 219
    .line 220
    const-string p1, "authorize oauthType=OAUTH_TYPE_SSO, ERROR_CODE_NOT_INSTALL_BAIDU_APP"

    .line 221
    .line 222
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {v1, p1}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    new-instance p1, Ls/a;

    .line 230
    .line 231
    invoke-direct {p1}, Ls/a;-><init>()V

    .line 232
    .line 233
    .line 234
    const/16 v0, -0xcf

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Ls/b;->c(I)V

    .line 237
    .line 238
    .line 239
    invoke-interface {p2, p1}, Lq/b;->onFailure(Ls/b;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_8
    const-string p2, "authorize oauthType=OAUTH_TYPE_SSO, intent not null"

    .line 244
    .line 245
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-static {v1, p2}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p1, Lr/a;->c:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {p0, v2, p1}, Lcom/baidu/oauth/sdkbqt/auth/c;->b(Landroid/content/Intent;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_9
    if-ne v5, v6, :cond_a

    .line 259
    .line 260
    const-string p2, "OAUTH_TYPE_BOTH_V2"

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_a
    const-string p2, "OAUTH_TYPE_BOTH"

    .line 264
    .line 265
    :goto_5
    const-string v5, "authorize oauthType="

    .line 266
    .line 267
    if-nez v2, :cond_d

    .line 268
    .line 269
    new-instance v2, Lcom/baidu/oauth/sdkbqt/auth/m;

    .line 270
    .line 271
    invoke-direct {v2}, Lcom/baidu/oauth/sdkbqt/auth/m;-><init>()V

    .line 272
    .line 273
    .line 274
    iget-object v6, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->a:Landroid/app/Activity;

    .line 275
    .line 276
    invoke-virtual {v2, v6, v0, v4}, Lcom/baidu/oauth/sdkbqt/auth/m;->a(Landroid/content/Context;Ljava/util/HashMap;Z)Landroid/content/Intent;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    if-eqz v0, :cond_b

    .line 281
    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string p2, ", intent is null, but intent2 not null"

    .line 294
    .line 295
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-static {v1, p2}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    iput-boolean v3, p0, Lcom/baidu/oauth/sdkbqt/auth/c;->f:Z

    .line 310
    .line 311
    iget-object p1, p1, Lr/a;->c:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {p0, v0, p1}, Lcom/baidu/oauth/sdkbqt/auth/c;->b(Landroid/content/Intent;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string p2, ", intent is null, then OAUTH_TYPE_WEB"

    .line 329
    .line 330
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-static {v1, p2}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    iget-boolean p2, p1, Lr/a;->b:Z

    .line 345
    .line 346
    if-eqz p2, :cond_c

    .line 347
    .line 348
    iget-object p1, p1, Lr/a;->c:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {p0, p1, v3, v3}, Lcom/baidu/oauth/sdkbqt/auth/c;->e(Ljava/lang/String;ZZ)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :cond_c
    iget-object p1, p1, Lr/a;->c:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/c;->c(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string p2, ", intent not null"

    .line 372
    .line 373
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-static {v1, p2}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    iget-object p1, p1, Lr/a;->c:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {p0, v2, p1}, Lcom/baidu/oauth/sdkbqt/auth/c;->b(Landroid/content/Intent;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    return-void
.end method

.method public h(IILandroid/content/Intent;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "pass_sdk_version"

    .line 10
    .line 11
    const-string v5, "app_version"

    .line 12
    .line 13
    const-string v6, "finishLogin"

    .line 14
    .line 15
    const-string v7, "0"

    .line 16
    .line 17
    const-string v8, ""

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    move-object v9, v8

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v9, "extra_oauth_result_json"

    .line 24
    .line 25
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    :goto_0
    sget-object v10, Lcom/baidu/oauth/sdkbqt/auth/c;->g:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v12, "authorizeCallBack, requestCode is "

    .line 37
    .line 38
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v12, " code is "

    .line 45
    .line 46
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v12, " and result is "

    .line 53
    .line 54
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v12, ", isInstallBDApp: "

    .line 61
    .line 62
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-boolean v12, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->f:Z

    .line 66
    .line 67
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-static {v10, v11}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/16 v11, 0x3ea

    .line 82
    .line 83
    const/16 v12, 0x3e9

    .line 84
    .line 85
    if-eq v2, v12, :cond_1

    .line 86
    .line 87
    if-eq v2, v11, :cond_1

    .line 88
    .line 89
    const/16 v13, 0x3eb

    .line 90
    .line 91
    if-eq v2, v13, :cond_1

    .line 92
    .line 93
    goto/16 :goto_15

    .line 94
    .line 95
    :cond_1
    iget-boolean v13, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->e:Z

    .line 96
    .line 97
    const/4 v14, 0x1

    .line 98
    if-nez v13, :cond_2

    .line 99
    .line 100
    new-instance v13, Ls/a;

    .line 101
    .line 102
    invoke-direct {v13}, Ls/a;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v13, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 106
    .line 107
    iget-object v15, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->c:Lr/a;

    .line 108
    .line 109
    iget-boolean v15, v15, Lr/a;->b:Z

    .line 110
    .line 111
    xor-int/2addr v15, v14

    .line 112
    iput-boolean v15, v13, Ls/b;->d:Z

    .line 113
    .line 114
    :cond_2
    iget-object v13, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 115
    .line 116
    iget-boolean v15, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->f:Z

    .line 117
    .line 118
    iput-boolean v15, v13, Ls/b;->i:Z

    .line 119
    .line 120
    const-string v15, "bdoauth_err"

    .line 121
    .line 122
    const-string v11, "qr_code"

    .line 123
    .line 124
    const-string v14, "web"

    .line 125
    .line 126
    const-string v12, "sso"

    .line 127
    .line 128
    const-string v3, "msg"

    .line 129
    .line 130
    move-object/from16 v17, v10

    .line 131
    .line 132
    const-string v10, "code"

    .line 133
    .line 134
    move-object/from16 v18, v15

    .line 135
    .line 136
    const-string v15, "1"

    .line 137
    .line 138
    move-object/from16 v19, v3

    .line 139
    .line 140
    const-string v3, "oauth_type"

    .line 141
    .line 142
    move-object/from16 v20, v8

    .line 143
    .line 144
    const-string v8, "showLogin"

    .line 145
    .line 146
    if-eqz v0, :cond_3

    .line 147
    .line 148
    if-nez p3, :cond_4

    .line 149
    .line 150
    :cond_3
    move-object/from16 v0, v17

    .line 151
    .line 152
    move-object/from16 v4, v18

    .line 153
    .line 154
    move-object/from16 v13, v19

    .line 155
    .line 156
    move-object/from16 v7, v20

    .line 157
    .line 158
    goto/16 :goto_b

    .line 159
    .line 160
    :cond_4
    move-object/from16 v21, v11

    .line 161
    .line 162
    const/4 v11, -0x1

    .line 163
    if-eq v0, v11, :cond_5

    .line 164
    .line 165
    goto/16 :goto_15

    .line 166
    .line 167
    :cond_5
    const/16 v11, 0x3e9

    .line 168
    .line 169
    if-ne v2, v11, :cond_6

    .line 170
    .line 171
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->c:Lr/a;

    .line 172
    .line 173
    iget-char v0, v0, Lr/a;->a:C

    .line 174
    .line 175
    const/4 v11, 0x3

    .line 176
    if-ne v0, v11, :cond_6

    .line 177
    .line 178
    const/4 v11, 0x1

    .line 179
    iput-boolean v11, v13, Ls/b;->d:Z

    .line 180
    .line 181
    :cond_6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 182
    .line 183
    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v11, "accessToken"

    .line 187
    .line 188
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    move-object/from16 p2, v11

    .line 197
    .line 198
    const/16 v11, 0x3e9

    .line 199
    .line 200
    if-ne v2, v11, :cond_7

    .line 201
    .line 202
    iget-object v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->c:Lr/a;

    .line 203
    .line 204
    iget-char v11, v11, Lr/a;->a:C

    .line 205
    .line 206
    move-object/from16 p3, v13

    .line 207
    .line 208
    const/4 v13, 0x3

    .line 209
    if-ne v11, v13, :cond_8

    .line 210
    .line 211
    iget-object v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 212
    .line 213
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    iput-boolean v13, v11, Ls/b;->h:Z

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    move-object/from16 v16, v7

    .line 222
    .line 223
    move-object/from16 v11, v21

    .line 224
    .line 225
    goto/16 :goto_5

    .line 226
    .line 227
    :cond_7
    move-object/from16 p3, v13

    .line 228
    .line 229
    :cond_8
    :goto_1
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    if-eqz v11, :cond_9

    .line 234
    .line 235
    iget-object v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 236
    .line 237
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    iput-boolean v13, v11, Ls/b;->d:Z

    .line 246
    .line 247
    :cond_9
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v11

    .line 251
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v11

    .line 255
    if-eqz v11, :cond_a

    .line 256
    .line 257
    iget-object v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 258
    .line 259
    iput-object v7, v11, Ls/b;->m:Ljava/lang/String;

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_a
    iget-object v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 263
    .line 264
    iput-object v15, v11, Ls/b;->m:Ljava/lang/String;

    .line 265
    .line 266
    :goto_2
    iget-object v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 267
    .line 268
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v13

    .line 272
    iput-object v13, v11, Ls/b;->n:Ljava/lang/String;

    .line 273
    .line 274
    iget-object v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 275
    .line 276
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    iput-object v13, v11, Ls/b;->j:Ljava/lang/String;

    .line 281
    .line 282
    iget-object v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 283
    .line 284
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iput-object v0, v11, Ls/b;->k:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-nez v0, :cond_d

    .line 295
    .line 296
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_d

    .line 301
    .line 302
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 303
    .line 304
    const/16 v11, -0xd0

    .line 305
    .line 306
    invoke-virtual {v0, v11}, Ls/b;->c(I)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->b:Lq/a;

    .line 310
    .line 311
    iget-object v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 312
    .line 313
    invoke-interface {v0, v11}, Lq/b;->onFailure(Ls/b;)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Ljava/util/HashMap;

    .line 317
    .line 318
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    .line 320
    .line 321
    const/16 v11, 0x3e9

    .line 322
    .line 323
    if-ne v2, v11, :cond_b

    .line 324
    .line 325
    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    :goto_3
    move-object/from16 v11, v21

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_b
    const/16 v11, 0x3ea

    .line 332
    .line 333
    if-ne v2, v11, :cond_c

    .line 334
    .line 335
    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_c
    move-object/from16 v11, v21

    .line 340
    .line 341
    :try_start_1
    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 347
    .line 348
    .line 349
    move-object/from16 v16, v7

    .line 350
    .line 351
    :try_start_2
    iget-object v7, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 352
    .line 353
    invoke-virtual {v7}, Ls/b;->a()I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    move-object/from16 v7, v20

    .line 361
    .line 362
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    invoke-virtual {v0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    iget-object v7, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 373
    .line 374
    invoke-virtual {v7}, Ls/b;->b()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    move-object/from16 v13, v19

    .line 379
    .line 380
    invoke-virtual {v0, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-object/from16 v7, v18

    .line 384
    .line 385
    invoke-static {v7, v0}, Lo/e;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 386
    .line 387
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    const-string v7, "authorizeCallBack, Activity.RESULT_OK, onFailure lowPass, result "

    .line 394
    .line 395
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    iget-object v7, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 399
    .line 400
    invoke-virtual {v7}, Ls/a;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    move-object/from16 v7, v17

    .line 416
    .line 417
    invoke-static {v7, v0}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 418
    .line 419
    .line 420
    return-void

    .line 421
    :catch_1
    move-exception v0

    .line 422
    goto :goto_5

    .line 423
    :catch_2
    move-exception v0

    .line 424
    move-object/from16 v16, v7

    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_d
    move-object/from16 v16, v7

    .line 428
    .line 429
    move-object/from16 v11, v21

    .line 430
    .line 431
    goto :goto_6

    .line 432
    :goto_5
    invoke-static {v0}, Lo/d;->c(Ljava/lang/Throwable;)V

    .line 433
    .line 434
    .line 435
    :goto_6
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    .line 436
    .line 437
    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    iget-object v7, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 441
    .line 442
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    invoke-virtual {v7, v9}, Ls/a;->f(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-object v7, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 450
    .line 451
    const-string v9, "state"

    .line 452
    .line 453
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    invoke-virtual {v7, v9}, Ls/a;->g(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 461
    .line 462
    .line 463
    move-result v7

    .line 464
    if-eqz v7, :cond_e

    .line 465
    .line 466
    iget-object v7, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 467
    .line 468
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v9

    .line 476
    iput-boolean v9, v7, Ls/b;->d:Z

    .line 477
    .line 478
    goto :goto_7

    .line 479
    :catch_3
    move-exception v0

    .line 480
    goto :goto_8

    .line 481
    :cond_e
    :goto_7
    iget-object v7, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 482
    .line 483
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v8

    .line 491
    if-eqz v8, :cond_f

    .line 492
    .line 493
    move-object/from16 v15, v16

    .line 494
    .line 495
    :cond_f
    iput-object v15, v7, Ls/b;->m:Ljava/lang/String;

    .line 496
    .line 497
    iget-object v7, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 498
    .line 499
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    iput-object v6, v7, Ls/b;->n:Ljava/lang/String;

    .line 504
    .line 505
    iget-object v6, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 506
    .line 507
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    iput-object v5, v6, Ls/b;->j:Ljava/lang/String;

    .line 512
    .line 513
    iget-object v5, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 514
    .line 515
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    iput-object v0, v5, Ls/b;->k:Ljava/lang/String;

    .line 520
    .line 521
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 522
    .line 523
    const/4 v4, 0x0

    .line 524
    invoke-virtual {v0, v4}, Ls/b;->c(I)V

    .line 525
    .line 526
    .line 527
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->b:Lq/a;

    .line 528
    .line 529
    iget-object v4, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 530
    .line 531
    invoke-interface {v0, v4}, Lq/b;->onSuccess(Ls/b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 532
    .line 533
    .line 534
    goto :goto_9

    .line 535
    :goto_8
    invoke-static {v0}, Lo/d;->c(Ljava/lang/Throwable;)V

    .line 536
    .line 537
    .line 538
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 539
    .line 540
    const/16 v4, -0xc9

    .line 541
    .line 542
    invoke-virtual {v0, v4}, Ls/b;->c(I)V

    .line 543
    .line 544
    .line 545
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->b:Lq/a;

    .line 546
    .line 547
    iget-object v4, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 548
    .line 549
    invoke-interface {v0, v4}, Lq/b;->onFailure(Ls/b;)V

    .line 550
    .line 551
    .line 552
    :goto_9
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/c;->g:Ljava/lang/String;

    .line 553
    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .line 558
    .line 559
    const-string v5, "authorizeCallBack, Activity.RESULT_OK, code = "

    .line 560
    .line 561
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    iget-object v5, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 565
    .line 566
    invoke-virtual {v5}, Ls/a;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v4

    .line 581
    invoke-static {v0, v4}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    new-instance v0, Ljava/util/HashMap;

    .line 585
    .line 586
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 587
    .line 588
    .line 589
    const/16 v4, 0x3e9

    .line 590
    .line 591
    if-ne v2, v4, :cond_10

    .line 592
    .line 593
    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    goto :goto_a

    .line 597
    :cond_10
    const/16 v4, 0x3ea

    .line 598
    .line 599
    if-ne v2, v4, :cond_11

    .line 600
    .line 601
    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    goto :goto_a

    .line 605
    :cond_11
    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    :goto_a
    const-string v2, "bdoauth_suc"

    .line 609
    .line 610
    invoke-static {v2, v0}, Lo/e;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 611
    .line 612
    .line 613
    goto/16 :goto_15

    .line 614
    .line 615
    :goto_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 616
    .line 617
    .line 618
    move-result v5

    .line 619
    const-string v6, "\u7528\u6237\u62d2\u7edd\u6253\u5f00APP"

    .line 620
    .line 621
    move/from16 p2, v5

    .line 622
    .line 623
    const-string v5, "isInstallBDApp: "

    .line 624
    .line 625
    move-object/from16 v18, v4

    .line 626
    .line 627
    const/16 v4, -0xd1

    .line 628
    .line 629
    if-eqz p2, :cond_12

    .line 630
    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    iget-boolean v3, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->f:Z

    .line 640
    .line 641
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    const-string v3, ", ERROR_CODE_USER_REJECT_OPEN_APP"

    .line 645
    .line 646
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-static {v0, v2}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 661
    .line 662
    iput v4, v0, Ls/b;->f:I

    .line 663
    .line 664
    iput-object v6, v0, Ls/b;->g:Ljava/lang/String;

    .line 665
    .line 666
    const/4 v4, 0x0

    .line 667
    iput-boolean v4, v0, Ls/b;->l:Z

    .line 668
    .line 669
    invoke-virtual {v0, v7}, Ls/b;->d(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 673
    .line 674
    const/4 v11, 0x1

    .line 675
    iput-boolean v11, v0, Ls/b;->e:Z

    .line 676
    .line 677
    iput-boolean v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->e:Z

    .line 678
    .line 679
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->c:Lr/a;

    .line 680
    .line 681
    iget-object v0, v0, Lr/a;->c:Ljava/lang/String;

    .line 682
    .line 683
    invoke-virtual {v1, v0, v11}, Lcom/baidu/oauth/sdkbqt/auth/c;->d(Ljava/lang/String;Z)V

    .line 684
    .line 685
    .line 686
    return-void

    .line 687
    :cond_12
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    .line 688
    .line 689
    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    iget-object v4, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    .line 693
    .line 694
    move-object/from16 p3, v6

    .line 695
    .line 696
    :try_start_5
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    move-result v6

    .line 700
    invoke-virtual {v4, v6}, Ls/b;->c(I)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    if-eqz v4, :cond_14

    .line 708
    .line 709
    iget-object v4, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 710
    .line 711
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-virtual {v4, v0}, Ls/b;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 716
    .line 717
    .line 718
    goto :goto_e

    .line 719
    :catch_4
    move-exception v0

    .line 720
    goto :goto_c

    .line 721
    :catch_5
    move-exception v0

    .line 722
    move-object/from16 p3, v6

    .line 723
    .line 724
    :goto_c
    sget-object v4, Lcom/baidu/oauth/sdkbqt/auth/c;->g:Ljava/lang/String;

    .line 725
    .line 726
    new-instance v6, Ljava/lang/StringBuilder;

    .line 727
    .line 728
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    iget-boolean v5, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->f:Z

    .line 735
    .line 736
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    const-string v5, ", RESULT_CANCELED || json == null, "

    .line 740
    .line 741
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-static {v4, v0}, Lo/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 759
    .line 760
    iget-boolean v4, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->f:Z

    .line 761
    .line 762
    if-nez v4, :cond_13

    .line 763
    .line 764
    const/16 v4, -0xcf

    .line 765
    .line 766
    goto :goto_d

    .line 767
    :cond_13
    const/16 v4, -0xd1

    .line 768
    .line 769
    :goto_d
    invoke-virtual {v0, v4}, Ls/b;->c(I)V

    .line 770
    .line 771
    .line 772
    :cond_14
    :goto_e
    iget-boolean v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->e:Z

    .line 773
    .line 774
    if-nez v0, :cond_19

    .line 775
    .line 776
    const/16 v4, 0x3e9

    .line 777
    .line 778
    if-ne v2, v4, :cond_19

    .line 779
    .line 780
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->c:Lr/a;

    .line 781
    .line 782
    iget-char v0, v0, Lr/a;->a:C

    .line 783
    .line 784
    const/4 v4, 0x3

    .line 785
    if-ne v0, v4, :cond_19

    .line 786
    .line 787
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 788
    .line 789
    invoke-virtual {v0}, Ls/b;->a()I

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    const/16 v4, -0xcd

    .line 794
    .line 795
    if-eq v0, v4, :cond_19

    .line 796
    .line 797
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    .line 798
    .line 799
    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    iget-object v2, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 803
    .line 804
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 805
    .line 806
    .line 807
    move-result v3

    .line 808
    iput v3, v2, Ls/b;->f:I

    .line 809
    .line 810
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 811
    .line 812
    .line 813
    move-result v2

    .line 814
    if-eqz v2, :cond_15

    .line 815
    .line 816
    iget-object v2, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 817
    .line 818
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v3

    .line 822
    iput-object v3, v2, Ls/b;->g:Ljava/lang/String;

    .line 823
    .line 824
    goto :goto_f

    .line 825
    :catch_6
    move-exception v0

    .line 826
    goto :goto_10

    .line 827
    :cond_15
    :goto_f
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 828
    .line 829
    .line 830
    move-result v2

    .line 831
    if-eqz v2, :cond_16

    .line 832
    .line 833
    iget-object v2, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 834
    .line 835
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v0

    .line 843
    iput-boolean v0, v2, Ls/b;->d:Z

    .line 844
    .line 845
    :cond_16
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 846
    .line 847
    invoke-virtual {v0, v7}, Ls/b;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 848
    .line 849
    .line 850
    goto :goto_13

    .line 851
    :goto_10
    sget-object v2, Lcom/baidu/oauth/sdkbqt/auth/c;->g:Ljava/lang/String;

    .line 852
    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    .line 854
    .line 855
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .line 857
    .line 858
    const-string v4, "first InProgress,"

    .line 859
    .line 860
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    invoke-static {v2, v0}, Lo/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 875
    .line 876
    .line 877
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 878
    .line 879
    iget-boolean v2, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->f:Z

    .line 880
    .line 881
    if-nez v2, :cond_17

    .line 882
    .line 883
    const/16 v4, -0xcf

    .line 884
    .line 885
    goto :goto_11

    .line 886
    :cond_17
    const/16 v4, -0xd1

    .line 887
    .line 888
    :goto_11
    iput v4, v0, Ls/b;->f:I

    .line 889
    .line 890
    if-nez v2, :cond_18

    .line 891
    .line 892
    const-string v6, "\u5f53\u524d\u8bbe\u5907\u672a\u5b89\u88c5\u767e\u5ea6APP"

    .line 893
    .line 894
    goto :goto_12

    .line 895
    :cond_18
    move-object/from16 v6, p3

    .line 896
    .line 897
    :goto_12
    iput-object v6, v0, Ls/b;->g:Ljava/lang/String;

    .line 898
    .line 899
    :goto_13
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 900
    .line 901
    const/4 v11, 0x1

    .line 902
    iput-boolean v11, v0, Ls/b;->e:Z

    .line 903
    .line 904
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->c:Lr/a;

    .line 905
    .line 906
    iget-object v0, v0, Lr/a;->c:Ljava/lang/String;

    .line 907
    .line 908
    invoke-virtual {v1, v0, v11}, Lcom/baidu/oauth/sdkbqt/auth/c;->d(Ljava/lang/String;Z)V

    .line 909
    .line 910
    .line 911
    iput-boolean v11, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->e:Z

    .line 912
    .line 913
    goto :goto_15

    .line 914
    :cond_19
    iget-object v0, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->b:Lq/a;

    .line 915
    .line 916
    iget-object v4, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 917
    .line 918
    invoke-interface {v0, v4}, Lq/b;->onFailure(Ls/b;)V

    .line 919
    .line 920
    .line 921
    const/4 v4, 0x0

    .line 922
    iput-boolean v4, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->e:Z

    .line 923
    .line 924
    new-instance v0, Ljava/util/HashMap;

    .line 925
    .line 926
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 927
    .line 928
    .line 929
    const/16 v4, 0x3e9

    .line 930
    .line 931
    if-ne v2, v4, :cond_1a

    .line 932
    .line 933
    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    goto :goto_14

    .line 937
    :cond_1a
    const/16 v4, 0x3ea

    .line 938
    .line 939
    if-ne v2, v4, :cond_1b

    .line 940
    .line 941
    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    goto :goto_14

    .line 945
    :cond_1b
    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 949
    .line 950
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    .line 952
    .line 953
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 954
    .line 955
    invoke-virtual {v3}, Ls/b;->a()I

    .line 956
    .line 957
    .line 958
    move-result v3

    .line 959
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    iget-object v2, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 973
    .line 974
    invoke-virtual {v2}, Ls/b;->b()Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v2

    .line 978
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-object/from16 v4, v18

    .line 982
    .line 983
    invoke-static {v4, v0}, Lo/e;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 984
    .line 985
    .line 986
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/c;->g:Ljava/lang/String;

    .line 987
    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    .line 989
    .line 990
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .line 992
    .line 993
    const-string v3, "authorizeCallBack, Activity.RESULT_CANCELED, onFailure, result "

    .line 994
    .line 995
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    iget-object v3, v1, Lcom/baidu/oauth/sdkbqt/auth/c;->d:Ls/a;

    .line 999
    .line 1000
    invoke-virtual {v3}, Ls/a;->toString()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v3

    .line 1004
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v2

    .line 1011
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v2

    .line 1015
    invoke-static {v0, v2}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    .line 1017
    .line 1018
    :goto_15
    return-void
.end method
