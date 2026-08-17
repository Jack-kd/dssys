.class Lcom/umeng/analytics/process/UMProcessDBHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/process/DBFileTraversalUtil$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/process/UMProcessDBHelper;->processDBToMain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/process/UMProcessDBHelper;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/process/UMProcessDBHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper$1;->a:Lcom/umeng/analytics/process/UMProcessDBHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper$1;->a:Lcom/umeng/analytics/process/UMProcessDBHelper;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->access$400(Lcom/umeng/analytics/process/UMProcessDBHelper;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper$1;->a:Lcom/umeng/analytics/process/UMProcessDBHelper;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->access$400(Lcom/umeng/analytics/process/UMProcessDBHelper;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const v3, 0x9052

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v3, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
