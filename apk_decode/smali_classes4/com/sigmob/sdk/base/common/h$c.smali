.class Lcom/sigmob/sdk/base/common/h$c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/h;

.field private final b:Lcom/czhj/volley/toolbox/DownloadItem;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/h;Lcom/czhj/volley/toolbox/DownloadItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/h$c;->a:Lcom/sigmob/sdk/base/common/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    if-nez p1, :cond_0

    const-string p1, "doInBackground: item is null."

    :goto_0
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

    :goto_1
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/czhj/volley/toolbox/DownloadItem;->error:Lcom/czhj/volley/VolleyError;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p1, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/FileUtil;->getExtensionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Md5Util;->fileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v2, v2, Lcom/czhj/volley/toolbox/DownloadItem;->md5:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v2, v2, Lcom/czhj/volley/toolbox/DownloadItem;->md5:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iput v3, p1, Lcom/czhj/volley/toolbox/DownloadItem;->status:I

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_MD5:Lcom/sigmob/windad/WindAdError;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v2, v2, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    sget-object v4, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h$c;->a:Lcom/sigmob/sdk/base/common/h;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/common/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iput v6, p1, Lcom/czhj/volley/toolbox/DownloadItem;->status:I

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "tgz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, ".tgz"

    const-string v4, "/"

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/utils/g;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iput v6, p1, Lcom/czhj/volley/toolbox/DownloadItem;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v5

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iput v3, v0, Lcom/czhj/volley/toolbox/DownloadItem;->status:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v0, p1, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    sget-object v1, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->MRAID_VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    if-ne v0, v1, :cond_5

    return-object v5

    :cond_5
    iput v3, p1, Lcom/czhj/volley/toolbox/DownloadItem;->status:I

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v0, v0, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/h$c;->a:Lcom/sigmob/sdk/base/common/h;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->c(Lcom/sigmob/sdk/base/common/h;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$c;->a:Lcom/sigmob/sdk/base/common/h;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/h;->d(Lcom/sigmob/sdk/base/common/h;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/base/common/h$b;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v3, v3, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    sget-object v4, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v4, v4, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    :goto_1
    invoke-static {v3, v1, p1, v5}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/czhj/volley/toolbox/DownloadItem;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    :goto_2
    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$c;->a:Lcom/sigmob/sdk/base/common/h;

    invoke-static {v3, v1, p1, v2}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/common/h;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/common/h$b;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v3, v3, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    sget-object v4, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->FILE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v4, v4, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$c;->b:Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v4, v3, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    sget-object v6, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->ZIP_FILE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    if-ne v4, v6, :cond_4

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->MRAID_VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/h$c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/h$c;->a(Ljava/lang/String;)V

    return-void
.end method
