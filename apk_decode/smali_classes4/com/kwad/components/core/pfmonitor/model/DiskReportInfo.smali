.class public Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# static fields
.field public static final STATUS_ERROR:I = 0x1

.field public static final STATUS_NORMAL:I = 0x2

.field private static final serialVersionUID:J = 0x659aafab643817e3L


# instance fields
.field public pathList:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/commercial/c/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createCommonPathListInfo(Ljava/util/List;)Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/pfmonitor/model/f;",
            ">;)",
            "Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iput v1, v0, Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;->status:I

    .line 8
    .line 9
    invoke-static {p0}, Lcom/kwad/sdk/utils/ac;->Y(Ljava/util/List;)Lorg/json/JSONArray;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iput-object p0, v0, Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;->pathList:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0
.end method

.method public static createErrorInfo(Ljava/util/List;)Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/pfmonitor/model/f;",
            ">;)",
            "Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;->status:I

    .line 8
    .line 9
    invoke-static {p0}, Lcom/kwad/sdk/utils/ac;->Y(Ljava/util/List;)Lorg/json/JSONArray;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iput-object p0, v0, Lcom/kwad/components/core/pfmonitor/model/DiskReportInfo;->pathList:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0
.end method
