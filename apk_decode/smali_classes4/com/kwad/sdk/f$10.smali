.class final Lcom/kwad/sdk/f$10;
.super Lcom/kwad/sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;Lcom/kwad/sdk/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aFS:Lcom/kwad/sdk/e;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/f$10;->aFS:Lcom/kwad/sdk/e;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/f$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/f$a;->aFU:Lcom/kwad/sdk/api/KsInitCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/sdk/f$10;->aFS:Lcom/kwad/sdk/e;

    .line 4
    .line 5
    iget v2, v1, Lcom/kwad/sdk/e;->code:I

    .line 6
    .line 7
    iget-object v1, v1, Lcom/kwad/sdk/e;->msg:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v2, v1}, Lcom/kwad/sdk/api/KsInitCallback;->onFail(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
