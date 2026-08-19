.class public Lorg/eclipse/jetty/http/e;
.super Lorg/eclipse/jetty/util/component/a;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/http/d;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lorg/eclipse/jetty/io/Buffers$Type;

.field public h:Lorg/eclipse/jetty/io/Buffers$Type;

.field public i:Lorg/eclipse/jetty/io/Buffers$Type;

.field public j:Lorg/eclipse/jetty/io/Buffers$Type;

.field public k:Lorg/eclipse/jetty/io/Buffers;

.field public l:Lorg/eclipse/jetty/io/Buffers;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x4000

    .line 5
    .line 6
    iput v0, p0, Lorg/eclipse/jetty/http/e;->b:I

    .line 7
    .line 8
    const/16 v0, 0x1800

    .line 9
    .line 10
    iput v0, p0, Lorg/eclipse/jetty/http/e;->c:I

    .line 11
    .line 12
    const v1, 0x8000

    .line 13
    .line 14
    .line 15
    iput v1, p0, Lorg/eclipse/jetty/http/e;->d:I

    .line 16
    .line 17
    iput v0, p0, Lorg/eclipse/jetty/http/e;->e:I

    .line 18
    .line 19
    const/16 v0, 0x400

    .line 20
    .line 21
    iput v0, p0, Lorg/eclipse/jetty/http/e;->f:I

    .line 22
    .line 23
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/eclipse/jetty/http/e;->g:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 26
    .line 27
    iput-object v0, p0, Lorg/eclipse/jetty/http/e;->h:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/eclipse/jetty/http/e;->i:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 30
    .line 31
    iput-object v0, p0, Lorg/eclipse/jetty/http/e;->j:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public H()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/e;->l:Lorg/eclipse/jetty/io/Buffers;

    .line 2
    .line 3
    return-object v0
.end method

.method public P()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/e;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public Q(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/http/e;->g:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 2
    .line 3
    return-void
.end method

.method public R(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/http/e;->h:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 2
    .line 3
    return-void
.end method

.method public S(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/http/e;->i:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 2
    .line 3
    return-void
.end method

.method public T(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/http/e;->j:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 2
    .line 3
    return-void
.end method

.method public doStart()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/e;->h:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 2
    .line 3
    iget v1, p0, Lorg/eclipse/jetty/http/e;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lorg/eclipse/jetty/http/e;->g:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 6
    .line 7
    iget v3, p0, Lorg/eclipse/jetty/http/e;->b:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/e;->P()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    move-object v4, v2

    .line 14
    invoke-static/range {v0 .. v5}, Lorg/eclipse/jetty/io/b;->a(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/eclipse/jetty/http/e;->k:Lorg/eclipse/jetty/io/Buffers;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/eclipse/jetty/http/e;->j:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 21
    .line 22
    iget v2, p0, Lorg/eclipse/jetty/http/e;->e:I

    .line 23
    .line 24
    iget-object v3, p0, Lorg/eclipse/jetty/http/e;->i:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 25
    .line 26
    iget v4, p0, Lorg/eclipse/jetty/http/e;->d:I

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/e;->P()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    move-object v5, v3

    .line 33
    invoke-static/range {v1 .. v6}, Lorg/eclipse/jetty/io/b;->a(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lorg/eclipse/jetty/http/e;->l:Lorg/eclipse/jetty/io/Buffers;

    .line 38
    .line 39
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/a;->doStart()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public doStop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jetty/http/e;->k:Lorg/eclipse/jetty/io/Buffers;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/eclipse/jetty/http/e;->l:Lorg/eclipse/jetty/io/Buffers;

    .line 5
    .line 6
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
    iget-object v1, p0, Lorg/eclipse/jetty/http/e;->k:Lorg/eclipse/jetty/io/Buffers;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "/"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/eclipse/jetty/http/e;->l:Lorg/eclipse/jetty/io/Buffers;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public z()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/e;->k:Lorg/eclipse/jetty/io/Buffers;

    .line 2
    .line 3
    return-object v0
.end method
