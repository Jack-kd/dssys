.class public final Lkotlin/io/path/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Ljava/lang/Object;

.field public final c:Lkotlin/io/path/j;

.field public d:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/j;)V
    .locals 1

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lkotlin/io/path/j;->a:Ljava/nio/file/Path;

    .line 10
    .line 11
    iput-object p2, p0, Lkotlin/io/path/j;->b:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p3, p0, Lkotlin/io/path/j;->c:Lkotlin/io/path/j;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/io/path/j;->d:Ljava/util/Iterator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/io/path/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lkotlin/io/path/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/io/path/j;->c:Lkotlin/io/path/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/nio/file/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/io/path/j;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/io/path/j;->d:Ljava/util/Iterator;

    .line 2
    .line 3
    return-void
.end method
