.class public Lorg/eclipse/jetty/http/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jetty/http/f;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lorg/eclipse/jetty/http/f;->d:Ljava/lang/String;

    .line 4
    iput-boolean p6, p0, Lorg/eclipse/jetty/http/f;->i:Z

    .line 5
    iput p5, p0, Lorg/eclipse/jetty/http/f;->e:I

    .line 6
    iput-object p1, p0, Lorg/eclipse/jetty/http/f;->a:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lorg/eclipse/jetty/http/f;->f:Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lorg/eclipse/jetty/http/f;->g:Z

    .line 9
    iput-object p2, p0, Lorg/eclipse/jetty/http/f;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lorg/eclipse/jetty/http/f;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p8, p0, Lorg/eclipse/jetty/http/f;->c:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lorg/eclipse/jetty/http/f;->d:Ljava/lang/String;

    .line 14
    iput-boolean p6, p0, Lorg/eclipse/jetty/http/f;->i:Z

    .line 15
    iput p5, p0, Lorg/eclipse/jetty/http/f;->e:I

    .line 16
    iput-object p1, p0, Lorg/eclipse/jetty/http/f;->a:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lorg/eclipse/jetty/http/f;->f:Ljava/lang/String;

    .line 18
    iput-boolean p7, p0, Lorg/eclipse/jetty/http/f;->g:Z

    .line 19
    iput-object p2, p0, Lorg/eclipse/jetty/http/f;->b:Ljava/lang/String;

    .line 20
    iput p9, p0, Lorg/eclipse/jetty/http/f;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/f;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/f;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/f;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/f;->g:Z

    .line 2
    .line 3
    return v0
.end method
