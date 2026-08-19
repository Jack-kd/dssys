.class final Lcom/kwad/sdk/utils/t$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/t;->ct(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/b;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/kwad/sdk/service/a/b;->Fq()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
