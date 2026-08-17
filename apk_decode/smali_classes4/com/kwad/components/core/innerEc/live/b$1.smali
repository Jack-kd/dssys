.class final Lcom/kwad/components/core/innerEc/live/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b;->b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Rx:Lcom/kwad/components/core/e/d/a$a;

.field final synthetic cn:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/b$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final rs()V
    .locals 2

    .line 1
    const-string v0, "FullLiveModule"

    .line 2
    .line 3
    const-string v1, "FullLiveModule onLaunchSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final rt()V
    .locals 2

    .line 1
    const-string v0, "FullLiveModule"

    .line 2
    .line 3
    const-string v1, "FullLiveModule onLaunchFail"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setHasInnerEcFailed(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 15
    .line 16
    const-string v1, "onLaunchFail"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/logger/a;->l(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/f;->G(Lcom/kwad/components/core/e/d/a$a;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/kwad/components/core/innerEc/live/b;->Tr:Lcom/kwad/components/core/innerEc/live/a;

    .line 30
    .line 31
    return-void
.end method
