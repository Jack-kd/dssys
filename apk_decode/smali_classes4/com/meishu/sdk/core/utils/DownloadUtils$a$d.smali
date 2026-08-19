.class public Lcom/meishu/sdk/core/utils/DownloadUtils$a$d;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a(Ljava/io/File;Lcom/meishu/sdk/core/download/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/DownloadUtils$a;Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$d;->a:Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$d;->a:Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;->onDownloadFinish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
