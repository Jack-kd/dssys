.class public Lcom/sigmob/sdk/downloader/core/listener/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/listener/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/c;)Lcom/sigmob/sdk/downloader/core/listener/f$a;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public a()Lcom/sigmob/sdk/downloader/core/listener/f;
    .locals 3

    .line 2
    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/f;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sigmob/sdk/downloader/c;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sigmob/sdk/downloader/c;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/downloader/core/listener/f;-><init>([Lcom/sigmob/sdk/downloader/c;)V

    return-object v0
.end method

.method public b(Lcom/sigmob/sdk/downloader/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
