.class final Lcom/kwad/sdk/o$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/o;->Gt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aGI:Lcom/kwad/sdk/o;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/o$5;->aGI:Lcom/kwad/sdk/o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/o$5;->aGI:Lcom/kwad/sdk/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
