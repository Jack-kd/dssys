.class Lcom/sigmob/sdk/base/common/h$d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/czhj/volley/toolbox/DownloadItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Lcom/sigmob/sdk/base/common/h;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/h;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/h$d;->b:Lcom/sigmob/sdk/base/common/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/rtb/Template;)Lcom/czhj/volley/toolbox/DownloadItem;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Template;->context:Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/czhj/wire/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Template;->context:Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/czhj/wire/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/utils/n;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/n;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".tgz"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-direct {v0}, Lcom/czhj/volley/toolbox/DownloadItem;-><init>()V

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/Template;->context:Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {p1}, Lcom/czhj/wire/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    sget-object p1, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->ZIP_FILE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iput-object p1, v0, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/czhj/volley/toolbox/DownloadItem;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/Md5Util;->fileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/czhj/sdk/common/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$d;->b:Lcom/sigmob/sdk/base/common/h;

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/common/h;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iget-object v5, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->checkVideoValid()Z

    move-result v5

    new-instance v6, Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-direct {v6}, Lcom/czhj/volley/toolbox/DownloadItem;-><init>()V

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    sget-object v5, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iput-object v5, v6, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iput-object v2, v6, Lcom/czhj/volley/toolbox/DownloadItem;->md5:Ljava/lang/String;

    iput-wide v3, v6, Lcom/czhj/volley/toolbox/DownloadItem;->size:J

    const/4 v2, 0x1

    iput v2, v6, Lcom/czhj/volley/toolbox/DownloadItem;->status:I

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v6, v3, v1, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/czhj/volley/toolbox/DownloadItem;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    sget-object v2, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iput-object v2, v6, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/czhj/volley/toolbox/DownloadItem;->md5:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->b:Lcom/sigmob/sdk/base/common/h;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2, v6, v3}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/common/h;Lcom/czhj/volley/toolbox/DownloadItem;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v3

    if-ne v2, v3, :cond_5

    new-instance v2, Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-direct {v2}, Lcom/czhj/volley/toolbox/DownloadItem;-><init>()V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    sget-object v3, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->FILE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iput-object v3, v2, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCard_OriginMD5()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/czhj/volley/toolbox/DownloadItem;->md5:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    const/4 v3, 0x3

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/Template;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/base/common/h$d;->a(Lcom/sigmob/sdk/base/models/rtb/Template;)Lcom/czhj/volley/toolbox/DownloadItem;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/Template;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_7

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/base/common/h$d;->a(Lcom/sigmob/sdk/base/models/rtb/Template;)Lcom/czhj/volley/toolbox/DownloadItem;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/Template;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_8

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/base/common/h$d;->a(Lcom/sigmob/sdk/base/models/rtb/Template;)Lcom/czhj/volley/toolbox/DownloadItem;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isCatchVideo()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->asset:Ljava/util/List;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    :goto_2
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->asset:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->asset:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/ResponseAsset;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/rtb/ResponseAsset;->video:Lcom/sigmob/sdk/base/models/rtb/ResponseAssetVideo;

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    iget-object v3, v3, Lcom/sigmob/sdk/base/models/rtb/ResponseAssetVideo;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->d()Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    new-instance v5, Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-direct {v5}, Lcom/czhj/volley/toolbox/DownloadItem;-><init>()V

    iput-object v3, v5, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    sget-object v3, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->MRAID_VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iput-object v3, v5, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/h$d;->b:Lcom/sigmob/sdk/base/common/h;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v3, v5, v4}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/common/h;Lcom/czhj/volley/toolbox/DownloadItem;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground: crid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", videoUrl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", endCardUrl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground: error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_e
    :goto_5
    return-object v1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/czhj/volley/toolbox/DownloadItem;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/h$d;->b:Lcom/sigmob/sdk/base/common/h;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->d(Lcom/sigmob/sdk/base/common/h;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/common/h$b;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lcom/sigmob/sdk/base/common/h$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/h$d;->b:Lcom/sigmob/sdk/base/common/h;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/common/h;->g(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/sigmob/sdk/base/common/t;->a()Lcom/czhj/volley/toolbox/FileDownloader;

    move-result-object v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/h$d;->b:Lcom/sigmob/sdk/base/common/h;

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/h;->c(Lcom/sigmob/sdk/base/common/h;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :cond_4
    if-ge v6, v5, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/h$d;->b:Lcom/sigmob/sdk/base/common/h;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->c(Lcom/sigmob/sdk/base/common/h;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/h$d;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v3

    :cond_7
    :goto_1
    if-ge v4, v1, :cond_a

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/czhj/volley/toolbox/DownloadItem;

    iget-object v6, v5, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/czhj/sdk/common/utils/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPostExecute: url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    sget-object v8, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    if-ne v7, v8, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->q()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->p()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_9
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->q()Ljava/util/HashMap;

    move-result-object v7

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->s()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/h$d;->b:Lcom/sigmob/sdk/base/common/h;

    iget-object v6, v6, Lcom/sigmob/sdk/base/common/h;->b:Lcom/czhj/volley/toolbox/FileDownloadRequest$FileDownloadListener;

    invoke-virtual {v2, v5, v6}, Lcom/czhj/volley/toolbox/FileDownloader;->add(Lcom/czhj/volley/toolbox/DownloadItem;Lcom/czhj/volley/toolbox/FileDownloadRequest$FileDownloadListener;)Lcom/czhj/volley/toolbox/FileDownloader$DownloadController;

    goto :goto_1

    :cond_a
    :goto_2
    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->ad_privacy:Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    if-nez v0, :cond_b

    goto/16 :goto_7

    :cond_b
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->privacy_template_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-static {v0}, Lcom/czhj/sdk/common/utils/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/utils/n;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sigmob/sdk/base/utils/n;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_d

    goto/16 :goto_6

    :cond_d
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_f

    array-length v2, v1

    :goto_3
    if-ge v3, v2, :cond_f

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5220\u9664\u5355\u4e2a\u6587\u4ef6 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u6210\u529f"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_e
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    new-instance v1, Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-direct {v1}, Lcom/czhj/volley/toolbox/DownloadItem;-><init>()V

    iput-object v0, v1, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    sget-object v0, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->OTHER:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iput-object v0, v1, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/t;->a()Lcom/czhj/volley/toolbox/FileDownloader;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/base/common/h$d$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/common/h$d$1;-><init>(Lcom/sigmob/sdk/base/common/h$d;)V

    invoke-virtual {p1, v1, v0}, Lcom/czhj/volley/toolbox/FileDownloader;->add(Lcom/czhj/volley/toolbox/DownloadItem;Lcom/czhj/volley/toolbox/FileDownloadRequest$FileDownloadListener;)Lcom/czhj/volley/toolbox/FileDownloader$DownloadController;

    return-void

    :cond_10
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "privacyTemplateUrl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is exists"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    :cond_11
    :goto_7
    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/h$d;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/h$d;->a(Ljava/util/ArrayList;)V

    return-void
.end method
