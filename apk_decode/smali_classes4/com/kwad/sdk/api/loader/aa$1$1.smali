.class final Lcom/kwad/sdk/api/loader/aa$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/loader/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/aa$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aIO:Lcom/kwad/sdk/api/loader/aa$1;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/loader/aa$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/api/loader/aa$1$1;->aIO:Lcom/kwad/sdk/api/loader/aa$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final HM()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/api/loader/aa;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final HN()Lcom/kwad/sdk/api/core/IKsAdSDK;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/aa$1$1;->aIO:Lcom/kwad/sdk/api/loader/aa$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/api/loader/aa$1;->aIN:Lcom/kwad/sdk/api/core/IKsAdSDK;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/aa$1$1;->aIO:Lcom/kwad/sdk/api/loader/aa$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/api/loader/aa$1;->dK:Landroid/content/Context;

    .line 4
    .line 5
    return-object v0
.end method
