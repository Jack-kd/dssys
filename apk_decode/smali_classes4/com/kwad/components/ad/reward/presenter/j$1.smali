.class final Lcom/kwad/components/ad/reward/presenter/j$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/presenter/j;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic wE:Ljava/lang/Throwable;

.field final synthetic wF:Lcom/kwad/components/ad/reward/presenter/j;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/presenter/j;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/j$1;->wF:Lcom/kwad/components/ad/reward/presenter/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/reward/presenter/j$1;->wE:Ljava/lang/Throwable;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/j$1;->wE:Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/j$1;->wF:Lcom/kwad/components/ad/reward/presenter/j;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/presenter/b;->iM()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
