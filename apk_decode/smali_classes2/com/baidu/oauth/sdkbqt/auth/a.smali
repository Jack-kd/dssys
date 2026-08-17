.class public Lcom/baidu/oauth/sdkbqt/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/oauth/sdkbqt/auth/a$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/baidu/oauth/sdkbqt/auth/a$a;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->g:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->i:Z

    .line 20
    .line 21
    const-string v0, "AuthInfo Constructor params context is null"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lo/g;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "AuthInfo Constructor params appKey is null"

    .line 27
    .line 28
    invoke-static {p2, v0}, Lo/g;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "AuthInfo Constructor params redirectUrl is null"

    .line 32
    .line 33
    invoke-static {p3, v0}, Lo/g;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "AuthInfo Constructor params scope is null"

    .line 37
    .line 38
    invoke-static {p4, v0}, Lo/g;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->a:Landroid/content/Context;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->b:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p3, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->c:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p4, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->d:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->e:Ljava/lang/String;

    .line 58
    .line 59
    iput-object p6, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->g:Ljava/lang/String;

    .line 60
    .line 61
    iput-boolean p5, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->i:Z

    .line 62
    .line 63
    if-eqz p5, :cond_0

    .line 64
    .line 65
    invoke-static {p1, p2}, Lo/g;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->f:Ljava/lang/String;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    invoke-static {p1, p2}, Lo/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->f:Ljava/lang/String;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/baidu/oauth/sdkbqt/auth/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->h:Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Z)Lcom/baidu/oauth/sdkbqt/auth/a;
    .locals 1

    .line 1
    sput-boolean p1, Lo/d;->a:Z

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "packageName:"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " ,packSign= "

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->f:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " ,useSha1= "

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->i:Z

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "oauthAuthInfo"

    .line 47
    .line 48
    invoke-static {v0, p1}, Lo/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public j(Lcom/baidu/oauth/sdkbqt/auth/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/a;->h:Lcom/baidu/oauth/sdkbqt/auth/a$a;

    .line 2
    .line 3
    return-void
.end method
