.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportByInterval"
.end annotation


# static fields
.field private static MAX_REPORT_INTERVAL:J = 0x5265c00L

.field private static MIN_REPORT_INTERVAL:J = 0x15f90L


# instance fields
.field private mReportInterval:J

.field private mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static isValidValue(I)Z
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    sget-wide v2, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    .line 3
    .line 4
    cmp-long p0, v0, v2

    .line 5
    .line 6
    if-gez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    return p0
.end method


# virtual methods
.method public getReportInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setReportInterval(J)V
    .locals 4

    .line 1
    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    sget-wide v2, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MAX_REPORT_INTERVAL:J

    .line 8
    .line 9
    cmp-long v2, p1, v2

    .line 10
    .line 11
    if-gtz v2, :cond_0

    .line 12
    .line 13
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    .line 17
    .line 18
    return-void
.end method

.method public shouldSendMessage(Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getLastSuccessfulBuildTime(Landroid/content/Context;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    sub-long/2addr v1, v3

    .line 18
    iget-wide v3, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    .line 19
    .line 20
    cmp-long p1, v1, v3

    .line 21
    .line 22
    if-ltz p1, :cond_1

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method
