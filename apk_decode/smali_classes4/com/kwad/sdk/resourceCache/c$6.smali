.class final Lcom/kwad/sdk/resourceCache/c$6;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/resourceCache/c;->a(Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bnK:I

.field final synthetic bnL:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;

.field final synthetic bnM:Ljava/lang/String;

.field final synthetic wd:I


# direct methods
.method public constructor <init>(ILcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/resourceCache/c$6;->bnK:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/resourceCache/c$6;->bnL:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/sdk/resourceCache/c$6;->bnM:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/kwad/sdk/resourceCache/c$6;->wd:I

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;->setDownloadStatus(I)Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/kwad/sdk/resourceCache/c$6;->bnK:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;->setResourceType(I)Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/kwad/sdk/resourceCache/c$6;->bnL:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->resourceKey:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;->setResourceKey(Ljava/lang/String;)Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/kwad/sdk/resourceCache/c$6;->bnL:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->url:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;->setUrl(Ljava/lang/String;)Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/kwad/sdk/resourceCache/c$6;->bnM:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;->setZipFileMd5(Ljava/lang/String;)Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v1, p0, Lcom/kwad/sdk/resourceCache/c$6;->wd:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;->setErrorCode(I)Lcom/kwad/sdk/resourceCache/model/WarmUpReportMessage;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-static {v0, v1}, Lcom/kwad/sdk/commercial/c;->d(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
