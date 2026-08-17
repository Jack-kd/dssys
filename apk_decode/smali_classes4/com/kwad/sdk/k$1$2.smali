.class final Lcom/kwad/sdk/k$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/d/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/k$1;->a(Lcom/kwad/sdk/service/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aGg:Lcom/kwad/sdk/k$1;

.field final synthetic aGh:Lcom/kwad/sdk/service/a/g;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/k$1;Lcom/kwad/sdk/service/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/k$1$2;->aGg:Lcom/kwad/sdk/k$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/k$1$2;->aGh:Lcom/kwad/sdk/service/a/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCrashOccur(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/k$1$2;->aGh:Lcom/kwad/sdk/service/a/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/service/a/g;->p(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
