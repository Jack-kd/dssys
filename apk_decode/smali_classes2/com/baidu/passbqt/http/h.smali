.class public Lcom/baidu/passbqt/http/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/baidu/passbqt/http/c;

.field public d:Lcom/baidu/passbqt/http/j;

.field public e:Lcom/baidu/passbqt/http/Method;

.field public f:I

.field public volatile g:Z


# direct methods
.method public constructor <init>(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/j;ILcom/baidu/passbqt/http/b;Lcom/baidu/passbqt/http/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p5, 0x0

    .line 5
    iput-boolean p5, p0, Lcom/baidu/passbqt/http/h;->g:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/baidu/passbqt/http/h;->f:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/baidu/passbqt/http/h;->e:Lcom/baidu/passbqt/http/Method;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/baidu/passbqt/http/h;->b:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/baidu/passbqt/http/h;->d:Lcom/baidu/passbqt/http/j;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/baidu/passbqt/http/h;->c:Lcom/baidu/passbqt/http/c;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/passbqt/http/h;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/passbqt/http/h;->d:Lcom/baidu/passbqt/http/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/baidu/passbqt/http/j;->g:Lcom/baidu/passbqt/http/ReqPriority;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/baidu/passbqt/http/h;->d:Lcom/baidu/passbqt/http/j;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/baidu/passbqt/http/j;->g:Lcom/baidu/passbqt/http/ReqPriority;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/baidu/passbqt/http/h;->f:I

    .line 12
    .line 13
    iget p1, p1, Lcom/baidu/passbqt/http/h;->f:I

    .line 14
    .line 15
    sub-int/2addr v0, p1

    .line 16
    return v0

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-int/2addr p1, v0

    .line 26
    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/passbqt/http/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/passbqt/http/h;->a(Lcom/baidu/passbqt/http/h;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/passbqt/http/h;->c:Lcom/baidu/passbqt/http/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/passbqt/http/c;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "network request already run"

    .line 9
    .line 10
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "PassHttpClientRequest"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lu/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    new-instance v0, Lcom/baidu/passbqt/http/e;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/baidu/passbqt/http/e;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v2}, Lcom/baidu/passbqt/http/e;->a(Lcom/baidu/passbqt/http/b;)Lcom/baidu/passbqt/http/e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/baidu/passbqt/http/e;->f(Lcom/baidu/passbqt/http/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "PassHttpClientRequestrun "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Lu/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/baidu/passbqt/http/h;->c:Lcom/baidu/passbqt/http/c;

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v0, v2}, Lcom/baidu/passbqt/http/c;->g(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/passbqt/http/h;->c:Lcom/baidu/passbqt/http/c;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/baidu/passbqt/http/c;->k()V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method
