.class final Lcom/kwad/components/core/innerEc/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/f;->a(Ljava/lang/String;Lcom/kwad/components/core/innerEc/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Tf:Lcom/kwad/components/core/innerEc/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/f$3;->Tf:Lcom/kwad/components/core/innerEc/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/e;->b(Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/f$3;->Tf:Lcom/kwad/components/core/innerEc/c;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/kwad/components/core/innerEc/c;->a(Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final rc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/f$3;->Tf:Lcom/kwad/components/core/innerEc/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/components/core/innerEc/c;->rc()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
