.class public final Lorg/eclipse/jetty/http/g$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:LL1/d;

.field public b:LL1/d;

.field public c:Lorg/eclipse/jetty/http/g$e;


# direct methods
.method public constructor <init>(LL1/d;LL1/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jetty/http/g$e;->a:LL1/d;

    .line 4
    iput-object p2, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/eclipse/jetty/http/g$e;->c:Lorg/eclipse/jetty/http/g$e;

    return-void
.end method

.method public synthetic constructor <init>(LL1/d;LL1/d;Lorg/eclipse/jetty/http/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/http/g$e;-><init>(LL1/d;LL1/d;)V

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jetty/http/g$e;)LL1/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/http/g$e;->a:LL1/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lorg/eclipse/jetty/http/g$e;)LL1/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lorg/eclipse/jetty/http/g$e;)Lorg/eclipse/jetty/http/g$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/http/g$e;->c:Lorg/eclipse/jetty/http/g$e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lorg/eclipse/jetty/http/g$e;Lorg/eclipse/jetty/http/g$e;)Lorg/eclipse/jetty/http/g$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/http/g$e;->c:Lorg/eclipse/jetty/http/g$e;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 2
    .line 3
    invoke-static {v0}, LL1/g;->i(LL1/d;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g$e;->a:LL1/d;

    .line 2
    .line 3
    invoke-static {v0}, LL1/g;->f(LL1/d;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g()I
    .locals 2

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/http/g$e;->a:LL1/d;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LL1/e;->e(LL1/d;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 2
    .line 3
    invoke-static {v0}, LL1/g;->f(LL1/d;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i()LL1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()I
    .locals 2

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/i;->d:Lorg/eclipse/jetty/http/i;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LL1/e;->e(LL1/d;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public k(LL1/d;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g$e;->a:LL1/d;

    .line 2
    .line 3
    instance-of v1, v0, LL1/e$a;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, LL1/e$a;

    .line 9
    .line 10
    invoke-virtual {v0}, LL1/e$a;->h()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    const/16 v1, 0x3a

    .line 17
    .line 18
    const/16 v3, 0xd

    .line 19
    .line 20
    const/16 v4, 0xa

    .line 21
    .line 22
    if-ltz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lorg/eclipse/jetty/http/g$e;->a:LL1/d;

    .line 25
    .line 26
    invoke-interface {p1, v0}, LL1/d;->m0(LL1/d;)I

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/g$e;->a:LL1/d;

    .line 31
    .line 32
    invoke-interface {v0}, LL1/d;->getIndex()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v5, p0, Lorg/eclipse/jetty/http/g$e;->a:LL1/d;

    .line 37
    .line 38
    invoke-interface {v5}, LL1/d;->n0()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    :goto_1
    if-ge v0, v5, :cond_3

    .line 43
    .line 44
    iget-object v6, p0, Lorg/eclipse/jetty/http/g$e;->a:LL1/d;

    .line 45
    .line 46
    add-int/lit8 v7, v0, 0x1

    .line 47
    .line 48
    invoke-interface {v6, v0}, LL1/d;->k0(I)B

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eq v0, v4, :cond_2

    .line 53
    .line 54
    if-eq v0, v3, :cond_2

    .line 55
    .line 56
    if-eq v0, v1, :cond_2

    .line 57
    .line 58
    invoke-interface {p1, v0}, LL1/d;->put(B)V

    .line 59
    .line 60
    .line 61
    :cond_2
    move v0, v7

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    :goto_2
    invoke-interface {p1, v1}, LL1/d;->put(B)V

    .line 64
    .line 65
    .line 66
    const/16 v0, 0x20

    .line 67
    .line 68
    invoke-interface {p1, v0}, LL1/d;->put(B)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 72
    .line 73
    instance-of v1, v0, LL1/e$a;

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    check-cast v0, LL1/e$a;

    .line 78
    .line 79
    invoke-virtual {v0}, LL1/e$a;->h()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    :cond_4
    if-ltz v2, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 86
    .line 87
    invoke-interface {p1, v0}, LL1/d;->m0(LL1/d;)I

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 92
    .line 93
    invoke-interface {v0}, LL1/d;->getIndex()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v1, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 98
    .line 99
    invoke-interface {v1}, LL1/d;->n0()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :goto_3
    if-ge v0, v1, :cond_7

    .line 104
    .line 105
    iget-object v2, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 106
    .line 107
    add-int/lit8 v5, v0, 0x1

    .line 108
    .line 109
    invoke-interface {v2, v0}, LL1/d;->k0(I)B

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eq v0, v4, :cond_6

    .line 114
    .line 115
    if-eq v0, v3, :cond_6

    .line 116
    .line 117
    invoke-interface {p1, v0}, LL1/d;->put(B)V

    .line 118
    .line 119
    .line 120
    :cond_6
    move v0, v5

    .line 121
    goto :goto_3

    .line 122
    :cond_7
    :goto_4
    invoke-static {p1}, LL1/g;->c(LL1/d;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/g$e;->f()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lorg/eclipse/jetty/http/g$e;->b:LL1/d;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/eclipse/jetty/http/g$e;->c:Lorg/eclipse/jetty/http/g$e;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "->"

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "]"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
