.class public Lcom/beizi/fusion/s5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/beizi/fusion/ua;

.field private final b:Lcom/beizi/fusion/n5;

.field private c:Lcom/beizi/fusion/fm;

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:Z

.field private g:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/beizi/fusion/n5;->a()Lcom/beizi/fusion/n5;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/beizi/fusion/s5;->b:Lcom/beizi/fusion/n5;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/beizi/fusion/s5;->f:Z

    .line 12
    .line 13
    return-void
.end method

.method private a(Lcom/beizi/fusion/pc;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/s5;->a:Lcom/beizi/fusion/ua;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Lcom/beizi/fusion/ua;->a(Lcom/beizi/fusion/pc;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/ua;)Lcom/beizi/fusion/s5;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/beizi/fusion/s5;->a:Lcom/beizi/fusion/ua;

    return-object p0
.end method

.method public a(Z)Lcom/beizi/fusion/s5;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/s5;->f:Z

    return-object p0
.end method

.method public a([B)Lcom/beizi/fusion/s5;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/s5;->e:[B

    return-object p0
.end method

.method public a()Lcom/beizi/fusion/sa;
    .locals 6

    .line 17
    new-instance v0, Lcom/beizi/fusion/m9;

    iget-object v1, p0, Lcom/beizi/fusion/s5;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/beizi/fusion/s5;->c:Lcom/beizi/fusion/fm;

    iget-object v3, p0, Lcom/beizi/fusion/s5;->e:[B

    iget-object v4, p0, Lcom/beizi/fusion/s5;->b:Lcom/beizi/fusion/n5;

    iget-boolean v5, p0, Lcom/beizi/fusion/s5;->f:Z

    invoke-direct/range {v0 .. v5}, Lcom/beizi/fusion/m9;-><init>(Ljava/lang/String;Lcom/beizi/fusion/fm;[BLcom/beizi/fusion/n5;Z)V

    .line 18
    iget-object v1, p0, Lcom/beizi/fusion/s5;->a:Lcom/beizi/fusion/ua;

    invoke-static {v0, v1}, Lcom/beizi/fusion/l9;->a(Lcom/beizi/fusion/me;Lcom/beizi/fusion/ua;)Lcom/beizi/fusion/sa;

    move-result-object v0

    .line 19
    instance-of v1, v0, Lcom/beizi/fusion/jh;

    if-eqz v1, :cond_0

    .line 20
    move-object v1, v0

    check-cast v1, Lcom/beizi/fusion/jh;

    iget-object v2, p0, Lcom/beizi/fusion/s5;->g:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/jh;->a(Ljava/io/File;)V

    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    .line 10
    invoke-static {}, Lcom/beizi/fusion/fn;->a()Lcom/beizi/fusion/fn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/x9;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beizi/fusion/hb;

    .line 11
    new-instance v0, Lcom/beizi/fusion/m9;

    iget-object v1, p0, Lcom/beizi/fusion/s5;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/beizi/fusion/s5;->c:Lcom/beizi/fusion/fm;

    iget-object v3, p0, Lcom/beizi/fusion/s5;->e:[B

    iget-object v4, p0, Lcom/beizi/fusion/s5;->b:Lcom/beizi/fusion/n5;

    iget-boolean v5, p0, Lcom/beizi/fusion/s5;->f:Z

    invoke-direct/range {v0 .. v5}, Lcom/beizi/fusion/m9;-><init>(Ljava/lang/String;Lcom/beizi/fusion/fm;[BLcom/beizi/fusion/n5;Z)V

    .line 12
    iget-object v1, p0, Lcom/beizi/fusion/s5;->a:Lcom/beizi/fusion/ua;

    invoke-static {v0, v1}, Lcom/beizi/fusion/l9;->a(Lcom/beizi/fusion/me;Lcom/beizi/fusion/ua;)Lcom/beizi/fusion/sa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Lcom/beizi/fusion/jh;

    if-eqz v1, :cond_0

    .line 14
    move-object v1, v0

    check-cast v1, Lcom/beizi/fusion/jh;

    iget-object v2, p0, Lcom/beizi/fusion/s5;->g:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/jh;->a(Ljava/io/File;)V

    .line 15
    :cond_0
    invoke-interface {p1, v0}, Lcom/beizi/fusion/hb;->b(Ljava/lang/Runnable;)V

    return-void

    .line 16
    :cond_1
    sget-object p1, Lcom/beizi/fusion/xi$a;->d:Lcom/beizi/fusion/xi$a;

    invoke-direct {p0, p1}, Lcom/beizi/fusion/s5;->a(Lcom/beizi/fusion/pc;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/beizi/fusion/fm;->f:Lcom/beizi/fusion/fm;

    iput-object v0, p0, Lcom/beizi/fusion/s5;->c:Lcom/beizi/fusion/fm;

    .line 8
    iput-object p1, p0, Lcom/beizi/fusion/s5;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/beizi/fusion/fm;->d:Lcom/beizi/fusion/fm;

    iput-object v0, p0, Lcom/beizi/fusion/s5;->c:Lcom/beizi/fusion/fm;

    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/s5;->d:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/beizi/fusion/s5;->g:Ljava/io/File;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/s5;->b:Lcom/beizi/fusion/n5;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/fm;->c:Lcom/beizi/fusion/fm;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/beizi/fusion/s5;->c:Lcom/beizi/fusion/fm;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/s5;->d:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/fm;->b:Lcom/beizi/fusion/fm;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/beizi/fusion/s5;->c:Lcom/beizi/fusion/fm;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/s5;->d:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/fm;->e:Lcom/beizi/fusion/fm;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/beizi/fusion/s5;->c:Lcom/beizi/fusion/fm;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/s5;->d:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
