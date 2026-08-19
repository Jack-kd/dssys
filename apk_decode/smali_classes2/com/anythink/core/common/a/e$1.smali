.class final Lcom/anythink/core/common/a/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/a/e;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/a/e$1;->a:Lcom/anythink/core/common/a/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/a/e$1;->a:Lcom/anythink/core/common/a/e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/core/common/a/e;->c:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/a/e$1;->a:Lcom/anythink/core/common/a/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/anythink/core/common/a/e;->a()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/anythink/core/common/a/e$1;->a:Lcom/anythink/core/common/a/e;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/anythink/core/common/a/e;->a(Lcom/anythink/core/common/a/e;)Lcom/anythink/core/common/f/b;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->a()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ge v2, v3, :cond_2

    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/anythink/core/common/a/f;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/anythink/core/common/a/f;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    iget-object v5, p0, Lcom/anythink/core/common/a/e$1;->a:Lcom/anythink/core/common/a/e;

    .line 47
    .line 48
    invoke-static {v5}, Lcom/anythink/core/common/a/e;->b(Lcom/anythink/core/common/a/e;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lcom/anythink/core/common/a/g;

    .line 57
    .line 58
    if-nez v5, :cond_0

    .line 59
    .line 60
    new-instance v5, Lcom/anythink/core/common/a/g;

    .line 61
    .line 62
    invoke-direct {v5}, Lcom/anythink/core/common/a/g;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v6, p0, Lcom/anythink/core/common/a/e$1;->a:Lcom/anythink/core/common/a/e;

    .line 66
    .line 67
    invoke-static {v6}, Lcom/anythink/core/common/a/e;->b(Lcom/anythink/core/common/a/e;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v1

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    :goto_1
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/a/g;->a(Lcom/anythink/core/common/a/f;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    return-void

    .line 85
    :goto_2
    monitor-exit v0

    .line 86
    throw v1
.end method
