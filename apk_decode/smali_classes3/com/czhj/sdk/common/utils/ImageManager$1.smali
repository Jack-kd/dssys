.class Lcom/czhj/sdk/common/utils/ImageManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/utils/ImageManager;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/czhj/sdk/common/utils/ImageManager;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/utils/ImageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$1;->a:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/utils/ImageManager$1;->a:Lcom/czhj/sdk/common/utils/ImageManager;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageManager;->a(Lcom/czhj/sdk/common/utils/ImageManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/FileUtil;->orderByDate(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/FileUtil;->clearCacheFileByCount([Ljava/io/File;I)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "native ad file list is null"

    :goto_0
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native ad file remain num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    const-string v1, "clean native ad file error"

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
