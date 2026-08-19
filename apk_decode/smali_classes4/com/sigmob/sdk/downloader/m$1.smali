.class Lcom/sigmob/sdk/downloader/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/downloader/m;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/m;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/f;IILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;IILjava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/cause/b;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/cause/b;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object p2, p2, Lcom/sigmob/sdk/downloader/m;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/downloader/m;->a(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public a_(Lcom/sigmob/sdk/downloader/f;)V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1}, Lcom/sigmob/sdk/downloader/c;->a_(Lcom/sigmob/sdk/downloader/f;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/c;->b(Lcom/sigmob/sdk/downloader/f;IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/sigmob/sdk/downloader/c;->b(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public c(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/m$1;->a:Lcom/sigmob/sdk/downloader/m;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/m;->a:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/downloader/m;->a(Lcom/sigmob/sdk/downloader/f;Landroid/util/SparseArray;)[Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/c;->c(Lcom/sigmob/sdk/downloader/f;IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
