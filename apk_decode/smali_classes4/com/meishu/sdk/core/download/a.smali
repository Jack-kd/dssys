.class public Lcom/meishu/sdk/core/download/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/download/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/download/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/meishu/sdk/core/download/g;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/meishu/sdk/core/download/g;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/meishu/sdk/core/download/g;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/meishu/sdk/core/download/a;->b:Lcom/meishu/sdk/core/download/g;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, "/msdownload"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/meishu/sdk/core/download/a;->c:Ljava/lang/String;

    .line 54
    .line 55
    return-void
.end method

.method public static b()Lcom/meishu/sdk/core/download/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/download/a$a;->a:Lcom/meishu/sdk/core/download/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/download/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/download/d;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/core/download/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/meishu/sdk/core/download/d;->e:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, v0, Lcom/meishu/sdk/core/download/d;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    iget-object v0, v0, Lcom/meishu/sdk/core/download/b;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    const-string v0, "DownloadTask"

    const-string v2, "file.delete"

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/meishu/sdk/core/download/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/download/d;

    return-object p1
.end method

.method public c()Lcom/meishu/sdk/core/download/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/download/a;->b:Lcom/meishu/sdk/core/download/g;

    .line 2
    .line 3
    return-object v0
.end method
