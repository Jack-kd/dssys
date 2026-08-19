.class public final Lkotlin/io/path/f;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:Lkotlin/io/path/j;

.field public c:Lkotlin/collections/i;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lkotlin/io/path/f;->a:Z

    .line 5
    .line 6
    new-instance p1, Lkotlin/collections/i;

    .line 7
    .line 8
    invoke-direct {p1}, Lkotlin/collections/i;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lkotlin/io/path/f;->c:Lkotlin/collections/i;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 3

    .line 1
    const-string v0, "dir"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "attrs"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlin/io/path/j;

    .line 12
    .line 13
    invoke-static {p2}, Lkotlin/io/path/e;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lkotlin/io/path/f;->b:Lkotlin/io/path/j;

    .line 18
    .line 19
    invoke-direct {v0, p1, v1, v2}, Lkotlin/io/path/j;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/j;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lkotlin/io/path/f;->c:Lkotlin/collections/i;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lkotlin/collections/i;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "preVisitDirectory(...)"

    .line 32
    .line 33
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method

.method public final b(Lkotlin/io/path/j;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "directoryNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lkotlin/io/path/f;->b:Lkotlin/io/path/j;

    .line 7
    .line 8
    invoke-virtual {p1}, Lkotlin/io/path/j;->d()Ljava/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lkotlin/io/path/i;->a:Lkotlin/io/path/i;

    .line 13
    .line 14
    iget-boolean v1, p0, Lkotlin/io/path/f;->a:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lkotlin/io/path/i;->a(Z)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {p0}, Lkotlin/io/path/c;->a(Ljava/lang/Object;)Ljava/nio/file/FileVisitor;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p1, v0, v1, v2}, Lkotlin/io/path/d;->a(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lkotlin/io/path/f;->c:Lkotlin/collections/i;

    .line 29
    .line 30
    invoke-virtual {p1}, Lkotlin/collections/i;->removeFirst()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lkotlin/io/path/f;->c:Lkotlin/collections/i;

    .line 34
    .line 35
    new-instance v0, Lkotlin/collections/i;

    .line 36
    .line 37
    invoke-direct {v0}, Lkotlin/collections/i;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lkotlin/io/path/f;->c:Lkotlin/collections/i;

    .line 41
    .line 42
    return-object p1
.end method

.method public c(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 3

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "attrs"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlin/io/path/j;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iget-object v2, p0, Lkotlin/io/path/f;->b:Lkotlin/io/path/j;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1, v2}, Lkotlin/io/path/j;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/j;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lkotlin/io/path/f;->c:Lkotlin/collections/i;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lkotlin/collections/i;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "visitFile(...)"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/io/path/b;->a(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/f;->a(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/io/path/b;->a(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/f;->c(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
