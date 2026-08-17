.class public final synthetic Lcom/sigmob/sdk/mraid2/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/mraid2/r;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lcom/sigmob/sdk/mraid2/c;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid2/r;ZIILcom/sigmob/sdk/mraid2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/O;->b:Lcom/sigmob/sdk/mraid2/r;

    iput-boolean p2, p0, Lcom/sigmob/sdk/mraid2/O;->c:Z

    iput p3, p0, Lcom/sigmob/sdk/mraid2/O;->d:I

    iput p4, p0, Lcom/sigmob/sdk/mraid2/O;->e:I

    iput-object p5, p0, Lcom/sigmob/sdk/mraid2/O;->f:Lcom/sigmob/sdk/mraid2/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/O;->b:Lcom/sigmob/sdk/mraid2/r;

    iget-boolean v1, p0, Lcom/sigmob/sdk/mraid2/O;->c:Z

    iget v2, p0, Lcom/sigmob/sdk/mraid2/O;->d:I

    iget v3, p0, Lcom/sigmob/sdk/mraid2/O;->e:I

    iget-object v4, p0, Lcom/sigmob/sdk/mraid2/O;->f:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/mraid2/r;->b(Lcom/sigmob/sdk/mraid2/r;ZIILcom/sigmob/sdk/mraid2/c;)V

    return-void
.end method
