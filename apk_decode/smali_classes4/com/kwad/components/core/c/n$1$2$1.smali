.class final Lcom/kwad/components/core/c/n$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/c/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/c/n$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic PP:Lcom/kwad/components/core/c/n$1$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/c/n$1$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/c/n$1$2$1;->PP:Lcom/kwad/components/core/c/n$1$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final pd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/c/n$1$2$1;->PP:Lcom/kwad/components/core/c/n$1$2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/core/c/n$1$2;->PM:Lcom/kwad/components/core/c/n$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/kwad/components/core/c/n$1;->bJ:Lcom/kwad/components/core/request/model/a;

    .line 6
    .line 7
    iget v2, v0, Lcom/kwad/components/core/c/n$1$2;->wd:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kwad/components/core/c/n$1$2;->wc:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v1, v2, v0, v3}, Lcom/kwad/components/core/request/model/a;->a(Lcom/kwad/components/core/request/model/a;ILjava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
