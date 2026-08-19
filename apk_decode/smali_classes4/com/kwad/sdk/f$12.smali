.class final Lcom/kwad/sdk/f$12;
.super Lcom/kwad/sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/f;->c(Lcom/kwad/sdk/api/SdkConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/f$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/f$a;->aFU:Lcom/kwad/sdk/api/KsInitCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsInitCallback;->onSuccess()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
