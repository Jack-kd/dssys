.class public Lorg/eclipse/jetty/http/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/http/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/l$a;
    }
.end annotation


# static fields
.field public static final w:LR1/c;


# instance fields
.field public final a:Lorg/eclipse/jetty/http/l$a;

.field public final b:Lorg/eclipse/jetty/io/Buffers;

.field public final c:LL1/k;

.field public d:LL1/d;

.field public e:LL1/d;

.field public f:LL1/d;

.field public g:LL1/e$a;

.field public final h:LL1/l$a;

.field public final i:LL1/l$a;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Z

.field public m:Z

.field public final n:LL1/l;

.field public o:I

.field public p:B

.field public q:I

.field public r:J

.field public s:J

.field public t:I

.field public u:I

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/http/l;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/http/l;->w:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;LL1/k;Lorg/eclipse/jetty/http/l$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LL1/l;

    .line 5
    .line 6
    invoke-direct {v0}, LL1/l;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/eclipse/jetty/http/l;->n:LL1/l;

    .line 10
    .line 11
    const/16 v0, -0xe

    .line 12
    .line 13
    iput v0, p0, Lorg/eclipse/jetty/http/l;->o:I

    .line 14
    .line 15
    iput-object p1, p0, Lorg/eclipse/jetty/http/l;->b:Lorg/eclipse/jetty/io/Buffers;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/eclipse/jetty/http/l;->c:LL1/k;

    .line 18
    .line 19
    iput-object p3, p0, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 20
    .line 21
    new-instance p1, LL1/l$a;

    .line 22
    .line 23
    invoke-direct {p1}, LL1/l$a;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 27
    .line 28
    new-instance p1, LL1/l$a;

    .line 29
    .line 30
    invoke-direct {p1}, LL1/l$a;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 14
    .line 15
    invoke-interface {v0}, LL1/d;->x0()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->b:Lorg/eclipse/jetty/io/Buffers;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 26
    .line 27
    iget-object v4, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 28
    .line 29
    if-ne v3, v4, :cond_0

    .line 30
    .line 31
    iget-object v3, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 32
    .line 33
    iput-object v3, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 34
    .line 35
    :cond_0
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffers;->b(LL1/d;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 53
    .line 54
    invoke-interface {v0}, LL1/d;->x0()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ne v0, v1, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->b:Lorg/eclipse/jetty/io/Buffers;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v1, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 65
    .line 66
    iget-object v3, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 67
    .line 68
    if-ne v1, v3, :cond_3

    .line 69
    .line 70
    iput-object v2, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 71
    .line 72
    :cond_3
    invoke-interface {v0, v3}, Lorg/eclipse/jetty/io/Buffers;->b(LL1/d;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 76
    .line 77
    :cond_4
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/l;->k:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/http/l;->j(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x7

    .line 13
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/l;->j(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return v1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/http/l;->j(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/l;->m:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget p1, p0, Lorg/eclipse/jetty/http/l;->o:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/16 v0, -0xe

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x7

    .line 14
    iput p1, p0, Lorg/eclipse/jetty/http/l;->o:I

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public d()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/l;->k()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/l;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_2

    .line 17
    .line 18
    iget-object v3, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {v3}, LL1/d;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-lez v3, :cond_2

    .line 27
    .line 28
    iget-object v3, p0, Lorg/eclipse/jetty/http/l;->n:LL1/l;

    .line 29
    .line 30
    invoke-virtual {v3}, LL1/a;->B0()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/l;->k()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-lez v3, :cond_1

    .line 41
    .line 42
    move v3, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v3, v1

    .line 45
    :goto_1
    or-int/2addr v0, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return v0
.end method

.method public e()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/l;->g()LL1/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/l;->o:I

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, LL1/d;->B0()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 40
    .line 41
    iput-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 42
    .line 43
    invoke-interface {v0}, LL1/d;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0

    .line 48
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 49
    .line 50
    iget-object v1, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 51
    .line 52
    if-ne v0, v1, :cond_5

    .line 53
    .line 54
    iget v0, p0, Lorg/eclipse/jetty/http/l;->o:I

    .line 55
    .line 56
    if-lez v0, :cond_5

    .line 57
    .line 58
    invoke-interface {v1}, LL1/d;->length()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/l;->l:Z

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    iget-wide v0, p0, Lorg/eclipse/jetty/http/l;->r:J

    .line 69
    .line 70
    iget-wide v2, p0, Lorg/eclipse/jetty/http/l;->s:J

    .line 71
    .line 72
    sub-long/2addr v0, v2

    .line 73
    iget-object v2, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 74
    .line 75
    invoke-interface {v2}, LL1/d;->w0()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    int-to-long v2, v2

    .line 80
    cmp-long v0, v0, v2

    .line 81
    .line 82
    if-lez v0, :cond_5

    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 85
    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lorg/eclipse/jetty/http/l;->b:Lorg/eclipse/jetty/io/Buffers;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    :cond_3
    if-nez v0, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->b:Lorg/eclipse/jetty/io/Buffers;

    .line 95
    .line 96
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()LL1/d;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 101
    .line 102
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 103
    .line 104
    iput-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 105
    .line 106
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->c:LL1/k;

    .line 107
    .line 108
    if-eqz v0, :cond_b

    .line 109
    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 111
    .line 112
    iget-object v1, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 113
    .line 114
    if-eq v0, v1, :cond_6

    .line 115
    .line 116
    iget v1, p0, Lorg/eclipse/jetty/http/l;->o:I

    .line 117
    .line 118
    if-lez v1, :cond_7

    .line 119
    .line 120
    :cond_6
    invoke-interface {v0}, LL1/d;->u0()V

    .line 121
    .line 122
    .line 123
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 124
    .line 125
    invoke-interface {v0}, LL1/d;->f0()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_9

    .line 130
    .line 131
    sget-object v0, Lorg/eclipse/jetty/http/l;->w:LR1/c;

    .line 132
    .line 133
    iget-object v1, p0, Lorg/eclipse/jetty/http/l;->c:LL1/k;

    .line 134
    .line 135
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "HttpParser Full for {} "

    .line 140
    .line 141
    invoke-interface {v0, v2, v1}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 145
    .line 146
    invoke-interface {v0}, LL1/d;->clear()V

    .line 147
    .line 148
    .line 149
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v2, "Request Entity Too Large: "

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 162
    .line 163
    iget-object v3, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 164
    .line 165
    if-ne v2, v3, :cond_8

    .line 166
    .line 167
    const-string v2, "body"

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_8
    const-string v2, "head"

    .line 171
    .line 172
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    const/16 v2, 0x19d

    .line 180
    .line 181
    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_9
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->c:LL1/k;

    .line 186
    .line 187
    iget-object v1, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 188
    .line 189
    invoke-interface {v0, v1}, LL1/k;->t(LL1/d;)I

    .line 190
    .line 191
    .line 192
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    sget-object v1, Lorg/eclipse/jetty/http/l;->w:LR1/c;

    .line 196
    .line 197
    invoke-interface {v1, v0}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    .line 201
    .line 202
    if-eqz v1, :cond_a

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_a
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    .line 206
    .line 207
    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    move-object v0, v1

    .line 211
    :goto_1
    throw v0

    .line 212
    :cond_b
    const/4 v0, -0x1

    .line 213
    return v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/eclipse/jetty/http/l;->r:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public g()LL1/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->b:Lorg/eclipse/jetty/io/Buffers;

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()LL1/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, LL1/l;->update(LL1/d;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, LL1/l;->update(LL1/d;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 26
    .line 27
    return-object v0
.end method

.method public h()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/eclipse/jetty/http/l;->r:J

    .line 2
    .line 3
    const-wide/16 v2, -0x2

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 1
    const/16 v0, -0xe

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/l;->j(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/l;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public j(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/l;->o:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public k()I
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x7

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    iget v0, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v3

    .line 10
    :cond_0
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_3

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :try_start_1
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/l;->g()LL1/d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;
    :try_end_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    move v5, v3

    .line 23
    goto/16 :goto_34

    .line 24
    .line 25
    :cond_1
    :goto_0
    :try_start_2
    iget v0, v1, Lorg/eclipse/jetty/http/l;->o:I
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_3

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    const/4 v5, 0x1

    .line 29
    if-ne v0, v4, :cond_2

    .line 30
    .line 31
    :try_start_3
    iget-wide v6, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 32
    .line 33
    iget-wide v8, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 34
    .line 35
    cmp-long v0, v6, v8

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iput v3, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 40
    .line 41
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 42
    .line 43
    invoke-virtual {v0, v6, v7}, Lorg/eclipse/jetty/http/l$a;->d(J)V
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0

    .line 44
    .line 45
    .line 46
    return v5

    .line 47
    :cond_2
    :try_start_4
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 48
    .line 49
    invoke-interface {v0}, LL1/d;->length()I

    .line 50
    .line 51
    .line 52
    move-result v0
    :try_end_4
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_3

    .line 53
    const/4 v7, -0x1

    .line 54
    if-nez v0, :cond_c

    .line 55
    .line 56
    :try_start_5
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/l;->e()I

    .line 57
    .line 58
    .line 59
    move-result v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 60
    :try_start_6
    sget-object v0, Lorg/eclipse/jetty/http/l;->w:LR1/c;

    .line 61
    .line 62
    const-string v9, "filled {}/{}"

    .line 63
    .line 64
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    iget-object v11, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 69
    .line 70
    invoke-interface {v11}, LL1/d;->length()I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-interface {v0, v9, v10}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    goto :goto_2

    .line 87
    :catch_1
    move-exception v0

    .line 88
    goto :goto_1

    .line 89
    :catch_2
    move-exception v0

    .line 90
    move v8, v7

    .line 91
    :goto_1
    :try_start_7
    sget-object v9, Lorg/eclipse/jetty/http/l;->w:LR1/c;

    .line 92
    .line 93
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/l;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-interface {v9, v10, v0}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    if-lez v8, :cond_3

    .line 101
    .line 102
    move v0, v5

    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    :cond_3
    if-gez v8, :cond_b

    .line 106
    .line 107
    iput-boolean v3, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 108
    .line 109
    iget v4, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 110
    .line 111
    if-lez v4, :cond_4

    .line 112
    .line 113
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 114
    .line 115
    invoke-interface {v4}, LL1/d;->length()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-lez v4, :cond_4

    .line 120
    .line 121
    iget-boolean v4, v1, Lorg/eclipse/jetty/http/l;->v:Z

    .line 122
    .line 123
    if-nez v4, :cond_4

    .line 124
    .line 125
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 126
    .line 127
    invoke-interface {v4}, LL1/d;->length()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    invoke-interface {v4, v6}, LL1/d;->get(I)LL1/d;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    iget-wide v8, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 136
    .line 137
    invoke-interface {v4}, LL1/d;->length()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    int-to-long v10, v6

    .line 142
    add-long/2addr v8, v10

    .line 143
    iput-wide v8, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 144
    .line 145
    iget-object v6, v1, Lorg/eclipse/jetty/http/l;->n:LL1/l;

    .line 146
    .line 147
    invoke-virtual {v6, v4}, LL1/l;->update(LL1/d;)V

    .line 148
    .line 149
    .line 150
    iget-object v6, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 151
    .line 152
    invoke-virtual {v6, v4}, Lorg/eclipse/jetty/http/l$a;->a(LL1/d;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    iget v4, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 156
    .line 157
    if-eqz v4, :cond_7

    .line 158
    .line 159
    if-eq v4, v5, :cond_6

    .line 160
    .line 161
    if-eq v4, v2, :cond_7

    .line 162
    .line 163
    iput v3, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 164
    .line 165
    iget-boolean v4, v1, Lorg/eclipse/jetty/http/l;->v:Z

    .line 166
    .line 167
    if-nez v4, :cond_5

    .line 168
    .line 169
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 170
    .line 171
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/l$a;->b()V

    .line 172
    .line 173
    .line 174
    :cond_5
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 175
    .line 176
    iget-wide v5, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 177
    .line 178
    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/http/l$a;->d(J)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_6
    iput v3, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 183
    .line 184
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 185
    .line 186
    iget-wide v5, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 187
    .line 188
    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/http/l$a;->d(J)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    iput v3, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 193
    .line 194
    :goto_3
    if-nez v0, :cond_a

    .line 195
    .line 196
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/l;->b()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_9

    .line 201
    .line 202
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/l;->isIdle()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_8

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_8
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    .line 210
    .line 211
    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    .line 212
    .line 213
    .line 214
    throw v0

    .line 215
    :cond_9
    :goto_4
    return v7

    .line 216
    :cond_a
    throw v0

    .line 217
    :cond_b
    move v0, v3

    .line 218
    :goto_5
    iget-object v8, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 219
    .line 220
    invoke-interface {v8}, LL1/d;->length()I

    .line 221
    .line 222
    .line 223
    move-result v8
    :try_end_7
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_7 .. :try_end_7} :catch_0

    .line 224
    goto :goto_6

    .line 225
    :cond_c
    move v8, v0

    .line 226
    move v0, v3

    .line 227
    :goto_6
    :try_start_8
    iget-object v9, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 228
    .line 229
    invoke-interface {v9}, LL1/d;->p0()[B

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    iget v10, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 234
    .line 235
    :goto_7
    iget v11, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 236
    .line 237
    const/16 v2, 0xd

    .line 238
    .line 239
    const/16 v12, 0xa

    .line 240
    .line 241
    const/16 v4, 0x20

    .line 242
    .line 243
    if-gez v11, :cond_57

    .line 244
    .line 245
    add-int/lit8 v16, v8, -0x1

    .line 246
    .line 247
    if-lez v8, :cond_57

    .line 248
    .line 249
    if-eq v10, v11, :cond_d

    .line 250
    .line 251
    add-int/lit8 v0, v0, 0x1

    .line 252
    .line 253
    move v10, v11

    .line 254
    :cond_d
    iget-object v11, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 255
    .line 256
    invoke-interface {v11}, LL1/d;->get()B

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    const-wide/16 v17, 0x0

    .line 261
    .line 262
    iget-byte v14, v1, Lorg/eclipse/jetty/http/l;->p:B
    :try_end_8
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_8 .. :try_end_8} :catch_3

    .line 263
    .line 264
    const/16 v15, 0x190

    .line 265
    .line 266
    if-ne v14, v2, :cond_f

    .line 267
    .line 268
    if-ne v11, v12, :cond_e

    .line 269
    .line 270
    :try_start_9
    iput-byte v12, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 271
    .line 272
    goto/16 :goto_20

    .line 273
    .line 274
    :cond_e
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    .line 275
    .line 276
    invoke-direct {v0, v15}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    .line 277
    .line 278
    .line 279
    throw v0
    :try_end_9
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_9 .. :try_end_9} :catch_0

    .line 280
    :cond_f
    :try_start_a
    iput-byte v3, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 281
    .line 282
    iget v14, v1, Lorg/eclipse/jetty/http/l;->o:I
    :try_end_a
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_a .. :try_end_a} :catch_3

    .line 283
    .line 284
    const-string v3, " "

    .line 285
    .line 286
    const/4 v13, -0x2

    .line 287
    move/from16 v20, v5

    .line 288
    .line 289
    const-string v5, "ISO-8859-1"

    .line 290
    .line 291
    const/16 v6, 0x9

    .line 292
    .line 293
    const/4 v15, -0x5

    .line 294
    packed-switch v14, :pswitch_data_0

    .line 295
    .line 296
    .line 297
    :cond_10
    :goto_8
    :pswitch_0
    const/4 v2, 0x0

    .line 298
    goto/16 :goto_20

    .line 299
    .line 300
    :pswitch_1
    if-eq v11, v6, :cond_15

    .line 301
    .line 302
    if-eq v11, v12, :cond_11

    .line 303
    .line 304
    if-eq v11, v2, :cond_11

    .line 305
    .line 306
    if-eq v11, v4, :cond_15

    .line 307
    .line 308
    :try_start_b
    iget v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 309
    .line 310
    add-int/lit8 v2, v2, 0x1

    .line 311
    .line 312
    iput v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 313
    .line 314
    goto :goto_8

    .line 315
    :catch_3
    move-exception v0

    .line 316
    const/4 v5, 0x0

    .line 317
    goto/16 :goto_34

    .line 318
    .line 319
    :cond_11
    iget v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 320
    .line 321
    if-lez v2, :cond_14

    .line 322
    .line 323
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 324
    .line 325
    invoke-virtual {v2}, LL1/a;->length()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-nez v2, :cond_12

    .line 330
    .line 331
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 332
    .line 333
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 334
    .line 335
    invoke-interface {v3}, LL1/d;->x0()I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 340
    .line 341
    invoke-interface {v4}, LL1/d;->x0()I

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    iget v5, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 346
    .line 347
    add-int/2addr v4, v5

    .line 348
    invoke-virtual {v2, v3, v4}, LL1/l;->update(II)V

    .line 349
    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_12
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 353
    .line 354
    if-nez v2, :cond_13

    .line 355
    .line 356
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 357
    .line 358
    invoke-virtual {v2, v5}, LL1/a;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    iput-object v2, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 363
    .line 364
    :cond_13
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 365
    .line 366
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 367
    .line 368
    invoke-interface {v4}, LL1/d;->x0()I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    iget-object v6, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 373
    .line 374
    invoke-interface {v6}, LL1/d;->x0()I

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    iget v8, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 379
    .line 380
    add-int/2addr v6, v8

    .line 381
    invoke-virtual {v2, v4, v6}, LL1/l;->update(II)V

    .line 382
    .line 383
    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 390
    .line 391
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 398
    .line 399
    invoke-virtual {v3, v5}, LL1/a;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    iput-object v2, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 411
    .line 412
    :cond_14
    :goto_9
    iput-byte v11, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 413
    .line 414
    iput v15, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_15
    iput v13, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 418
    .line 419
    goto :goto_8

    .line 420
    :pswitch_2
    if-eq v11, v6, :cond_10

    .line 421
    .line 422
    if-eq v11, v12, :cond_17

    .line 423
    .line 424
    if-eq v11, v2, :cond_17

    .line 425
    .line 426
    if-eq v11, v4, :cond_10

    .line 427
    .line 428
    iget v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 429
    .line 430
    if-ne v2, v7, :cond_16

    .line 431
    .line 432
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 433
    .line 434
    invoke-interface {v2}, LL1/d;->l0()V

    .line 435
    .line 436
    .line 437
    :cond_16
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 438
    .line 439
    invoke-interface {v2}, LL1/d;->getIndex()I

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 444
    .line 445
    invoke-interface {v3}, LL1/d;->x0()I

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    sub-int/2addr v2, v3

    .line 450
    iput v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 451
    .line 452
    iput v7, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 453
    .line 454
    goto/16 :goto_8

    .line 455
    .line 456
    :cond_17
    iget v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 457
    .line 458
    if-lez v2, :cond_1a

    .line 459
    .line 460
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 461
    .line 462
    invoke-virtual {v2}, LL1/a;->length()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-nez v2, :cond_18

    .line 467
    .line 468
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 469
    .line 470
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 471
    .line 472
    invoke-interface {v3}, LL1/d;->x0()I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 477
    .line 478
    invoke-interface {v4}, LL1/d;->x0()I

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    iget v5, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 483
    .line 484
    add-int/2addr v4, v5

    .line 485
    invoke-virtual {v2, v3, v4}, LL1/l;->update(II)V

    .line 486
    .line 487
    .line 488
    goto :goto_a

    .line 489
    :cond_18
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 490
    .line 491
    if-nez v2, :cond_19

    .line 492
    .line 493
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 494
    .line 495
    invoke-virtual {v2, v5}, LL1/a;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    iput-object v2, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 500
    .line 501
    :cond_19
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 502
    .line 503
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 504
    .line 505
    invoke-interface {v4}, LL1/d;->x0()I

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    iget-object v6, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 510
    .line 511
    invoke-interface {v6}, LL1/d;->x0()I

    .line 512
    .line 513
    .line 514
    move-result v6

    .line 515
    iget v8, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 516
    .line 517
    add-int/2addr v6, v8

    .line 518
    invoke-virtual {v2, v4, v6}, LL1/l;->update(II)V

    .line 519
    .line 520
    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 535
    .line 536
    invoke-virtual {v3, v5}, LL1/a;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    iput-object v2, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 548
    .line 549
    :cond_1a
    :goto_a
    iput-byte v11, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 550
    .line 551
    iput v15, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 552
    .line 553
    goto/16 :goto_8

    .line 554
    .line 555
    :pswitch_3
    if-eq v11, v6, :cond_1f

    .line 556
    .line 557
    if-eq v11, v12, :cond_1d

    .line 558
    .line 559
    if-eq v11, v2, :cond_1d

    .line 560
    .line 561
    if-eq v11, v4, :cond_1f

    .line 562
    .line 563
    const/16 v2, 0x3a

    .line 564
    .line 565
    if-eq v11, v2, :cond_1b

    .line 566
    .line 567
    const/4 v2, 0x0

    .line 568
    iput-object v2, v1, Lorg/eclipse/jetty/http/l;->g:LL1/e$a;

    .line 569
    .line 570
    iget v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 571
    .line 572
    add-int/lit8 v2, v2, 0x1

    .line 573
    .line 574
    iput v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 575
    .line 576
    goto/16 :goto_8

    .line 577
    .line 578
    :cond_1b
    iget v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 579
    .line 580
    if-lez v2, :cond_1c

    .line 581
    .line 582
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->g:LL1/e$a;

    .line 583
    .line 584
    if-nez v2, :cond_1c

    .line 585
    .line 586
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 587
    .line 588
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 589
    .line 590
    invoke-interface {v3}, LL1/d;->x0()I

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 595
    .line 596
    invoke-interface {v4}, LL1/d;->x0()I

    .line 597
    .line 598
    .line 599
    move-result v4

    .line 600
    iget v5, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 601
    .line 602
    add-int/2addr v4, v5

    .line 603
    invoke-virtual {v2, v3, v4}, LL1/l;->update(II)V

    .line 604
    .line 605
    .line 606
    :cond_1c
    iput v7, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 607
    .line 608
    iput v13, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 609
    .line 610
    goto/16 :goto_8

    .line 611
    .line 612
    :cond_1d
    iget v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 613
    .line 614
    if-lez v2, :cond_1e

    .line 615
    .line 616
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 617
    .line 618
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 619
    .line 620
    invoke-interface {v3}, LL1/d;->x0()I

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 625
    .line 626
    invoke-interface {v4}, LL1/d;->x0()I

    .line 627
    .line 628
    .line 629
    move-result v4

    .line 630
    iget v5, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 631
    .line 632
    add-int/2addr v4, v5

    .line 633
    invoke-virtual {v2, v3, v4}, LL1/l;->update(II)V

    .line 634
    .line 635
    .line 636
    :cond_1e
    iput-byte v11, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 637
    .line 638
    iput v15, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 639
    .line 640
    goto/16 :goto_8

    .line 641
    .line 642
    :cond_1f
    const/4 v2, -0x4

    .line 643
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 644
    .line 645
    goto/16 :goto_8

    .line 646
    .line 647
    :pswitch_4
    if-eq v11, v6, :cond_10

    .line 648
    .line 649
    if-eq v11, v12, :cond_23

    .line 650
    .line 651
    if-eq v11, v2, :cond_23

    .line 652
    .line 653
    if-eq v11, v4, :cond_10

    .line 654
    .line 655
    const/16 v2, 0x3a

    .line 656
    .line 657
    if-eq v11, v2, :cond_21

    .line 658
    .line 659
    const/4 v2, 0x0

    .line 660
    iput-object v2, v1, Lorg/eclipse/jetty/http/l;->g:LL1/e$a;

    .line 661
    .line 662
    iget v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 663
    .line 664
    if-ne v2, v7, :cond_20

    .line 665
    .line 666
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 667
    .line 668
    invoke-interface {v2}, LL1/d;->l0()V

    .line 669
    .line 670
    .line 671
    :cond_20
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 672
    .line 673
    invoke-interface {v2}, LL1/d;->getIndex()I

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 678
    .line 679
    invoke-interface {v3}, LL1/d;->x0()I

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    sub-int/2addr v2, v3

    .line 684
    iput v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 685
    .line 686
    const/4 v2, -0x3

    .line 687
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 688
    .line 689
    goto/16 :goto_8

    .line 690
    .line 691
    :cond_21
    iget v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 692
    .line 693
    if-lez v2, :cond_22

    .line 694
    .line 695
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->g:LL1/e$a;

    .line 696
    .line 697
    if-nez v2, :cond_22

    .line 698
    .line 699
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 700
    .line 701
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 702
    .line 703
    invoke-interface {v3}, LL1/d;->x0()I

    .line 704
    .line 705
    .line 706
    move-result v3

    .line 707
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 708
    .line 709
    invoke-interface {v4}, LL1/d;->x0()I

    .line 710
    .line 711
    .line 712
    move-result v4

    .line 713
    iget v5, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 714
    .line 715
    add-int/2addr v4, v5

    .line 716
    invoke-virtual {v2, v3, v4}, LL1/l;->update(II)V

    .line 717
    .line 718
    .line 719
    :cond_22
    iput v7, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 720
    .line 721
    iput v13, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 722
    .line 723
    goto/16 :goto_8

    .line 724
    .line 725
    :cond_23
    iget v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 726
    .line 727
    if-lez v2, :cond_24

    .line 728
    .line 729
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 730
    .line 731
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 732
    .line 733
    invoke-interface {v3}, LL1/d;->x0()I

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 738
    .line 739
    invoke-interface {v4}, LL1/d;->x0()I

    .line 740
    .line 741
    .line 742
    move-result v4

    .line 743
    iget v5, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 744
    .line 745
    add-int/2addr v4, v5

    .line 746
    invoke-virtual {v2, v3, v4}, LL1/l;->update(II)V

    .line 747
    .line 748
    .line 749
    :cond_24
    iput-byte v11, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 750
    .line 751
    iput v15, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 752
    .line 753
    goto/16 :goto_8

    .line 754
    .line 755
    :pswitch_5
    if-eq v11, v6, :cond_43

    .line 756
    .line 757
    if-eq v11, v4, :cond_43

    .line 758
    .line 759
    const/16 v3, 0x3a

    .line 760
    .line 761
    if-eq v11, v3, :cond_43

    .line 762
    .line 763
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->g:LL1/e$a;

    .line 764
    .line 765
    if-nez v3, :cond_25

    .line 766
    .line 767
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 768
    .line 769
    invoke-virtual {v3}, LL1/a;->length()I

    .line 770
    .line 771
    .line 772
    move-result v3

    .line 773
    if-gtz v3, :cond_25

    .line 774
    .line 775
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 776
    .line 777
    invoke-virtual {v3}, LL1/a;->length()I

    .line 778
    .line 779
    .line 780
    move-result v3

    .line 781
    if-gtz v3, :cond_25

    .line 782
    .line 783
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 784
    .line 785
    if-eqz v3, :cond_34

    .line 786
    .line 787
    :cond_25
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->g:LL1/e$a;

    .line 788
    .line 789
    if-eqz v3, :cond_26

    .line 790
    .line 791
    :goto_b
    const/4 v4, 0x0

    .line 792
    goto :goto_c

    .line 793
    :cond_26
    sget-object v3, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 794
    .line 795
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 796
    .line 797
    invoke-virtual {v3, v4}, LL1/e;->g(LL1/d;)LL1/d;

    .line 798
    .line 799
    .line 800
    move-result-object v3

    .line 801
    goto :goto_b

    .line 802
    :goto_c
    iput-object v4, v1, Lorg/eclipse/jetty/http/l;->g:LL1/e$a;

    .line 803
    .line 804
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 805
    .line 806
    if-nez v4, :cond_27

    .line 807
    .line 808
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 809
    .line 810
    goto :goto_d

    .line 811
    :cond_27
    new-instance v4, LL1/h;

    .line 812
    .line 813
    iget-object v6, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 814
    .line 815
    invoke-direct {v4, v6}, LL1/h;-><init>(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    :goto_d
    sget-object v6, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 819
    .line 820
    invoke-virtual {v6, v3}, LL1/e;->e(LL1/d;)I

    .line 821
    .line 822
    .line 823
    move-result v6

    .line 824
    if-ltz v6, :cond_33

    .line 825
    .line 826
    move/from16 v14, v20

    .line 827
    .line 828
    if-eq v6, v14, :cond_2d

    .line 829
    .line 830
    const-wide/16 v14, -0x2

    .line 831
    .line 832
    const/4 v13, 0x5

    .line 833
    if-eq v6, v13, :cond_29

    .line 834
    .line 835
    const/16 v5, 0xc

    .line 836
    .line 837
    if-eq v6, v5, :cond_28

    .line 838
    .line 839
    goto/16 :goto_10

    .line 840
    .line 841
    :cond_28
    iget-wide v5, v1, Lorg/eclipse/jetty/http/l;->r:J
    :try_end_b
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_b .. :try_end_b} :catch_3

    .line 842
    .line 843
    cmp-long v5, v5, v14

    .line 844
    .line 845
    if-eqz v5, :cond_33

    .line 846
    .line 847
    :try_start_c
    invoke-static {v4}, LL1/g;->i(LL1/d;)J

    .line 848
    .line 849
    .line 850
    move-result-wide v5

    .line 851
    iput-wide v5, v1, Lorg/eclipse/jetty/http/l;->r:J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_c .. :try_end_c} :catch_3

    .line 852
    .line 853
    cmp-long v5, v5, v17

    .line 854
    .line 855
    if-gtz v5, :cond_33

    .line 856
    .line 857
    move-wide/from16 v5, v17

    .line 858
    .line 859
    :try_start_d
    iput-wide v5, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 860
    .line 861
    goto/16 :goto_10

    .line 862
    .line 863
    :catch_4
    move-exception v0

    .line 864
    sget-object v2, Lorg/eclipse/jetty/http/l;->w:LR1/c;

    .line 865
    .line 866
    invoke-interface {v2, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 867
    .line 868
    .line 869
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    .line 870
    .line 871
    const/16 v2, 0x190

    .line 872
    .line 873
    invoke-direct {v0, v2}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    .line 874
    .line 875
    .line 876
    throw v0

    .line 877
    :cond_29
    sget-object v6, Lorg/eclipse/jetty/http/i;->d:Lorg/eclipse/jetty/http/i;

    .line 878
    .line 879
    invoke-virtual {v6, v4}, LL1/e;->g(LL1/d;)LL1/d;

    .line 880
    .line 881
    .line 882
    move-result-object v4

    .line 883
    invoke-virtual {v6, v4}, LL1/e;->e(LL1/d;)I

    .line 884
    .line 885
    .line 886
    move-result v6

    .line 887
    const/4 v13, 0x2

    .line 888
    if-ne v13, v6, :cond_2a

    .line 889
    .line 890
    iput-wide v14, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 891
    .line 892
    goto :goto_10

    .line 893
    :cond_2a
    invoke-interface {v4, v5}, LL1/d;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v5

    .line 897
    const-string v6, "chunked"

    .line 898
    .line 899
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 900
    .line 901
    .line 902
    move-result v6

    .line 903
    if-eqz v6, :cond_2b

    .line 904
    .line 905
    iput-wide v14, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 906
    .line 907
    goto :goto_10

    .line 908
    :cond_2b
    const-string v6, "chunked"

    .line 909
    .line 910
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 911
    .line 912
    .line 913
    move-result v5

    .line 914
    if-gez v5, :cond_2c

    .line 915
    .line 916
    goto :goto_10

    .line 917
    :cond_2c
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    .line 918
    .line 919
    const/16 v2, 0x190

    .line 920
    .line 921
    const/4 v4, 0x0

    .line 922
    invoke-direct {v0, v2, v4}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    .line 923
    .line 924
    .line 925
    throw v0

    .line 926
    :cond_2d
    sget-object v5, Lorg/eclipse/jetty/http/i;->d:Lorg/eclipse/jetty/http/i;

    .line 927
    .line 928
    invoke-virtual {v5, v4}, LL1/e;->e(LL1/d;)I

    .line 929
    .line 930
    .line 931
    move-result v5

    .line 932
    if-eq v5, v7, :cond_30

    .line 933
    .line 934
    const/4 v14, 0x1

    .line 935
    if-eq v5, v14, :cond_2f

    .line 936
    .line 937
    const/4 v13, 0x5

    .line 938
    if-eq v5, v13, :cond_2e

    .line 939
    .line 940
    goto :goto_10

    .line 941
    :cond_2e
    iput-boolean v14, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 942
    .line 943
    goto :goto_10

    .line 944
    :cond_2f
    const/4 v5, 0x0

    .line 945
    iput-boolean v5, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 946
    .line 947
    goto :goto_10

    .line 948
    :cond_30
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v5

    .line 952
    const-string v6, ","

    .line 953
    .line 954
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v5

    .line 958
    array-length v6, v5

    .line 959
    const/4 v13, 0x0

    .line 960
    :goto_e
    if-ge v13, v6, :cond_33

    .line 961
    .line 962
    aget-object v14, v5, v13

    .line 963
    .line 964
    sget-object v15, Lorg/eclipse/jetty/http/i;->d:Lorg/eclipse/jetty/http/i;

    .line 965
    .line 966
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v14

    .line 970
    invoke-virtual {v15, v14}, LL1/e;->f(Ljava/lang/String;)I

    .line 971
    .line 972
    .line 973
    move-result v14

    .line 974
    const/4 v15, 0x1

    .line 975
    if-eq v14, v15, :cond_32

    .line 976
    .line 977
    const/4 v12, 0x5

    .line 978
    if-eq v14, v12, :cond_31

    .line 979
    .line 980
    goto :goto_f

    .line 981
    :cond_31
    iput-boolean v15, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 982
    .line 983
    goto :goto_f

    .line 984
    :cond_32
    const/4 v12, 0x0

    .line 985
    iput-boolean v12, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 986
    .line 987
    :goto_f
    add-int/lit8 v13, v13, 0x1

    .line 988
    .line 989
    const/16 v12, 0xa

    .line 990
    .line 991
    goto :goto_e

    .line 992
    :cond_33
    :goto_10
    iget-object v5, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 993
    .line 994
    invoke-virtual {v5, v3, v4}, Lorg/eclipse/jetty/http/l$a;->e(LL1/d;LL1/d;)V

    .line 995
    .line 996
    .line 997
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 998
    .line 999
    invoke-virtual {v3}, LL1/a;->getIndex()I

    .line 1000
    .line 1001
    .line 1002
    move-result v4

    .line 1003
    invoke-virtual {v3, v4}, LL1/a;->q0(I)V

    .line 1004
    .line 1005
    .line 1006
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 1007
    .line 1008
    invoke-virtual {v3}, LL1/a;->getIndex()I

    .line 1009
    .line 1010
    .line 1011
    move-result v4

    .line 1012
    invoke-virtual {v3, v4}, LL1/a;->q0(I)V

    .line 1013
    .line 1014
    .line 1015
    const/4 v4, 0x0

    .line 1016
    iput-object v4, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 1017
    .line 1018
    :cond_34
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1019
    .line 1020
    invoke-interface {v3, v7}, LL1/d;->o0(I)V

    .line 1021
    .line 1022
    .line 1023
    if-eq v11, v2, :cond_36

    .line 1024
    .line 1025
    const/16 v3, 0xa

    .line 1026
    .line 1027
    if-ne v11, v3, :cond_35

    .line 1028
    .line 1029
    goto :goto_11

    .line 1030
    :cond_35
    const/4 v14, 0x1

    .line 1031
    iput v14, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 1032
    .line 1033
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1034
    .line 1035
    invoke-interface {v2}, LL1/d;->l0()V

    .line 1036
    .line 1037
    .line 1038
    const/4 v2, -0x4

    .line 1039
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1040
    .line 1041
    if-eqz v9, :cond_10

    .line 1042
    .line 1043
    sget-object v2, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 1044
    .line 1045
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1046
    .line 1047
    invoke-interface {v3}, LL1/d;->x0()I

    .line 1048
    .line 1049
    .line 1050
    move-result v3

    .line 1051
    invoke-virtual {v2, v9, v3, v8}, LL1/e;->d([BII)LL1/e$a;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v2

    .line 1055
    iput-object v2, v1, Lorg/eclipse/jetty/http/l;->g:LL1/e$a;

    .line 1056
    .line 1057
    if-eqz v2, :cond_10

    .line 1058
    .line 1059
    invoke-virtual {v2}, LL1/a;->length()I

    .line 1060
    .line 1061
    .line 1062
    move-result v2

    .line 1063
    iput v2, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 1064
    .line 1065
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1066
    .line 1067
    invoke-interface {v2}, LL1/d;->x0()I

    .line 1068
    .line 1069
    .line 1070
    move-result v3

    .line 1071
    iget v4, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 1072
    .line 1073
    add-int/2addr v3, v4

    .line 1074
    invoke-interface {v2, v3}, LL1/d;->z0(I)V

    .line 1075
    .line 1076
    .line 1077
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1078
    .line 1079
    invoke-interface {v2}, LL1/d;->length()I

    .line 1080
    .line 1081
    .line 1082
    move-result v2

    .line 1083
    move v8, v2

    .line 1084
    const/4 v2, 0x0

    .line 1085
    goto/16 :goto_21

    .line 1086
    .line 1087
    :cond_36
    :goto_11
    iget v0, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1088
    .line 1089
    if-lez v0, :cond_39

    .line 1090
    .line 1091
    const/16 v3, 0x130

    .line 1092
    .line 1093
    if-eq v0, v3, :cond_37

    .line 1094
    .line 1095
    const/16 v3, 0xcc

    .line 1096
    .line 1097
    if-eq v0, v3, :cond_37

    .line 1098
    .line 1099
    const/16 v3, 0xc8

    .line 1100
    .line 1101
    if-ge v0, v3, :cond_39

    .line 1102
    .line 1103
    :cond_37
    const-wide/16 v5, 0x0

    .line 1104
    .line 1105
    iput-wide v5, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 1106
    .line 1107
    :cond_38
    :goto_12
    const-wide/16 v5, 0x0

    .line 1108
    .line 1109
    goto :goto_14

    .line 1110
    :cond_39
    iget-wide v3, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 1111
    .line 1112
    const-wide/16 v5, -0x3

    .line 1113
    .line 1114
    cmp-long v3, v3, v5

    .line 1115
    .line 1116
    if-nez v3, :cond_38

    .line 1117
    .line 1118
    if-eqz v0, :cond_3a

    .line 1119
    .line 1120
    const/16 v3, 0x130

    .line 1121
    .line 1122
    if-eq v0, v3, :cond_3a

    .line 1123
    .line 1124
    const/16 v3, 0xcc

    .line 1125
    .line 1126
    if-eq v0, v3, :cond_3a

    .line 1127
    .line 1128
    const/16 v3, 0xc8

    .line 1129
    .line 1130
    if-ge v0, v3, :cond_3b

    .line 1131
    .line 1132
    :cond_3a
    const-wide/16 v5, 0x0

    .line 1133
    .line 1134
    goto :goto_13

    .line 1135
    :cond_3b
    const-wide/16 v3, -0x1

    .line 1136
    .line 1137
    iput-wide v3, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 1138
    .line 1139
    goto :goto_12

    .line 1140
    :goto_13
    iput-wide v5, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 1141
    .line 1142
    :goto_14
    iput-wide v5, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 1143
    .line 1144
    iput-byte v11, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 1145
    .line 1146
    if-ne v11, v2, :cond_3c

    .line 1147
    .line 1148
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1149
    .line 1150
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v0

    .line 1154
    if-eqz v0, :cond_3c

    .line 1155
    .line 1156
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1157
    .line 1158
    invoke-interface {v0}, LL1/d;->peek()B

    .line 1159
    .line 1160
    .line 1161
    move-result v0

    .line 1162
    const/16 v3, 0xa

    .line 1163
    .line 1164
    if-ne v0, v3, :cond_3c

    .line 1165
    .line 1166
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1167
    .line 1168
    invoke-interface {v0}, LL1/d;->get()B

    .line 1169
    .line 1170
    .line 1171
    move-result v0

    .line 1172
    iput-byte v0, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 1173
    .line 1174
    :cond_3c
    iget-wide v2, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 1175
    .line 1176
    const-wide/32 v4, 0x7fffffff

    .line 1177
    .line 1178
    .line 1179
    cmp-long v0, v2, v4

    .line 1180
    .line 1181
    if-lez v0, :cond_3d

    .line 1182
    .line 1183
    const v0, 0x7fffffff

    .line 1184
    .line 1185
    .line 1186
    :goto_15
    const/4 v2, -0x2

    .line 1187
    goto :goto_16

    .line 1188
    :cond_3d
    long-to-int v0, v2

    .line 1189
    goto :goto_15

    .line 1190
    :goto_16
    if-eq v0, v2, :cond_42

    .line 1191
    .line 1192
    if-eq v0, v7, :cond_41

    .line 1193
    .line 1194
    if-eqz v0, :cond_3e

    .line 1195
    .line 1196
    const/4 v13, 0x2

    .line 1197
    iput v13, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1198
    .line 1199
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1200
    .line 1201
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/l$a;->c()V

    .line 1202
    .line 1203
    .line 1204
    :goto_17
    const/16 v20, 0x1

    .line 1205
    .line 1206
    goto :goto_1a

    .line 1207
    :cond_3e
    iget-boolean v0, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 1208
    .line 1209
    if-nez v0, :cond_40

    .line 1210
    .line 1211
    iget v0, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1212
    .line 1213
    const/16 v2, 0x64

    .line 1214
    .line 1215
    if-lt v0, v2, :cond_3f

    .line 1216
    .line 1217
    const/16 v3, 0xc8

    .line 1218
    .line 1219
    if-ge v0, v3, :cond_3f

    .line 1220
    .line 1221
    goto :goto_18

    .line 1222
    :cond_3f
    const/4 v0, 0x7

    .line 1223
    goto :goto_19

    .line 1224
    :cond_40
    :goto_18
    const/4 v0, 0x0

    .line 1225
    :goto_19
    iput v0, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1226
    .line 1227
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1228
    .line 1229
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/l$a;->c()V

    .line 1230
    .line 1231
    .line 1232
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1233
    .line 1234
    iget-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 1235
    .line 1236
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/l$a;->d(J)V

    .line 1237
    .line 1238
    .line 1239
    const/16 v20, 0x1

    .line 1240
    .line 1241
    return v20

    .line 1242
    :cond_41
    const/4 v14, 0x1

    .line 1243
    iput v14, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1244
    .line 1245
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1246
    .line 1247
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/l$a;->c()V

    .line 1248
    .line 1249
    .line 1250
    goto :goto_17

    .line 1251
    :cond_42
    const/4 v0, 0x3

    .line 1252
    iput v0, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1253
    .line 1254
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1255
    .line 1256
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/l$a;->c()V

    .line 1257
    .line 1258
    .line 1259
    goto :goto_17

    .line 1260
    :goto_1a
    return v20

    .line 1261
    :cond_43
    iput v7, v1, Lorg/eclipse/jetty/http/l;->q:I

    .line 1262
    .line 1263
    const/4 v2, -0x2

    .line 1264
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1265
    .line 1266
    goto/16 :goto_8

    .line 1267
    .line 1268
    :pswitch_6
    if-eq v11, v2, :cond_44

    .line 1269
    .line 1270
    const/16 v3, 0xa

    .line 1271
    .line 1272
    if-ne v11, v3, :cond_10

    .line 1273
    .line 1274
    :cond_44
    iget v2, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1275
    .line 1276
    if-lez v2, :cond_45

    .line 1277
    .line 1278
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1279
    .line 1280
    sget-object v3, Lorg/eclipse/jetty/http/p;->a:LL1/e;

    .line 1281
    .line 1282
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1283
    .line 1284
    invoke-virtual {v3, v4}, LL1/e;->g(LL1/d;)LL1/d;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v3

    .line 1288
    iget v4, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1289
    .line 1290
    iget-object v5, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1291
    .line 1292
    invoke-interface {v5}, LL1/d;->v0()LL1/d;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v5

    .line 1296
    invoke-virtual {v2, v3, v4, v5}, Lorg/eclipse/jetty/http/l$a;->g(LL1/d;ILL1/d;)V

    .line 1297
    .line 1298
    .line 1299
    goto :goto_1b

    .line 1300
    :cond_45
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1301
    .line 1302
    sget-object v3, Lorg/eclipse/jetty/http/k;->a:LL1/e;

    .line 1303
    .line 1304
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1305
    .line 1306
    invoke-virtual {v3, v4}, LL1/e;->g(LL1/d;)LL1/d;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v3

    .line 1310
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 1311
    .line 1312
    sget-object v5, Lorg/eclipse/jetty/http/p;->a:LL1/e;

    .line 1313
    .line 1314
    iget-object v6, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1315
    .line 1316
    invoke-interface {v6}, LL1/d;->v0()LL1/d;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v6

    .line 1320
    invoke-virtual {v5, v6}, LL1/e;->g(LL1/d;)LL1/d;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v5

    .line 1324
    invoke-virtual {v2, v3, v4, v5}, Lorg/eclipse/jetty/http/l$a;->f(LL1/d;LL1/d;LL1/d;)V

    .line 1325
    .line 1326
    .line 1327
    move-object v3, v5

    .line 1328
    :goto_1b
    iput-byte v11, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 1329
    .line 1330
    sget-object v2, Lorg/eclipse/jetty/http/p;->a:LL1/e;

    .line 1331
    .line 1332
    invoke-virtual {v2, v3}, LL1/e;->e(LL1/d;)I

    .line 1333
    .line 1334
    .line 1335
    move-result v2

    .line 1336
    const/16 v3, 0xb

    .line 1337
    .line 1338
    if-lt v2, v3, :cond_46

    .line 1339
    .line 1340
    const/4 v2, 0x1

    .line 1341
    goto :goto_1c

    .line 1342
    :cond_46
    const/4 v2, 0x0

    .line 1343
    :goto_1c
    iput-boolean v2, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 1344
    .line 1345
    iput v15, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1346
    .line 1347
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1348
    .line 1349
    invoke-virtual {v2}, LL1/a;->getIndex()I

    .line 1350
    .line 1351
    .line 1352
    move-result v3

    .line 1353
    invoke-virtual {v2, v3}, LL1/a;->q0(I)V

    .line 1354
    .line 1355
    .line 1356
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 1357
    .line 1358
    invoke-virtual {v2}, LL1/a;->getIndex()I

    .line 1359
    .line 1360
    .line 1361
    move-result v3

    .line 1362
    invoke-virtual {v2, v3}, LL1/a;->q0(I)V

    .line 1363
    .line 1364
    .line 1365
    const/4 v4, 0x0

    .line 1366
    iput-object v4, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 1367
    .line 1368
    goto/16 :goto_20

    .line 1369
    .line 1370
    :pswitch_7
    if-gt v11, v4, :cond_49

    .line 1371
    .line 1372
    if-gez v11, :cond_47

    .line 1373
    .line 1374
    goto :goto_1d

    .line 1375
    :cond_47
    if-ge v11, v4, :cond_10

    .line 1376
    .line 1377
    iget v2, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1378
    .line 1379
    if-lez v2, :cond_48

    .line 1380
    .line 1381
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1382
    .line 1383
    sget-object v3, Lorg/eclipse/jetty/http/k;->a:LL1/e;

    .line 1384
    .line 1385
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1386
    .line 1387
    invoke-virtual {v3, v4}, LL1/e;->g(LL1/d;)LL1/d;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v3

    .line 1391
    iget v4, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1392
    .line 1393
    const/4 v5, 0x0

    .line 1394
    invoke-virtual {v2, v3, v4, v5}, Lorg/eclipse/jetty/http/l$a;->g(LL1/d;ILL1/d;)V

    .line 1395
    .line 1396
    .line 1397
    iput-byte v11, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 1398
    .line 1399
    iput v15, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1400
    .line 1401
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1402
    .line 1403
    invoke-virtual {v2}, LL1/a;->getIndex()I

    .line 1404
    .line 1405
    .line 1406
    move-result v3

    .line 1407
    invoke-virtual {v2, v3}, LL1/a;->q0(I)V

    .line 1408
    .line 1409
    .line 1410
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 1411
    .line 1412
    invoke-virtual {v2}, LL1/a;->getIndex()I

    .line 1413
    .line 1414
    .line 1415
    move-result v3

    .line 1416
    invoke-virtual {v2, v3}, LL1/a;->q0(I)V

    .line 1417
    .line 1418
    .line 1419
    const/4 v4, 0x0

    .line 1420
    iput-object v4, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 1421
    .line 1422
    goto/16 :goto_8

    .line 1423
    .line 1424
    :cond_48
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1425
    .line 1426
    sget-object v2, Lorg/eclipse/jetty/http/k;->a:LL1/e;

    .line 1427
    .line 1428
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1429
    .line 1430
    invoke-virtual {v2, v3}, LL1/e;->g(LL1/d;)LL1/d;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v2

    .line 1434
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 1435
    .line 1436
    const/4 v4, 0x0

    .line 1437
    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/jetty/http/l$a;->f(LL1/d;LL1/d;LL1/d;)V

    .line 1438
    .line 1439
    .line 1440
    const/4 v5, 0x0

    .line 1441
    iput-boolean v5, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 1442
    .line 1443
    const/4 v2, 0x7

    .line 1444
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1445
    .line 1446
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1447
    .line 1448
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/l$a;->c()V

    .line 1449
    .line 1450
    .line 1451
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1452
    .line 1453
    iget-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 1454
    .line 1455
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/l$a;->d(J)V

    .line 1456
    .line 1457
    .line 1458
    const/16 v20, 0x1

    .line 1459
    .line 1460
    return v20

    .line 1461
    :cond_49
    :goto_1d
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1462
    .line 1463
    invoke-interface {v2}, LL1/d;->l0()V

    .line 1464
    .line 1465
    .line 1466
    const/4 v2, -0x6

    .line 1467
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1468
    .line 1469
    goto/16 :goto_8

    .line 1470
    .line 1471
    :pswitch_8
    if-ne v11, v4, :cond_4a

    .line 1472
    .line 1473
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 1474
    .line 1475
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1476
    .line 1477
    invoke-interface {v3}, LL1/d;->x0()I

    .line 1478
    .line 1479
    .line 1480
    move-result v3

    .line 1481
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1482
    .line 1483
    invoke-interface {v4}, LL1/d;->getIndex()I

    .line 1484
    .line 1485
    .line 1486
    move-result v4

    .line 1487
    const/16 v20, 0x1

    .line 1488
    .line 1489
    add-int/lit8 v4, v4, -0x1

    .line 1490
    .line 1491
    invoke-virtual {v2, v3, v4}, LL1/l;->update(II)V

    .line 1492
    .line 1493
    .line 1494
    const/16 v2, -0x9

    .line 1495
    .line 1496
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1497
    .line 1498
    goto/16 :goto_20

    .line 1499
    .line 1500
    :cond_4a
    if-ge v11, v4, :cond_10

    .line 1501
    .line 1502
    if-ltz v11, :cond_10

    .line 1503
    .line 1504
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1505
    .line 1506
    sget-object v2, Lorg/eclipse/jetty/http/k;->a:LL1/e;

    .line 1507
    .line 1508
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1509
    .line 1510
    invoke-virtual {v2, v3}, LL1/e;->g(LL1/d;)LL1/d;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v2

    .line 1514
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1515
    .line 1516
    invoke-interface {v3}, LL1/d;->v0()LL1/d;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v3

    .line 1520
    const/4 v4, 0x0

    .line 1521
    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/jetty/http/l$a;->f(LL1/d;LL1/d;LL1/d;)V

    .line 1522
    .line 1523
    .line 1524
    const/4 v5, 0x0

    .line 1525
    iput-boolean v5, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 1526
    .line 1527
    const/4 v2, 0x7

    .line 1528
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1529
    .line 1530
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1531
    .line 1532
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/l$a;->c()V

    .line 1533
    .line 1534
    .line 1535
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1536
    .line 1537
    iget-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 1538
    .line 1539
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/l$a;->d(J)V

    .line 1540
    .line 1541
    .line 1542
    const/16 v20, 0x1

    .line 1543
    .line 1544
    return v20

    .line 1545
    :pswitch_9
    if-ne v11, v4, :cond_4b

    .line 1546
    .line 1547
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 1548
    .line 1549
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1550
    .line 1551
    invoke-interface {v3}, LL1/d;->x0()I

    .line 1552
    .line 1553
    .line 1554
    move-result v3

    .line 1555
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1556
    .line 1557
    invoke-interface {v4}, LL1/d;->getIndex()I

    .line 1558
    .line 1559
    .line 1560
    move-result v4

    .line 1561
    const/16 v20, 0x1

    .line 1562
    .line 1563
    add-int/lit8 v4, v4, -0x1

    .line 1564
    .line 1565
    invoke-virtual {v2, v3, v4}, LL1/l;->update(II)V

    .line 1566
    .line 1567
    .line 1568
    const/16 v2, -0x9

    .line 1569
    .line 1570
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1571
    .line 1572
    goto/16 :goto_20

    .line 1573
    .line 1574
    :cond_4b
    const/16 v2, 0x30

    .line 1575
    .line 1576
    if-lt v11, v2, :cond_4c

    .line 1577
    .line 1578
    const/16 v2, 0x39

    .line 1579
    .line 1580
    if-gt v11, v2, :cond_4c

    .line 1581
    .line 1582
    iget v2, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1583
    .line 1584
    const/16 v19, 0xa

    .line 1585
    .line 1586
    mul-int/lit8 v2, v2, 0xa

    .line 1587
    .line 1588
    add-int/lit8 v11, v11, -0x30

    .line 1589
    .line 1590
    add-int/2addr v2, v11

    .line 1591
    iput v2, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1592
    .line 1593
    goto/16 :goto_20

    .line 1594
    .line 1595
    :cond_4c
    if-ge v11, v4, :cond_4d

    .line 1596
    .line 1597
    if-ltz v11, :cond_4d

    .line 1598
    .line 1599
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1600
    .line 1601
    sget-object v3, Lorg/eclipse/jetty/http/k;->a:LL1/e;

    .line 1602
    .line 1603
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1604
    .line 1605
    invoke-virtual {v3, v4}, LL1/e;->g(LL1/d;)LL1/d;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v3

    .line 1609
    iget v4, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1610
    .line 1611
    const/4 v5, 0x0

    .line 1612
    invoke-virtual {v2, v3, v4, v5}, Lorg/eclipse/jetty/http/l$a;->g(LL1/d;ILL1/d;)V

    .line 1613
    .line 1614
    .line 1615
    iput-byte v11, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 1616
    .line 1617
    iput v15, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1618
    .line 1619
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1620
    .line 1621
    invoke-virtual {v2}, LL1/a;->getIndex()I

    .line 1622
    .line 1623
    .line 1624
    move-result v3

    .line 1625
    invoke-virtual {v2, v3}, LL1/a;->q0(I)V

    .line 1626
    .line 1627
    .line 1628
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->i:LL1/l$a;

    .line 1629
    .line 1630
    invoke-virtual {v2}, LL1/a;->getIndex()I

    .line 1631
    .line 1632
    .line 1633
    move-result v3

    .line 1634
    invoke-virtual {v2, v3}, LL1/a;->q0(I)V

    .line 1635
    .line 1636
    .line 1637
    const/4 v4, 0x0

    .line 1638
    iput-object v4, v1, Lorg/eclipse/jetty/http/l;->j:Ljava/lang/String;

    .line 1639
    .line 1640
    goto :goto_20

    .line 1641
    :cond_4d
    const/16 v2, -0xa

    .line 1642
    .line 1643
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1644
    .line 1645
    iput v7, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1646
    .line 1647
    goto/16 :goto_8

    .line 1648
    .line 1649
    :pswitch_a
    if-gt v11, v4, :cond_50

    .line 1650
    .line 1651
    if-gez v11, :cond_4e

    .line 1652
    .line 1653
    goto :goto_1e

    .line 1654
    :cond_4e
    if-lt v11, v4, :cond_4f

    .line 1655
    .line 1656
    goto/16 :goto_8

    .line 1657
    .line 1658
    :cond_4f
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    .line 1659
    .line 1660
    const/16 v2, 0x190

    .line 1661
    .line 1662
    invoke-direct {v0, v2}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    .line 1663
    .line 1664
    .line 1665
    throw v0

    .line 1666
    :cond_50
    :goto_1e
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1667
    .line 1668
    invoke-interface {v2}, LL1/d;->l0()V

    .line 1669
    .line 1670
    .line 1671
    iget v2, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1672
    .line 1673
    if-ltz v2, :cond_51

    .line 1674
    .line 1675
    const/16 v2, -0xb

    .line 1676
    .line 1677
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1678
    .line 1679
    add-int/lit8 v11, v11, -0x30

    .line 1680
    .line 1681
    iput v11, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1682
    .line 1683
    goto/16 :goto_8

    .line 1684
    .line 1685
    :cond_51
    const/16 v2, -0xa

    .line 1686
    .line 1687
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1688
    .line 1689
    goto/16 :goto_8

    .line 1690
    .line 1691
    :pswitch_b
    if-ne v11, v4, :cond_54

    .line 1692
    .line 1693
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1694
    .line 1695
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1696
    .line 1697
    invoke-interface {v3}, LL1/d;->x0()I

    .line 1698
    .line 1699
    .line 1700
    move-result v3

    .line 1701
    iget-object v4, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1702
    .line 1703
    invoke-interface {v4}, LL1/d;->getIndex()I

    .line 1704
    .line 1705
    .line 1706
    move-result v4

    .line 1707
    const/16 v20, 0x1

    .line 1708
    .line 1709
    add-int/lit8 v4, v4, -0x1

    .line 1710
    .line 1711
    invoke-virtual {v2, v3, v4}, LL1/l;->update(II)V

    .line 1712
    .line 1713
    .line 1714
    sget-object v2, Lorg/eclipse/jetty/http/p;->a:LL1/e;

    .line 1715
    .line 1716
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->h:LL1/l$a;

    .line 1717
    .line 1718
    invoke-virtual {v2, v3}, LL1/e;->b(LL1/d;)LL1/e$a;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v2

    .line 1722
    if-nez v2, :cond_52

    .line 1723
    .line 1724
    move v2, v7

    .line 1725
    goto :goto_1f

    .line 1726
    :cond_52
    const/4 v2, 0x0

    .line 1727
    :goto_1f
    iput v2, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1728
    .line 1729
    const/16 v2, -0xc

    .line 1730
    .line 1731
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1732
    .line 1733
    :cond_53
    :goto_20
    move/from16 v8, v16

    .line 1734
    .line 1735
    :goto_21
    const/4 v2, 0x7

    .line 1736
    const/4 v3, 0x0

    .line 1737
    const/4 v4, 0x2

    .line 1738
    const/4 v5, 0x1

    .line 1739
    goto/16 :goto_7

    .line 1740
    .line 1741
    :cond_54
    if-ge v11, v4, :cond_10

    .line 1742
    .line 1743
    if-gez v11, :cond_55

    .line 1744
    .line 1745
    goto/16 :goto_8

    .line 1746
    .line 1747
    :cond_55
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    .line 1748
    .line 1749
    const/16 v2, 0x190

    .line 1750
    .line 1751
    invoke-direct {v0, v2}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    .line 1752
    .line 1753
    .line 1754
    throw v0

    .line 1755
    :pswitch_c
    const-wide/16 v2, -0x3

    .line 1756
    .line 1757
    iput-wide v2, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 1758
    .line 1759
    const/4 v2, 0x0

    .line 1760
    iput-object v2, v1, Lorg/eclipse/jetty/http/l;->g:LL1/e$a;

    .line 1761
    .line 1762
    if-gt v11, v4, :cond_56

    .line 1763
    .line 1764
    if-gez v11, :cond_53

    .line 1765
    .line 1766
    :cond_56
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1767
    .line 1768
    invoke-interface {v3}, LL1/d;->l0()V

    .line 1769
    .line 1770
    .line 1771
    const/16 v3, -0xd

    .line 1772
    .line 1773
    iput v3, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1774
    .line 1775
    goto :goto_20

    .line 1776
    :cond_57
    iget v3, v1, Lorg/eclipse/jetty/http/l;->k:I

    .line 1777
    .line 1778
    if-lez v3, :cond_5a

    .line 1779
    .line 1780
    iget-boolean v5, v1, Lorg/eclipse/jetty/http/l;->v:Z

    .line 1781
    .line 1782
    if-eqz v5, :cond_5a

    .line 1783
    .line 1784
    iget-boolean v5, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 1785
    .line 1786
    if-nez v5, :cond_59

    .line 1787
    .line 1788
    const/16 v5, 0x64

    .line 1789
    .line 1790
    if-lt v3, v5, :cond_58

    .line 1791
    .line 1792
    const/16 v5, 0xc8

    .line 1793
    .line 1794
    if-ge v3, v5, :cond_58

    .line 1795
    .line 1796
    goto :goto_22

    .line 1797
    :cond_58
    const/4 v3, 0x7

    .line 1798
    goto :goto_23

    .line 1799
    :cond_59
    :goto_22
    const/4 v3, 0x0

    .line 1800
    :goto_23
    iput v3, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1801
    .line 1802
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1803
    .line 1804
    iget-wide v5, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 1805
    .line 1806
    invoke-virtual {v3, v5, v6}, Lorg/eclipse/jetty/http/l$a;->d(J)V

    .line 1807
    .line 1808
    .line 1809
    :cond_5a
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1810
    .line 1811
    invoke-interface {v3}, LL1/d;->length()I

    .line 1812
    .line 1813
    .line 1814
    move-result v3

    .line 1815
    iget v5, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1816
    .line 1817
    :goto_24
    iget v6, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1818
    .line 1819
    if-lez v6, :cond_78

    .line 1820
    .line 1821
    if-lez v3, :cond_78

    .line 1822
    .line 1823
    if-eq v5, v6, :cond_5b

    .line 1824
    .line 1825
    add-int/lit8 v0, v0, 0x1

    .line 1826
    .line 1827
    move v5, v6

    .line 1828
    :cond_5b
    iget-byte v6, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 1829
    .line 1830
    if-ne v6, v2, :cond_5c

    .line 1831
    .line 1832
    iget-object v6, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1833
    .line 1834
    invoke-interface {v6}, LL1/d;->peek()B

    .line 1835
    .line 1836
    .line 1837
    move-result v6

    .line 1838
    const/16 v7, 0xa

    .line 1839
    .line 1840
    if-ne v6, v7, :cond_5c

    .line 1841
    .line 1842
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1843
    .line 1844
    invoke-interface {v3}, LL1/d;->get()B

    .line 1845
    .line 1846
    .line 1847
    move-result v3

    .line 1848
    iput-byte v3, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 1849
    .line 1850
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1851
    .line 1852
    invoke-interface {v3}, LL1/d;->length()I

    .line 1853
    .line 1854
    .line 1855
    move-result v3

    .line 1856
    goto :goto_24

    .line 1857
    :cond_5c
    const/4 v12, 0x0

    .line 1858
    iput-byte v12, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 1859
    .line 1860
    iget v6, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1861
    .line 1862
    packed-switch v6, :pswitch_data_1

    .line 1863
    .line 1864
    .line 1865
    const/16 v6, 0x30

    .line 1866
    .line 1867
    const/16 v7, 0xa

    .line 1868
    .line 1869
    const/4 v12, 0x5

    .line 1870
    const/4 v13, 0x2

    .line 1871
    goto/16 :goto_31

    .line 1872
    .line 1873
    :pswitch_d
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1874
    .line 1875
    invoke-interface {v3}, LL1/d;->length()I

    .line 1876
    .line 1877
    .line 1878
    move-result v3

    .line 1879
    const/4 v13, 0x2

    .line 1880
    if-le v3, v13, :cond_5d

    .line 1881
    .line 1882
    iput v12, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1883
    .line 1884
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->c:LL1/k;

    .line 1885
    .line 1886
    invoke-interface {v3}, LL1/k;->close()V

    .line 1887
    .line 1888
    .line 1889
    goto :goto_26

    .line 1890
    :cond_5d
    :goto_25
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1891
    .line 1892
    invoke-interface {v3}, LL1/d;->length()I

    .line 1893
    .line 1894
    .line 1895
    move-result v3

    .line 1896
    if-lez v3, :cond_5e

    .line 1897
    .line 1898
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1899
    .line 1900
    invoke-interface {v3}, LL1/d;->get()B

    .line 1901
    .line 1902
    .line 1903
    move-result v3

    .line 1904
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 1905
    .line 1906
    .line 1907
    move-result v3

    .line 1908
    if-nez v3, :cond_5d

    .line 1909
    .line 1910
    const/4 v12, 0x0

    .line 1911
    iput v12, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1912
    .line 1913
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->c:LL1/k;

    .line 1914
    .line 1915
    invoke-interface {v3}, LL1/k;->close()V

    .line 1916
    .line 1917
    .line 1918
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1919
    .line 1920
    invoke-interface {v3}, LL1/d;->clear()V

    .line 1921
    .line 1922
    .line 1923
    goto :goto_25

    .line 1924
    :cond_5e
    :goto_26
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1925
    .line 1926
    invoke-interface {v3}, LL1/d;->clear()V

    .line 1927
    .line 1928
    .line 1929
    :goto_27
    const/16 v6, 0x30

    .line 1930
    .line 1931
    :goto_28
    const/16 v7, 0xa

    .line 1932
    .line 1933
    :goto_29
    const/4 v12, 0x5

    .line 1934
    goto/16 :goto_31

    .line 1935
    .line 1936
    :pswitch_e
    const/4 v13, 0x2

    .line 1937
    iget v6, v1, Lorg/eclipse/jetty/http/l;->t:I

    .line 1938
    .line 1939
    iget v7, v1, Lorg/eclipse/jetty/http/l;->u:I

    .line 1940
    .line 1941
    sub-int/2addr v6, v7

    .line 1942
    if-nez v6, :cond_5f

    .line 1943
    .line 1944
    const/4 v3, 0x3

    .line 1945
    iput v3, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 1946
    .line 1947
    goto :goto_27

    .line 1948
    :cond_5f
    if-le v3, v6, :cond_60

    .line 1949
    .line 1950
    move v3, v6

    .line 1951
    :cond_60
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1952
    .line 1953
    invoke-interface {v0, v3}, LL1/d;->get(I)LL1/d;

    .line 1954
    .line 1955
    .line 1956
    move-result-object v0

    .line 1957
    iget-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 1958
    .line 1959
    invoke-interface {v0}, LL1/d;->length()I

    .line 1960
    .line 1961
    .line 1962
    move-result v4

    .line 1963
    int-to-long v4, v4

    .line 1964
    add-long/2addr v2, v4

    .line 1965
    iput-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 1966
    .line 1967
    iget v2, v1, Lorg/eclipse/jetty/http/l;->u:I

    .line 1968
    .line 1969
    invoke-interface {v0}, LL1/d;->length()I

    .line 1970
    .line 1971
    .line 1972
    move-result v3

    .line 1973
    add-int/2addr v2, v3

    .line 1974
    iput v2, v1, Lorg/eclipse/jetty/http/l;->u:I

    .line 1975
    .line 1976
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->n:LL1/l;

    .line 1977
    .line 1978
    invoke-virtual {v2, v0}, LL1/l;->update(LL1/d;)V

    .line 1979
    .line 1980
    .line 1981
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 1982
    .line 1983
    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/http/l$a;->a(LL1/d;)V

    .line 1984
    .line 1985
    .line 1986
    const/16 v20, 0x1

    .line 1987
    .line 1988
    return v20

    .line 1989
    :pswitch_f
    const/4 v13, 0x2

    .line 1990
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 1991
    .line 1992
    invoke-interface {v3}, LL1/d;->get()B

    .line 1993
    .line 1994
    .line 1995
    move-result v3

    .line 1996
    if-eq v3, v2, :cond_62

    .line 1997
    .line 1998
    const/16 v7, 0xa

    .line 1999
    .line 2000
    if-ne v3, v7, :cond_61

    .line 2001
    .line 2002
    goto :goto_2a

    .line 2003
    :cond_61
    const/16 v6, 0x30

    .line 2004
    .line 2005
    goto :goto_29

    .line 2006
    :cond_62
    :goto_2a
    iput-byte v3, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 2007
    .line 2008
    iget v6, v1, Lorg/eclipse/jetty/http/l;->t:I

    .line 2009
    .line 2010
    if-nez v6, :cond_65

    .line 2011
    .line 2012
    if-ne v3, v2, :cond_63

    .line 2013
    .line 2014
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2015
    .line 2016
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 2017
    .line 2018
    .line 2019
    move-result v0

    .line 2020
    if-eqz v0, :cond_63

    .line 2021
    .line 2022
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2023
    .line 2024
    invoke-interface {v0}, LL1/d;->peek()B

    .line 2025
    .line 2026
    .line 2027
    move-result v0

    .line 2028
    const/16 v3, 0xa

    .line 2029
    .line 2030
    if-ne v0, v3, :cond_63

    .line 2031
    .line 2032
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2033
    .line 2034
    invoke-interface {v0}, LL1/d;->get()B

    .line 2035
    .line 2036
    .line 2037
    move-result v0

    .line 2038
    iput-byte v0, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 2039
    .line 2040
    :cond_63
    iget-boolean v0, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 2041
    .line 2042
    if-eqz v0, :cond_64

    .line 2043
    .line 2044
    const/4 v0, 0x0

    .line 2045
    goto :goto_2b

    .line 2046
    :cond_64
    const/4 v0, 0x7

    .line 2047
    :goto_2b
    iput v0, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 2048
    .line 2049
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 2050
    .line 2051
    iget-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 2052
    .line 2053
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/l$a;->d(J)V

    .line 2054
    .line 2055
    .line 2056
    const/16 v20, 0x1

    .line 2057
    .line 2058
    return v20

    .line 2059
    :cond_65
    const/4 v3, 0x6

    .line 2060
    iput v3, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 2061
    .line 2062
    goto/16 :goto_27

    .line 2063
    .line 2064
    :pswitch_10
    const/4 v13, 0x2

    .line 2065
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2066
    .line 2067
    invoke-interface {v3}, LL1/d;->get()B

    .line 2068
    .line 2069
    .line 2070
    move-result v3

    .line 2071
    if-eq v3, v2, :cond_66

    .line 2072
    .line 2073
    const/16 v7, 0xa

    .line 2074
    .line 2075
    if-ne v3, v7, :cond_67

    .line 2076
    .line 2077
    :cond_66
    const/16 v6, 0x30

    .line 2078
    .line 2079
    const/4 v12, 0x5

    .line 2080
    goto :goto_2e

    .line 2081
    :cond_67
    if-le v3, v4, :cond_68

    .line 2082
    .line 2083
    const/16 v6, 0x3b

    .line 2084
    .line 2085
    if-ne v3, v6, :cond_69

    .line 2086
    .line 2087
    :cond_68
    const/16 v6, 0x30

    .line 2088
    .line 2089
    const/4 v12, 0x5

    .line 2090
    goto :goto_2c

    .line 2091
    :cond_69
    const/16 v6, 0x30

    .line 2092
    .line 2093
    if-lt v3, v6, :cond_6a

    .line 2094
    .line 2095
    const/16 v7, 0x39

    .line 2096
    .line 2097
    if-gt v3, v7, :cond_6a

    .line 2098
    .line 2099
    iget v7, v1, Lorg/eclipse/jetty/http/l;->t:I

    .line 2100
    .line 2101
    mul-int/lit8 v7, v7, 0x10

    .line 2102
    .line 2103
    add-int/lit8 v3, v3, -0x30

    .line 2104
    .line 2105
    add-int/2addr v7, v3

    .line 2106
    iput v7, v1, Lorg/eclipse/jetty/http/l;->t:I

    .line 2107
    .line 2108
    goto/16 :goto_28

    .line 2109
    .line 2110
    :cond_6a
    const/16 v7, 0x61

    .line 2111
    .line 2112
    if-lt v3, v7, :cond_6b

    .line 2113
    .line 2114
    const/16 v7, 0x66

    .line 2115
    .line 2116
    if-gt v3, v7, :cond_6b

    .line 2117
    .line 2118
    iget v7, v1, Lorg/eclipse/jetty/http/l;->t:I

    .line 2119
    .line 2120
    mul-int/lit8 v7, v7, 0x10

    .line 2121
    .line 2122
    add-int/lit8 v3, v3, -0x57

    .line 2123
    .line 2124
    add-int/2addr v7, v3

    .line 2125
    iput v7, v1, Lorg/eclipse/jetty/http/l;->t:I

    .line 2126
    .line 2127
    goto/16 :goto_28

    .line 2128
    .line 2129
    :cond_6b
    const/16 v7, 0x41

    .line 2130
    .line 2131
    if-lt v3, v7, :cond_6c

    .line 2132
    .line 2133
    const/16 v7, 0x46

    .line 2134
    .line 2135
    if-gt v3, v7, :cond_6c

    .line 2136
    .line 2137
    iget v7, v1, Lorg/eclipse/jetty/http/l;->t:I

    .line 2138
    .line 2139
    mul-int/lit8 v7, v7, 0x10

    .line 2140
    .line 2141
    add-int/lit8 v3, v3, -0x37

    .line 2142
    .line 2143
    add-int/2addr v7, v3

    .line 2144
    iput v7, v1, Lorg/eclipse/jetty/http/l;->t:I

    .line 2145
    .line 2146
    goto/16 :goto_28

    .line 2147
    .line 2148
    :cond_6c
    new-instance v0, Ljava/io/IOException;

    .line 2149
    .line 2150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2151
    .line 2152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2153
    .line 2154
    .line 2155
    const-string v4, "bad chunk char: "

    .line 2156
    .line 2157
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    .line 2159
    .line 2160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2161
    .line 2162
    .line 2163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v2

    .line 2167
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2168
    .line 2169
    .line 2170
    throw v0

    .line 2171
    :goto_2c
    iput v12, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 2172
    .line 2173
    :goto_2d
    const/16 v7, 0xa

    .line 2174
    .line 2175
    goto :goto_31

    .line 2176
    :goto_2e
    iput-byte v3, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 2177
    .line 2178
    iget v7, v1, Lorg/eclipse/jetty/http/l;->t:I

    .line 2179
    .line 2180
    if-nez v7, :cond_6f

    .line 2181
    .line 2182
    if-ne v3, v2, :cond_6d

    .line 2183
    .line 2184
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2185
    .line 2186
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 2187
    .line 2188
    .line 2189
    move-result v0

    .line 2190
    if-eqz v0, :cond_6d

    .line 2191
    .line 2192
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2193
    .line 2194
    invoke-interface {v0}, LL1/d;->peek()B

    .line 2195
    .line 2196
    .line 2197
    move-result v0

    .line 2198
    const/16 v3, 0xa

    .line 2199
    .line 2200
    if-ne v0, v3, :cond_6d

    .line 2201
    .line 2202
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2203
    .line 2204
    invoke-interface {v0}, LL1/d;->get()B

    .line 2205
    .line 2206
    .line 2207
    move-result v0

    .line 2208
    iput-byte v0, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 2209
    .line 2210
    :cond_6d
    iget-boolean v0, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 2211
    .line 2212
    if-eqz v0, :cond_6e

    .line 2213
    .line 2214
    const/4 v0, 0x0

    .line 2215
    goto :goto_2f

    .line 2216
    :cond_6e
    const/4 v0, 0x7

    .line 2217
    :goto_2f
    iput v0, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 2218
    .line 2219
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 2220
    .line 2221
    iget-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 2222
    .line 2223
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/l$a;->d(J)V

    .line 2224
    .line 2225
    .line 2226
    const/16 v20, 0x1

    .line 2227
    .line 2228
    return v20

    .line 2229
    :cond_6f
    const/4 v3, 0x6

    .line 2230
    iput v3, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 2231
    .line 2232
    goto :goto_2d

    .line 2233
    :pswitch_11
    const/16 v6, 0x30

    .line 2234
    .line 2235
    const/4 v12, 0x5

    .line 2236
    const/4 v13, 0x2

    .line 2237
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2238
    .line 2239
    invoke-interface {v3}, LL1/d;->peek()B

    .line 2240
    .line 2241
    .line 2242
    move-result v3

    .line 2243
    const/16 v7, 0xa

    .line 2244
    .line 2245
    if-eq v3, v2, :cond_72

    .line 2246
    .line 2247
    if-ne v3, v7, :cond_70

    .line 2248
    .line 2249
    goto :goto_30

    .line 2250
    :cond_70
    if-gt v3, v4, :cond_71

    .line 2251
    .line 2252
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2253
    .line 2254
    invoke-interface {v3}, LL1/d;->get()B

    .line 2255
    .line 2256
    .line 2257
    goto :goto_31

    .line 2258
    :cond_71
    const/4 v3, 0x0

    .line 2259
    iput v3, v1, Lorg/eclipse/jetty/http/l;->t:I

    .line 2260
    .line 2261
    iput v3, v1, Lorg/eclipse/jetty/http/l;->u:I

    .line 2262
    .line 2263
    const/4 v3, 0x4

    .line 2264
    iput v3, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 2265
    .line 2266
    goto :goto_31

    .line 2267
    :cond_72
    :goto_30
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2268
    .line 2269
    invoke-interface {v3}, LL1/d;->get()B

    .line 2270
    .line 2271
    .line 2272
    move-result v3

    .line 2273
    iput-byte v3, v1, Lorg/eclipse/jetty/http/l;->p:B

    .line 2274
    .line 2275
    :goto_31
    iget-object v3, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2276
    .line 2277
    invoke-interface {v3}, LL1/d;->length()I

    .line 2278
    .line 2279
    .line 2280
    move-result v3

    .line 2281
    goto/16 :goto_24

    .line 2282
    .line 2283
    :pswitch_12
    iget-wide v4, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 2284
    .line 2285
    iget-wide v6, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 2286
    .line 2287
    sub-long/2addr v4, v6

    .line 2288
    const-wide/16 v17, 0x0

    .line 2289
    .line 2290
    cmp-long v0, v4, v17

    .line 2291
    .line 2292
    if-nez v0, :cond_74

    .line 2293
    .line 2294
    iget-boolean v0, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 2295
    .line 2296
    if-eqz v0, :cond_73

    .line 2297
    .line 2298
    const/4 v5, 0x0

    .line 2299
    goto :goto_32

    .line 2300
    :cond_73
    const/4 v5, 0x7

    .line 2301
    :goto_32
    iput v5, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 2302
    .line 2303
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 2304
    .line 2305
    invoke-virtual {v0, v6, v7}, Lorg/eclipse/jetty/http/l$a;->d(J)V

    .line 2306
    .line 2307
    .line 2308
    const/16 v20, 0x1

    .line 2309
    .line 2310
    return v20

    .line 2311
    :cond_74
    int-to-long v6, v3

    .line 2312
    cmp-long v0, v6, v4

    .line 2313
    .line 2314
    if-lez v0, :cond_75

    .line 2315
    .line 2316
    long-to-int v3, v4

    .line 2317
    :cond_75
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2318
    .line 2319
    invoke-interface {v0, v3}, LL1/d;->get(I)LL1/d;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v0

    .line 2323
    iget-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 2324
    .line 2325
    invoke-interface {v0}, LL1/d;->length()I

    .line 2326
    .line 2327
    .line 2328
    move-result v4

    .line 2329
    int-to-long v4, v4

    .line 2330
    add-long/2addr v2, v4

    .line 2331
    iput-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 2332
    .line 2333
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->n:LL1/l;

    .line 2334
    .line 2335
    invoke-virtual {v2, v0}, LL1/l;->update(LL1/d;)V

    .line 2336
    .line 2337
    .line 2338
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 2339
    .line 2340
    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/http/l$a;->a(LL1/d;)V

    .line 2341
    .line 2342
    .line 2343
    iget-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 2344
    .line 2345
    iget-wide v4, v1, Lorg/eclipse/jetty/http/l;->r:J

    .line 2346
    .line 2347
    cmp-long v0, v2, v4

    .line 2348
    .line 2349
    if-nez v0, :cond_77

    .line 2350
    .line 2351
    iget-boolean v0, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 2352
    .line 2353
    if-eqz v0, :cond_76

    .line 2354
    .line 2355
    const/4 v5, 0x0

    .line 2356
    goto :goto_33

    .line 2357
    :cond_76
    const/4 v5, 0x7

    .line 2358
    :goto_33
    iput v5, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 2359
    .line 2360
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 2361
    .line 2362
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/l$a;->d(J)V

    .line 2363
    .line 2364
    .line 2365
    :cond_77
    const/16 v20, 0x1

    .line 2366
    .line 2367
    return v20

    .line 2368
    :pswitch_13
    iget-object v0, v1, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 2369
    .line 2370
    invoke-interface {v0}, LL1/d;->length()I

    .line 2371
    .line 2372
    .line 2373
    move-result v2

    .line 2374
    invoke-interface {v0, v2}, LL1/d;->get(I)LL1/d;

    .line 2375
    .line 2376
    .line 2377
    move-result-object v0

    .line 2378
    iget-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 2379
    .line 2380
    invoke-interface {v0}, LL1/d;->length()I

    .line 2381
    .line 2382
    .line 2383
    move-result v4

    .line 2384
    int-to-long v4, v4

    .line 2385
    add-long/2addr v2, v4

    .line 2386
    iput-wide v2, v1, Lorg/eclipse/jetty/http/l;->s:J

    .line 2387
    .line 2388
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->n:LL1/l;

    .line 2389
    .line 2390
    invoke-virtual {v2, v0}, LL1/l;->update(LL1/d;)V

    .line 2391
    .line 2392
    .line 2393
    iget-object v2, v1, Lorg/eclipse/jetty/http/l;->a:Lorg/eclipse/jetty/http/l$a;

    .line 2394
    .line 2395
    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/http/l$a;->a(LL1/d;)V
    :try_end_d
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_d .. :try_end_d} :catch_3

    .line 2396
    .line 2397
    .line 2398
    const/16 v20, 0x1

    .line 2399
    .line 2400
    return v20

    .line 2401
    :cond_78
    return v0

    .line 2402
    :goto_34
    iput-boolean v5, v1, Lorg/eclipse/jetty/http/l;->m:Z

    .line 2403
    .line 2404
    const/4 v2, 0x7

    .line 2405
    iput v2, v1, Lorg/eclipse/jetty/http/l;->o:I

    .line 2406
    .line 2407
    throw v0

    .line 2408
    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/l;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public m(I)V
    .locals 2

    .line 1
    iput p1, p0, Lorg/eclipse/jetty/http/l;->o:I

    .line 2
    .line 3
    const-wide/16 v0, -0x3

    .line 4
    .line 5
    iput-wide v0, p0, Lorg/eclipse/jetty/http/l;->r:J

    .line 6
    .line 7
    return-void
.end method

.method public reset()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->n:LL1/l;

    .line 2
    .line 3
    invoke-virtual {v0}, LL1/a;->n0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, LL1/a;->z0(I)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/l;->m:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v0, -0xe

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->c:LL1/k;

    .line 19
    .line 20
    invoke-interface {v0}, LL1/k;->s()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x7

    .line 29
    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/http/l;->o:I

    .line 30
    .line 31
    const-wide/16 v2, -0x3

    .line 32
    .line 33
    iput-wide v2, p0, Lorg/eclipse/jetty/http/l;->r:J

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    iput-wide v2, p0, Lorg/eclipse/jetty/http/l;->s:J

    .line 38
    .line 39
    iput v1, p0, Lorg/eclipse/jetty/http/l;->q:I

    .line 40
    .line 41
    iput v1, p0, Lorg/eclipse/jetty/http/l;->k:I

    .line 42
    .line 43
    iget-byte v0, p0, Lorg/eclipse/jetty/http/l;->p:B

    .line 44
    .line 45
    const/16 v1, 0xd

    .line 46
    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 60
    .line 61
    invoke-interface {v0}, LL1/d;->peek()B

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/16 v1, 0xa

    .line 66
    .line 67
    if-ne v0, v1, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 70
    .line 71
    invoke-interface {v0}, LL1/d;->get()B

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput-byte v0, p0, Lorg/eclipse/jetty/http/l;->p:B

    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 78
    .line 79
    const/4 v1, -0x1

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 89
    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/l;->g()LL1/d;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-interface {v0, v1}, LL1/d;->o0(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 100
    .line 101
    invoke-interface {v0}, LL1/d;->u0()V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 105
    .line 106
    invoke-interface {v0}, LL1/d;->f0()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget-object v2, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 111
    .line 112
    invoke-interface {v2}, LL1/d;->length()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-le v0, v2, :cond_4

    .line 117
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 119
    .line 120
    invoke-interface {v0}, LL1/d;->length()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 125
    .line 126
    invoke-interface {v2}, LL1/d;->getIndex()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-interface {v2, v3, v0}, LL1/d;->h0(II)LL1/d;

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 134
    .line 135
    iget-object v3, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 136
    .line 137
    invoke-interface {v2}, LL1/d;->getIndex()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-interface {v2, v4, v0}, LL1/d;->h0(II)LL1/d;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v3, v0}, LL1/d;->m0(LL1/d;)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-interface {v2, v0}, LL1/d;->skip(I)I

    .line 150
    .line 151
    .line 152
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 153
    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    invoke-interface {v0, v1}, LL1/d;->o0(I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 160
    .line 161
    invoke-interface {v0}, LL1/d;->u0()V

    .line 162
    .line 163
    .line 164
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->e:LL1/d;

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    invoke-interface {v0, v1}, LL1/d;->o0(I)V

    .line 169
    .line 170
    .line 171
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/l;->d:LL1/d;

    .line 172
    .line 173
    iput-object v0, p0, Lorg/eclipse/jetty/http/l;->f:LL1/d;

    .line 174
    .line 175
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/l;->a()V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lorg/eclipse/jetty/http/l;->o:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v2, p0, Lorg/eclipse/jetty/http/l;->q:I

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-wide v3, p0, Lorg/eclipse/jetty/http/l;->r:J

    .line 22
    .line 23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "%s{s=%d,l=%d,c=%d}"

    .line 32
    .line 33
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
