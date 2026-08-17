.class final Lcom/kwad/components/core/widget/ComplianceTextView$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/widget/ComplianceTextView;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic avD:Lcom/kwad/components/core/widget/ComplianceTextView;

.field final synthetic wB:Lcom/kwad/sdk/core/response/model/AdInfo;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/widget/ComplianceTextView;Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->avD:Lcom/kwad/components/core/widget/ComplianceTextView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->wB:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->avD:Lcom/kwad/components/core/widget/ComplianceTextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->wB:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    iget-object v1, v2, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->appName:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->corporationName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-string v3, ""

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    move-object v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->wB:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->corporationName:Ljava/lang/String;

    .line 27
    .line 28
    :goto_0
    iget-object v4, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->wB:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 29
    .line 30
    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    .line 31
    .line 32
    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->recordNumber:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v3, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->wB:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->recordNumber:Ljava/lang/String;

    .line 46
    .line 47
    :goto_1
    iget-object v4, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->wB:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 48
    .line 49
    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->appVersion:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->avD:Lcom/kwad/components/core/widget/ComplianceTextView;

    .line 54
    .line 55
    invoke-static {v5}, Lcom/kwad/components/core/widget/ComplianceTextView;->a(Lcom/kwad/components/core/widget/ComplianceTextView;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v6, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->avD:Lcom/kwad/components/core/widget/ComplianceTextView;

    .line 60
    .line 61
    invoke-static {v6}, Lcom/kwad/components/core/widget/ComplianceTextView;->b(Lcom/kwad/components/core/widget/ComplianceTextView;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    iget-object v7, p0, Lcom/kwad/components/core/widget/ComplianceTextView$1;->avD:Lcom/kwad/components/core/widget/ComplianceTextView;

    .line 66
    .line 67
    invoke-static {v7}, Lcom/kwad/components/core/widget/ComplianceTextView;->c(Lcom/kwad/components/core/widget/ComplianceTextView;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static/range {v0 .. v7}, Lcom/kwad/components/core/widget/ComplianceTextView;->a(Lcom/kwad/components/core/widget/ComplianceTextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
