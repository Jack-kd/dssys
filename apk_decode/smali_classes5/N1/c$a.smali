.class public LN1/c$a;
.super LN1/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:LN1/c;


# direct methods
.method public constructor <init>(LN1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, LN1/c$a;->d:LN1/c;

    .line 2
    .line 3
    invoke-direct {p0, p1}, LN1/j;-><init>(LN1/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/a;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LN1/c$a;->d:LN1/c;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, LN1/c;->h(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, LN1/j;->a()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, LN1/j;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    iget-object v0, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/a;->x()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    instance-of v0, p1, LS1/e;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p1, LS1/e;

    .line 20
    .line 21
    iget-object v0, p0, LN1/c$a;->d:LN1/c;

    .line 22
    .line 23
    iget-object v0, v0, LN1/c;->m:Lorg/eclipse/jetty/http/g;

    .line 24
    .line 25
    sget-object v1, Lorg/eclipse/jetty/http/j;->B:LL1/d;

    .line 26
    .line 27
    invoke-virtual {p1}, LS1/e;->d()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/g;->y(LL1/d;J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, LS1/e;->c()Ljava/io/InputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v4, v0

    .line 39
    move-object v0, p1

    .line 40
    move-object p1, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    instance-of v1, p1, LL1/d;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 48
    .line 49
    check-cast p1, LL1/d;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-interface {v0, p1, v1}, Lorg/eclipse/jetty/http/c;->g(LL1/d;Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, LN1/c$a;->d:LN1/c;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, LN1/c;->h(Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    instance-of v1, p1, Ljava/io/InputStream;

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    check-cast p1, Ljava/io/InputStream;

    .line 66
    .line 67
    :try_start_0
    iget-object v1, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 68
    .line 69
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/a;->y()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget-object v2, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 74
    .line 75
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/a;->t()LL1/d;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2, p1, v1}, LL1/d;->e0(Ljava/io/InputStream;I)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :goto_1
    if-ltz v1, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, LN1/c$a;->d:LN1/c;

    .line 86
    .line 87
    invoke-static {v1}, LN1/c;->g(LN1/c;)LL1/k;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, LL1/k;->o()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_2

    .line 96
    .line 97
    iget-object v1, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 98
    .line 99
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/a;->q()V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, LN1/c$a;->d:LN1/c;

    .line 103
    .line 104
    iget-object v1, v1, LN1/c;->o:LN1/c$a;

    .line 105
    .line 106
    invoke-virtual {v1}, LN1/c$a;->a()V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 110
    .line 111
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/a;->y()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iget-object v2, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 116
    .line 117
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/a;->t()LL1/d;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v2, p1, v1}, LL1/d;->e0(Ljava/io/InputStream;I)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    goto :goto_1

    .line 126
    :catchall_0
    move-exception v1

    .line 127
    goto :goto_2

    .line 128
    :cond_2
    iget-object v1, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 129
    .line 130
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/a;->q()V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, LN1/c$a;->d:LN1/c;

    .line 134
    .line 135
    iget-object v1, v1, LN1/c;->o:LN1/c$a;

    .line 136
    .line 137
    invoke-virtual {v1}, LN1/c$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    invoke-virtual {v0}, LS1/e;->i()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :goto_2
    if-eqz v0, :cond_4

    .line 151
    .line 152
    invoke-virtual {v0}, LS1/e;->i()V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 157
    .line 158
    .line 159
    :goto_3
    throw v1

    .line 160
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    const-string v0, "unknown content type?"

    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    const-string v0, "!empty"

    .line 171
    .line 172
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 177
    .line 178
    const-string v0, "Closed"

    .line 179
    .line 180
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method

.method public f(LL1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 2
    .line 3
    check-cast v0, Lorg/eclipse/jetty/http/h;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/h;->F(LL1/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
