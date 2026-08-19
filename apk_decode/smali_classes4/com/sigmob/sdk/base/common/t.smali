.class public Lcom/sigmob/sdk/base/common/t;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/czhj/volley/toolbox/FileDownloader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/czhj/volley/toolbox/FileDownloader;
    .locals 4

    sget-object v0, Lcom/sigmob/sdk/base/common/t;->a:Lcom/czhj/volley/toolbox/FileDownloader;

    if-nez v0, :cond_1

    const-class v0, Lcom/sigmob/sdk/base/common/t;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getDownloadRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/common/t;->a:Lcom/czhj/volley/toolbox/FileDownloader;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Lcom/czhj/volley/toolbox/FileDownloader;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lcom/czhj/volley/toolbox/FileDownloader;-><init>(Lcom/czhj/volley/RequestQueue;I)V

    sput-object v2, Lcom/sigmob/sdk/base/common/t;->a:Lcom/czhj/volley/toolbox/FileDownloader;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/sigmob/sdk/base/common/t;->a:Lcom/czhj/volley/toolbox/FileDownloader;

    return-object v0
.end method
