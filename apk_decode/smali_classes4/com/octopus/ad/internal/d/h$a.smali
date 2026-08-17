.class public final Lcom/octopus/ad/internal/d/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/octopus/ad/internal/d/a/c;

.field private c:Lcom/octopus/ad/internal/d/a/a;

.field private d:Lcom/octopus/ad/internal/d/b/c;

.field private e:Lcom/octopus/ad/internal/d/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/octopus/ad/internal/d/b/d;->a(Landroid/content/Context;)Lcom/octopus/ad/internal/d/b/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/octopus/ad/internal/d/h$a;->d:Lcom/octopus/ad/internal/d/b/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/octopus/ad/internal/d/t;->a(Landroid/content/Context;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/octopus/ad/internal/d/h$a;->a:Ljava/io/File;

    .line 15
    .line 16
    new-instance p1, Lcom/octopus/ad/internal/d/a/g;

    .line 17
    .line 18
    const-wide/32 v0, 0x20000000

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0, v1}, Lcom/octopus/ad/internal/d/a/g;-><init>(J)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/octopus/ad/internal/d/h$a;->c:Lcom/octopus/ad/internal/d/a/a;

    .line 25
    .line 26
    new-instance p1, Lcom/octopus/ad/internal/d/a/f;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/octopus/ad/internal/d/a/f;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/octopus/ad/internal/d/h$a;->b:Lcom/octopus/ad/internal/d/a/c;

    .line 32
    .line 33
    new-instance p1, Lcom/octopus/ad/internal/d/d;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/octopus/ad/internal/d/d;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/octopus/ad/internal/d/h$a;->e:Lcom/octopus/ad/internal/d/f;

    .line 39
    .line 40
    return-void
.end method

.method private b()Lcom/octopus/ad/internal/d/c;
    .locals 6

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/d/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/octopus/ad/internal/d/h$a;->a:Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/octopus/ad/internal/d/h$a;->b:Lcom/octopus/ad/internal/d/a/c;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/octopus/ad/internal/d/h$a;->c:Lcom/octopus/ad/internal/d/a/a;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/octopus/ad/internal/d/h$a;->d:Lcom/octopus/ad/internal/d/b/c;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/octopus/ad/internal/d/h$a;->e:Lcom/octopus/ad/internal/d/f;

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/octopus/ad/internal/d/c;-><init>(Ljava/io/File;Lcom/octopus/ad/internal/d/a/c;Lcom/octopus/ad/internal/d/a/a;Lcom/octopus/ad/internal/d/b/c;Lcom/octopus/ad/internal/d/f;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/octopus/ad/internal/d/h$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/d/a/g;

    invoke-direct {v0, p1, p2}, Lcom/octopus/ad/internal/d/a/g;-><init>(J)V

    iput-object v0, p0, Lcom/octopus/ad/internal/d/h$a;->c:Lcom/octopus/ad/internal/d/a/a;

    return-object p0
.end method

.method public a()Lcom/octopus/ad/internal/d/h;
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/h$a;->b()Lcom/octopus/ad/internal/d/c;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/octopus/ad/internal/d/h;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/octopus/ad/internal/d/h;-><init>(Lcom/octopus/ad/internal/d/c;Lcom/octopus/ad/internal/d/h$1;)V

    return-object v1
.end method
