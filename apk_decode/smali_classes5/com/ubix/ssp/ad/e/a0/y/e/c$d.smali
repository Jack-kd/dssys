.class final Lcom/ubix/ssp/ad/e/a0/y/e/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/y/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/y/e/c;


# direct methods
.method private constructor <init>(Lcom/ubix/ssp/ad/e/a0/y/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$d;->a:Lcom/ubix/ssp/ad/e/a0/y/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/ad/e/a0/y/e/c;Lcom/ubix/ssp/ad/e/a0/y/e/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/y/e/c$d;-><init>(Lcom/ubix/ssp/ad/e/a0/y/e/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$d;->a:Lcom/ubix/ssp/ad/e/a0/y/e/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/y/e/c;->a(Lcom/ubix/ssp/ad/e/a0/y/e/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ubix/ssp/ad/e/a0/y/e/b;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/a0/y/e/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
