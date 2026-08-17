.class final Lcom/kwad/components/ad/splashscreen/presenter/t$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/splashscreen/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/t;->f(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Jr:Lcom/kwad/components/ad/splashscreen/presenter/t;

.field final synthetic jz:D


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/t;D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/t$7;->Jr:Lcom/kwad/components/ad/splashscreen/presenter/t;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/kwad/components/ad/splashscreen/presenter/t$7;->jz:D

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lcom/kwad/sdk/core/adlog/c/b;)V
    .locals 2
    .param p1    # Lcom/kwad/sdk/core/adlog/c/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/t$7;->jz:D

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->j(D)Lcom/kwad/sdk/core/adlog/c/b;

    .line 4
    .line 5
    .line 6
    return-void
.end method
