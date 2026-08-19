.class final Lcom/kwad/sdk/utils/bl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/utils/bk$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/utils/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bqs:Lcom/kwad/sdk/utils/bl;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/utils/bl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/utils/bl$4;->bqs:Lcom/kwad/sdk/utils/bl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/bl$4;->bqs:Lcom/kwad/sdk/utils/bl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/utils/bl;->e(Lcom/kwad/sdk/utils/bl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
