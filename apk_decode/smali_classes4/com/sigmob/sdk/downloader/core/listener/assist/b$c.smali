.class public Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/listener/assist/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

.field b:J

.field c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->d:I

    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 5

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->b:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->d:I

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->b:J

    return-wide v0
.end method

.method public d()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    return-object v0
.end method
