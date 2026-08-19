.class final Lcom/kwad/components/core/s/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/n/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/s/b/b;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ale:Lcom/kwad/components/core/s/b/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/s/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/s/b/b$1;->ale:Lcom/kwad/components/core/s/b/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcom/kwad/components/core/proxy/f;)V
    .locals 0

    return-void
.end method

.method public final d(Lcom/kwad/components/core/proxy/f;)V
    .locals 0

    return-void
.end method

.method public final hk()V
    .locals 0

    return-void
.end method

.method public final hl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/s/b/b$1;->ale:Lcom/kwad/components/core/s/b/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/s/b/b;->a(Lcom/kwad/components/core/s/b/b;)Lcom/kwad/components/core/s/a/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/kwad/components/core/s/a/b;->akQ:Lcom/kwad/sdk/components/n;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/s/b/b$1;->ale:Lcom/kwad/components/core/s/b/b;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/components/core/s/b/b;->a(Lcom/kwad/components/core/s/b/b;)Lcom/kwad/components/core/s/a/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/kwad/components/core/s/a/b;->akQ:Lcom/kwad/sdk/components/n;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/kwad/sdk/components/n;->callbackDismiss()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
