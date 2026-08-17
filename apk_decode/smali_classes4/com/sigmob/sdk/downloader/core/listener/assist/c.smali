.class public Lcom/sigmob/sdk/downloader/core/listener/assist/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;,
        Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/e$b<",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;-><init>(I)V

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;IJLcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z
    .locals 8

    .line 3
    move-object v0, p5

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;

    iget-object v1, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/k;

    invoke-virtual {v1, p3, p4}, Lcom/sigmob/sdk/downloader/k;->a(J)V

    iget-object v1, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->d:Lcom/sigmob/sdk/downloader/k;

    invoke-virtual {v1, p3, p4}, Lcom/sigmob/sdk/downloader/k;->a(J)V

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;

    if-eqz v2, :cond_0

    iget-object p3, p5, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->b(I)Lcom/sigmob/sdk/downloader/k;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;->a(Lcom/sigmob/sdk/downloader/f;IJLcom/sigmob/sdk/downloader/k;)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;

    iget-wide p2, p5, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->b:J

    iget-object p4, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->d:Lcom/sigmob/sdk/downloader/k;

    invoke-interface {p1, v3, p2, p3, p4}, Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;->a(Lcom/sigmob/sdk/downloader/f;JLcom/sigmob/sdk/downloader/k;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;ILcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z
    .locals 2

    .line 4
    move-object v0, p3

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;

    iget-object v1, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/k;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/k;->g()V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;

    if-eqz v1, :cond_0

    iget-object p3, p3, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {p3, p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object p3

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->b(I)Lcom/sigmob/sdk/downloader/k;

    move-result-object v0

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;->a(Lcom/sigmob/sdk/downloader/f;ILcom/sigmob/sdk/downloader/core/breakpoint/a;Lcom/sigmob/sdk/downloader/k;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;ZLcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;

    if-eqz v0, :cond_0

    check-cast p4, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;ZLcom/sigmob/sdk/downloader/core/listener/assist/c$b;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z
    .locals 1

    .line 6
    check-cast p4, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;

    iget-object p4, p4, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->d:Lcom/sigmob/sdk/downloader/k;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/sigmob/sdk/downloader/k;->g()V

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/sigmob/sdk/downloader/k;

    invoke-direct {p4}, Lcom/sigmob/sdk/downloader/k;-><init>()V

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/k;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic b(I)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/c;->a(I)Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;

    move-result-object p1

    return-object p1
.end method
