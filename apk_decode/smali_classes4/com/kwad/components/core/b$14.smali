.class final Lcom/kwad/components/core/b$14;
.super Lcom/kwad/sdk/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic OE:Lcom/kwad/components/core/b;

.field final synthetic bA:Lcom/kwad/sdk/g/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/b$14;->OE:Lcom/kwad/components/core/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/b$14;->bA:Lcom/kwad/sdk/g/a;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/n;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/b$14;->bA:Lcom/kwad/sdk/g/a;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/kwad/sdk/g/a;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/kwad/sdk/n;->Gr()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/b$14;->bA:Lcom/kwad/sdk/g/a;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/kwad/sdk/g/a;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/kwad/sdk/n;->Gr()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
