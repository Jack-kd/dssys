.class public Lcom/meishu/sdk/core/utils/DownloadUtils$a$c;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/DownloadUtils$a;Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$c;->a:Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$c;->a:Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;->onDownloadError(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
