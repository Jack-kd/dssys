.class Lcom/sigmob/sdk/base/common/ab$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/ab;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/base/common/ab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/ab$a;->a:Lcom/sigmob/sdk/base/common/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/common/ab;Lcom/sigmob/sdk/base/common/ab$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/ab$a;-><init>(Lcom/sigmob/sdk/base/common/ab;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab$a;->a:Lcom/sigmob/sdk/base/common/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ab;->a(Lcom/sigmob/sdk/base/common/ab;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab$a;->a:Lcom/sigmob/sdk/base/common/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ab;->b(Lcom/sigmob/sdk/base/common/ab;)V

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/sigmob/sdk/base/common/aa;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/common/aa;)V

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/aa;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab$a;->a:Lcom/sigmob/sdk/base/common/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ab;->c(Lcom/sigmob/sdk/base/common/ab;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab$a;->a:Lcom/sigmob/sdk/base/common/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ab;->c(Lcom/sigmob/sdk/base/common/ab;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab$a;->a:Lcom/sigmob/sdk/base/common/ab;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/ab;->d(Lcom/sigmob/sdk/base/common/ab;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
