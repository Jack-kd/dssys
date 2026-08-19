.class Lcom/octopus/ad/internal/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lcom/octopus/ad/internal/d/a/c;

.field public final c:Lcom/octopus/ad/internal/d/a/a;

.field public final d:Lcom/octopus/ad/internal/d/b/c;

.field public final e:Lcom/octopus/ad/internal/d/f;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/octopus/ad/internal/d/a/c;Lcom/octopus/ad/internal/d/a/a;Lcom/octopus/ad/internal/d/b/c;Lcom/octopus/ad/internal/d/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/octopus/ad/internal/d/c;->a:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/octopus/ad/internal/d/c;->b:Lcom/octopus/ad/internal/d/a/c;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/octopus/ad/internal/d/c;->c:Lcom/octopus/ad/internal/d/a/a;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/octopus/ad/internal/d/c;->d:Lcom/octopus/ad/internal/d/b/c;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/octopus/ad/internal/d/c;->e:Lcom/octopus/ad/internal/d/f;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/c;->b:Lcom/octopus/ad/internal/d/a/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/d/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/octopus/ad/internal/d/c;->a:Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
