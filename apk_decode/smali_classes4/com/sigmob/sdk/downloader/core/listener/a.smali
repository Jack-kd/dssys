.class public abstract Lcom/sigmob/sdk/downloader/core/listener/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/c;
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/d;


# instance fields
.field final d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/core/listener/a;-><init>(Lcom/sigmob/sdk/downloader/core/listener/assist/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/listener/assist/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/a;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a(Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/f;IILjava/util/Map;)V
    .locals 0
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
    iget-object p2, p0, Lcom/sigmob/sdk/downloader/core/listener/a;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->b(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V
    .locals 0
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
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/a;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/cause/b;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/a;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/cause/b;)V

    return-void
.end method

.method public final a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/a;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Map;)V
    .locals 0
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
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/a;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/a;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a()Z

    move-result v0

    return v0
.end method

.method public final a_(Lcom/sigmob/sdk/downloader/f;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/a;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/sigmob/sdk/downloader/core/listener/a;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-virtual {p2, p1, p3, p4}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a(Lcom/sigmob/sdk/downloader/f;J)V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V
    .locals 0
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
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/a;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/a;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->b(Z)V

    return-void
.end method

.method public c(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 0

    return-void
.end method
