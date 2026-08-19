.class public abstract Lcom/sigmob/sdk/downloader/core/listener/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/c;
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/listener/d$a;
    }
.end annotation


# instance fields
.field final a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    new-instance v1, Lcom/sigmob/sdk/downloader/core/listener/d$a;

    invoke-direct {v1}, Lcom/sigmob/sdk/downloader/core/listener/d$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;-><init>(Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;)V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/core/listener/d;-><init>(Lcom/sigmob/sdk/downloader/core/listener/assist/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/listener/assist/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/d;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a(Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/d;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a(Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;)V

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

.method public final a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/d;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Z)V

    return-void
.end method

.method public final a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/cause/b;)V
    .locals 1

    .line 5
    iget-object p3, p0, Lcom/sigmob/sdk/downloader/core/listener/d;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Z)V

    return-void
.end method

.method public final a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/d;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

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
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/d;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/d;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a()Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/d;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a(Lcom/sigmob/sdk/downloader/f;IJ)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/d;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->b(Z)V

    return-void
.end method

.method public c(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 0

    iget-object p3, p0, Lcom/sigmob/sdk/downloader/core/listener/d;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    invoke-virtual {p3, p1, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a(Lcom/sigmob/sdk/downloader/f;I)V

    return-void
.end method
