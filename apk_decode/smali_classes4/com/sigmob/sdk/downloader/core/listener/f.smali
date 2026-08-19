.class public Lcom/sigmob/sdk/downloader/core/listener/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/listener/f$a;
    }
.end annotation


# instance fields
.field final a:[Lcom/sigmob/sdk/downloader/c;


# direct methods
.method public constructor <init>([Lcom/sigmob/sdk/downloader/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

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
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;IILjava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/cause/b;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/cause/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/c;)Z
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public a_(Lcom/sigmob/sdk/downloader/f;)V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/sigmob/sdk/downloader/c;->a_(Lcom/sigmob/sdk/downloader/f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/sigmob/sdk/downloader/c;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/c;->b(Lcom/sigmob/sdk/downloader/f;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3}, Lcom/sigmob/sdk/downloader/c;->b(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f;->a:[Lcom/sigmob/sdk/downloader/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/c;->c(Lcom/sigmob/sdk/downloader/f;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
