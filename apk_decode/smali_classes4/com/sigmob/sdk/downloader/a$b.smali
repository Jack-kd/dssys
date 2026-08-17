.class public Lcom/sigmob/sdk/downloader/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/sigmob/sdk/downloader/a$d;

.field private c:Lcom/sigmob/sdk/downloader/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/a$d;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/a$d;-><init>()V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/a$b;-><init>(Lcom/sigmob/sdk/downloader/a$d;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/a$d;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/downloader/a$b;-><init>(Lcom/sigmob/sdk/downloader/a$d;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/a$d;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/a$d;",
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/a$b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/b;)Lcom/sigmob/sdk/downloader/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$b;->c:Lcom/sigmob/sdk/downloader/b;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/a$b;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lcom/sigmob/sdk/downloader/a;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sigmob/sdk/downloader/f;

    new-instance v1, Lcom/sigmob/sdk/downloader/a;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/downloader/f;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/a$b;->c:Lcom/sigmob/sdk/downloader/b;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-direct {v1, v0, v2, v3}, Lcom/sigmob/sdk/downloader/a;-><init>([Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/b;Lcom/sigmob/sdk/downloader/a$d;)V

    return-object v1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f$a;)Lcom/sigmob/sdk/downloader/f;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->b(Lcom/sigmob/sdk/downloader/a$d;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->b(Lcom/sigmob/sdk/downloader/a$d;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->a(Ljava/util/Map;)Lcom/sigmob/sdk/downloader/f$a;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->c(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->c(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->d(I)Lcom/sigmob/sdk/downloader/f$a;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->d(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->d(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->e(I)Lcom/sigmob/sdk/downloader/f$a;

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->e(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->e(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->f(I)Lcom/sigmob/sdk/downloader/f$a;

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->f(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->f(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->d(Z)Lcom/sigmob/sdk/downloader/f$a;

    :cond_4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->g(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->g(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->g(I)Lcom/sigmob/sdk/downloader/f$a;

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->h(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->h(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->b(Z)Lcom/sigmob/sdk/downloader/f$a;

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->i(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->i(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->b(I)Lcom/sigmob/sdk/downloader/f$a;

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->j(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->j(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->c(Z)Lcom/sigmob/sdk/downloader/f$a;

    :cond_8
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f$a;->a()Lcom/sigmob/sdk/downloader/f;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->k(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->k(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f;->a(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/f;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a$d;->a(Lcom/sigmob/sdk/downloader/a$d;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/downloader/f$a;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/a$b;->b:Lcom/sigmob/sdk/downloader/a$d;

    invoke-static {v1}, Lcom/sigmob/sdk/downloader/a$d;->a(Lcom/sigmob/sdk/downloader/a$d;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/downloader/f$a;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/f$a;->a(Ljava/lang/Boolean;)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/a$b;->a(Lcom/sigmob/sdk/downloader/f$a;)Lcom/sigmob/sdk/downloader/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "If you want to bind only with url, you have to provide parentPath on QueueSet!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
