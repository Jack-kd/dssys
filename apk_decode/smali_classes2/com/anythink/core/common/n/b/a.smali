.class public final Lcom/anythink/core/common/n/b/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/anythink/core/common/n/b/v;

.field final b:Lcom/anythink/core/common/n/b/q;

.field final c:Ljavax/net/SocketFactory;

.field final d:Lcom/anythink/core/common/n/b/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/n/b/ab;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/n/b/l;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;

.field final i:Ljavax/net/ssl/SSLSocketFactory;

.field final j:Ljavax/net/ssl/HostnameVerifier;

.field final k:Lcom/anythink/core/common/n/b/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/anythink/core/common/n/b/q;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/anythink/core/common/n/b/g;Lcom/anythink/core/common/n/b/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/anythink/core/common/n/b/q;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/anythink/core/common/n/b/g;",
            "Lcom/anythink/core/common/n/b/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/n/b/ab;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/n/b/l;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p8

    .line 2
    move-object/from16 v1, p12

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/anythink/core/common/n/b/v$a;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/anythink/core/common/n/b/v$a;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "http"

    .line 13
    .line 14
    const-string v4, "https"

    .line 15
    .line 16
    if-eqz p5, :cond_0

    .line 17
    .line 18
    move-object v5, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v5, v3

    .line 21
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    iput-object v3, v2, Lcom/anythink/core/common/n/b/v$a;->a:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_9

    .line 35
    .line 36
    iput-object v4, v2, Lcom/anythink/core/common/n/b/v$a;->a:Ljava/lang/String;

    .line 37
    .line 38
    :goto_1
    invoke-virtual {v2, p1}, Lcom/anythink/core/common/n/b/v$a;->a(Ljava/lang/String;)Lcom/anythink/core/common/n/b/v$a;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-lez p2, :cond_8

    .line 43
    .line 44
    const v2, 0xffff

    .line 45
    .line 46
    .line 47
    if-gt p2, v2, :cond_8

    .line 48
    .line 49
    iput p2, p1, Lcom/anythink/core/common/n/b/v$a;->e:I

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/anythink/core/common/n/b/v$a;->b()Lcom/anythink/core/common/n/b/v;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/anythink/core/common/n/b/a;->a:Lcom/anythink/core/common/n/b/v;

    .line 56
    .line 57
    if-eqz p3, :cond_7

    .line 58
    .line 59
    iput-object p3, p0, Lcom/anythink/core/common/n/b/a;->b:Lcom/anythink/core/common/n/b/q;

    .line 60
    .line 61
    if-eqz p4, :cond_6

    .line 62
    .line 63
    iput-object p4, p0, Lcom/anythink/core/common/n/b/a;->c:Ljavax/net/SocketFactory;

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iput-object v0, p0, Lcom/anythink/core/common/n/b/a;->d:Lcom/anythink/core/common/n/b/b;

    .line 68
    .line 69
    if-eqz p10, :cond_4

    .line 70
    .line 71
    invoke-static/range {p10 .. p10}, Lcom/anythink/core/common/n/b/a/c;->a(Ljava/util/List;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/anythink/core/common/n/b/a;->e:Ljava/util/List;

    .line 76
    .line 77
    if-eqz p11, :cond_3

    .line 78
    .line 79
    invoke-static/range {p11 .. p11}, Lcom/anythink/core/common/n/b/a/c;->a(Ljava/util/List;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/anythink/core/common/n/b/a;->f:Ljava/util/List;

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    iput-object v1, p0, Lcom/anythink/core/common/n/b/a;->g:Ljava/net/ProxySelector;

    .line 88
    .line 89
    move-object/from16 p1, p9

    .line 90
    .line 91
    iput-object p1, p0, Lcom/anythink/core/common/n/b/a;->h:Ljava/net/Proxy;

    .line 92
    .line 93
    iput-object p5, p0, Lcom/anythink/core/common/n/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 94
    .line 95
    iput-object p6, p0, Lcom/anythink/core/common/n/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 96
    .line 97
    iput-object p7, p0, Lcom/anythink/core/common/n/b/a;->k:Lcom/anythink/core/common/n/b/g;

    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 101
    .line 102
    const-string p2, "proxySelector == null"

    .line 103
    .line 104
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 109
    .line 110
    const-string p2, "connectionSpecs == null"

    .line 111
    .line 112
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 117
    .line 118
    const-string p2, "protocols == null"

    .line 119
    .line 120
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 125
    .line 126
    const-string p2, "proxyAuthenticator == null"

    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 133
    .line 134
    const-string p2, "socketFactory == null"

    .line 135
    .line 136
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    .line 141
    .line 142
    const-string p2, "dns == null"

    .line 143
    .line 144
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string p3, "unexpected port: "

    .line 151
    .line 152
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    const-string p2, "unexpected scheme: "

    .line 167
    .line 168
    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1
.end method


# virtual methods
.method public final a()Lcom/anythink/core/common/n/b/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->a:Lcom/anythink/core/common/n/b/v;

    return-object v0
.end method

.method public final a(Lcom/anythink/core/common/n/b/a;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->b:Lcom/anythink/core/common/n/b/q;

    iget-object v1, p1, Lcom/anythink/core/common/n/b/a;->b:Lcom/anythink/core/common/n/b/q;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->d:Lcom/anythink/core/common/n/b/b;

    iget-object v1, p1, Lcom/anythink/core/common/n/b/a;->d:Lcom/anythink/core/common/n/b/b;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/anythink/core/common/n/b/a;->e:Ljava/util/List;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/anythink/core/common/n/b/a;->f:Ljava/util/List;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->g:Ljava/net/ProxySelector;

    iget-object v1, p1, Lcom/anythink/core/common/n/b/a;->g:Ljava/net/ProxySelector;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->h:Ljava/net/Proxy;

    iget-object v1, p1, Lcom/anythink/core/common/n/b/a;->h:Ljava/net/Proxy;

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lcom/anythink/core/common/n/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lcom/anythink/core/common/n/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->k:Lcom/anythink/core/common/n/b/g;

    iget-object v1, p1, Lcom/anythink/core/common/n/b/a;->k:Lcom/anythink/core/common/n/b/g;

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->a:Lcom/anythink/core/common/n/b/v;

    .line 12
    iget v0, v0, Lcom/anythink/core/common/n/b/v;->n:I

    .line 13
    iget-object p1, p1, Lcom/anythink/core/common/n/b/a;->a:Lcom/anythink/core/common/n/b/v;

    .line 14
    iget p1, p1, Lcom/anythink/core/common/n/b/v;->n:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/anythink/core/common/n/b/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->b:Lcom/anythink/core/common/n/b/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->c:Ljavax/net/SocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lcom/anythink/core/common/n/b/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->d:Lcom/anythink/core/common/n/b/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/n/b/ab;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/anythink/core/common/n/b/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->a:Lcom/anythink/core/common/n/b/v;

    .line 6
    .line 7
    check-cast p1, Lcom/anythink/core/common/n/b/a;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/anythink/core/common/n/b/a;->a:Lcom/anythink/core/common/n/b/v;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/n/b/v;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/n/b/a;->a(Lcom/anythink/core/common/n/b/a;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/n/b/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->g:Ljava/net/ProxySelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->h:Ljava/net/Proxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->a:Lcom/anythink/core/common/n/b/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/core/common/n/b/v;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x20f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->b:Lcom/anythink/core/common/n/b/q;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->d:Lcom/anythink/core/common/n/b/b;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->e:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->f:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->g:Ljava/net/ProxySelector;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    .line 55
    .line 56
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->h:Ljava/net/Proxy;

    .line 57
    .line 58
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/2addr v0, v1

    .line 63
    mul-int/lit8 v0, v0, 0x1f

    .line 64
    .line 65
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 66
    .line 67
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/2addr v0, v1

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    .line 73
    .line 74
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 75
    .line 76
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/2addr v0, v1

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    .line 83
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->k:Lcom/anythink/core/common/n/b/g;

    .line 84
    .line 85
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    add-int/2addr v0, v1

    .line 90
    return v0
.end method

.method public final i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lcom/anythink/core/common/n/b/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/a;->k:Lcom/anythink/core/common/n/b/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Address{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->a:Lcom/anythink/core/common/n/b/v;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/anythink/core/common/n/b/v;->m:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ":"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->a:Lcom/anythink/core/common/n/b/v;

    .line 21
    .line 22
    iget v1, v1, Lcom/anythink/core/common/n/b/v;->n:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->h:Ljava/net/Proxy;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v1, ", proxy="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->h:Ljava/net/Proxy;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v1, ", proxySelector="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/anythink/core/common/n/b/a;->g:Ljava/net/ProxySelector;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :goto_0
    const-string v1, "}"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method
