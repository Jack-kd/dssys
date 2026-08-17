.class public Lcom/meishu/sdk/core/cache/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/cache/d;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/cache/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 2
    :try_start_0
    sget-object p1, Lcom/meishu/sdk/core/cache/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/cache/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/meishu/sdk/core/bquery/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;[BZ)V
    .locals 0

    .line 5
    :try_start_0
    sget-object p1, Lcom/meishu/sdk/core/cache/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    iget-object p2, p0, Lcom/meishu/sdk/core/cache/b;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/meishu/sdk/core/bquery/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
