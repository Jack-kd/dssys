.class public final Lcom/fl/saas/V$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/fl/saas/N;

.field private c:Lcom/fl/saas/D;

.field private d:Lcom/fl/saas/X0;

.field private e:Lcom/fl/saas/Q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/fl/saas/Y0;->a(Landroid/content/Context;)Lcom/fl/saas/X0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/fl/saas/V$b;->d:Lcom/fl/saas/X0;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/fl/saas/Z0;->b(Landroid/content/Context;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/fl/saas/V$b;->a:Ljava/io/File;

    .line 15
    .line 16
    new-instance p1, Lcom/fl/saas/e1;

    .line 17
    .line 18
    const-wide/32 v0, 0x20000000

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0, v1}, Lcom/fl/saas/e1;-><init>(J)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/fl/saas/V$b;->c:Lcom/fl/saas/D;

    .line 25
    .line 26
    new-instance p1, Lcom/fl/saas/i0;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/fl/saas/i0;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/fl/saas/V$b;->b:Lcom/fl/saas/N;

    .line 32
    .line 33
    new-instance p1, Lcom/fl/saas/H;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/fl/saas/H;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/fl/saas/V$b;->e:Lcom/fl/saas/Q;

    .line 39
    .line 40
    return-void
.end method

.method private b()Lcom/fl/saas/y;
    .locals 6

    .line 1
    new-instance v0, Lcom/fl/saas/y;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fl/saas/V$b;->a:Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fl/saas/V$b;->b:Lcom/fl/saas/N;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fl/saas/V$b;->c:Lcom/fl/saas/D;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/fl/saas/V$b;->d:Lcom/fl/saas/X0;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/fl/saas/V$b;->e:Lcom/fl/saas/Q;

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/fl/saas/y;-><init>(Ljava/io/File;Lcom/fl/saas/N;Lcom/fl/saas/D;Lcom/fl/saas/X0;Lcom/fl/saas/Q;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/fl/saas/V$b;
    .locals 1

    .line 4
    new-instance v0, Lcom/fl/saas/e1;

    invoke-direct {v0, p1, p2}, Lcom/fl/saas/e1;-><init>(J)V

    iput-object v0, p0, Lcom/fl/saas/V$b;->c:Lcom/fl/saas/D;

    return-object p0
.end method

.method public a(Lcom/fl/saas/Q;)Lcom/fl/saas/V$b;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/fl/saas/w0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/Q;

    iput-object p1, p0, Lcom/fl/saas/V$b;->e:Lcom/fl/saas/Q;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/fl/saas/V$b;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/fl/saas/w0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/fl/saas/V$b;->a:Ljava/io/File;

    return-object p0
.end method

.method public a()Lcom/fl/saas/V;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/V$b;->b()Lcom/fl/saas/y;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/V;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/fl/saas/V;-><init>(Lcom/fl/saas/y;Lcom/fl/saas/V$a;)V

    return-object v1
.end method
