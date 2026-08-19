.class public Lp/b;
.super Lcom/baidu/passbqt/http/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lp/c;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lp/d;

.field public final synthetic f:Ljava/util/HashMap;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:I

.field public final synthetic j:Lp/a;


# direct methods
.method public constructor <init>(Lp/a;Landroid/os/Looper;ZLp/c;Ljava/lang/String;Lp/d;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp/b;->j:Lp/a;

    .line 2
    .line 3
    iput-object p4, p0, Lp/b;->c:Lp/c;

    .line 4
    .line 5
    iput-object p5, p0, Lp/b;->d:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p6, p0, Lp/b;->e:Lp/d;

    .line 8
    .line 9
    iput-object p7, p0, Lp/b;->f:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p8, p0, Lp/b;->g:Ljava/util/List;

    .line 12
    .line 13
    iput-object p9, p0, Lp/b;->h:Ljava/lang/String;

    .line 14
    .line 15
    iput p10, p0, Lp/b;->i:I

    .line 16
    .line 17
    invoke-direct {p0, p2, p3}, Lcom/baidu/passbqt/http/c;-><init>(Landroid/os/Looper;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/b;->c:Lp/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lp/c;->c(ILjava/lang/String;Ljava/util/HashMap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 10

    .line 1
    instance-of v0, p1, Lcom/baidu/passbqt/http/HttpErrorException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/baidu/passbqt/http/HttpErrorException;

    .line 8
    .line 9
    iget v0, v0, Lcom/baidu/passbqt/http/HttpErrorException;->a:I

    .line 10
    .line 11
    const/16 v2, 0x130

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lp/b;->j:Lp/a;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lp/a;->h(Lp/a;Z)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lp/b;->j:Lp/a;

    .line 21
    .line 22
    invoke-static {v0}, Lp/a;->g(Lp/a;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lp/b;->j:Lp/a;

    .line 29
    .line 30
    invoke-static {p1, v1}, Lp/a;->h(Lp/a;Z)Z

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lp/b;->j:Lp/a;

    .line 34
    .line 35
    iget-object v3, p0, Lp/b;->d:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v4, p0, Lp/b;->e:Lp/d;

    .line 38
    .line 39
    iget-object v5, p0, Lp/b;->f:Ljava/util/HashMap;

    .line 40
    .line 41
    iget-object v6, p0, Lp/b;->g:Ljava/util/List;

    .line 42
    .line 43
    iget-object v7, p0, Lp/b;->h:Ljava/lang/String;

    .line 44
    .line 45
    iget v8, p0, Lp/b;->i:I

    .line 46
    .line 47
    iget-object v9, p0, Lp/b;->c:Lp/c;

    .line 48
    .line 49
    invoke-virtual/range {v2 .. v9}, Lp/a;->b(Ljava/lang/String;Lp/d;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;ILp/c;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lp/b;->j:Lp/a;

    .line 54
    .line 55
    iget-object v1, p0, Lp/b;->c:Lp/c;

    .line 56
    .line 57
    invoke-static {v0, v1, p1, p2}, Lp/a;->e(Lp/a;Lp/c;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/b;->c:Lp/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp/c;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
