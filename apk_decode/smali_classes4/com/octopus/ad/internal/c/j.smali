.class public Lcom/octopus/ad/internal/c/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/c/j$c;,
        Lcom/octopus/ad/internal/c/j$b;,
        Lcom/octopus/ad/internal/c/j$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/octopus/ad/internal/c/j$b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/octopus/ad/internal/c/j$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/octopus/ad/internal/c/j;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/octopus/ad/internal/c/j;->a:Ljava/util/HashMap;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/octopus/ad/internal/c/j;->b:Lcom/octopus/ad/internal/c/j$c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/c/j;->b:Lcom/octopus/ad/internal/c/j$c;

    if-nez v0, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/octopus/ad/internal/c/j;->b()V

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/c/j;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/octopus/ad/internal/c/j;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    new-instance v2, Lcom/octopus/ad/internal/c/j$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/internal/c/j$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, p0}, Lcom/octopus/ad/internal/c/j$a;-><init>(Lcom/octopus/ad/internal/c/j;Lcom/octopus/ad/internal/c/j$b;Ljava/lang/String;Lcom/octopus/ad/internal/c/j;)V

    .line 16
    sget-object v3, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading image failFrom url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    return-void

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/c/j;->b:Lcom/octopus/ad/internal/c/j$c;

    invoke-interface {v0}, Lcom/octopus/ad/internal/c/j$c;->e()V

    .line 19
    invoke-direct {p0}, Lcom/octopus/ad/internal/c/j;->b()V

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/c/j$b;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/c/j;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/c/j;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/octopus/ad/internal/c/j;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/octopus/ad/internal/c/j;->b:Lcom/octopus/ad/internal/c/j$c;

    invoke-interface {p1}, Lcom/octopus/ad/internal/c/j$c;->e()V

    .line 9
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    const-string v0, "Images downloading finished."

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/octopus/ad/internal/c/j;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/c/j$b;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/octopus/ad/internal/c/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/c/j;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/c/j$c;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/internal/c/j;->b:Lcom/octopus/ad/internal/c/j$c;

    return-void
.end method
