.class final Lcom/kwad/sdk/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/utils/au$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c;->g(Lcom/kwad/sdk/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aFI:Lcom/kwad/sdk/c;

.field final synthetic aFJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/c$2;->aFI:Lcom/kwad/sdk/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/c$2;->aFJ:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/download/b;->Lz()Lcom/kwad/sdk/core/download/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/c$2;->aFJ:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/kwad/sdk/core/download/b;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final qD()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/download/b;->Lz()Lcom/kwad/sdk/core/download/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/c$2;->aFJ:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/download/b;->eD(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
