.class public Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;
.super Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/listener/assist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field d:Lcom/sigmob/sdk/downloader/k;

.field e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sigmob/sdk/downloader/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    new-instance v0, Lcom/sigmob/sdk/downloader/k;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/k;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->d:Lcom/sigmob/sdk/downloader/k;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->e:Landroid/util/SparseArray;

    new-instance v2, Lcom/sigmob/sdk/downloader/k;

    invoke-direct {v2}, Lcom/sigmob/sdk/downloader/k;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)Lcom/sigmob/sdk/downloader/k;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/downloader/k;

    return-object p1
.end method

.method public f()Lcom/sigmob/sdk/downloader/k;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/c$b;->d:Lcom/sigmob/sdk/downloader/k;

    return-object v0
.end method
