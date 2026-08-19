.class final Lcom/kwad/sdk/core/videocache/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aZK:Ljava/io/File;

.field public final aZL:Lcom/kwad/sdk/core/videocache/a/c;

.field public final aZM:Lcom/kwad/sdk/core/videocache/a/a;

.field public final aZN:Lcom/kwad/sdk/core/videocache/d/c;

.field public final aZO:Lcom/kwad/sdk/core/videocache/b/b;

.field public final aZP:I

.field public final aZQ:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/kwad/sdk/core/videocache/a/c;Lcom/kwad/sdk/core/videocache/a/a;Lcom/kwad/sdk/core/videocache/d/c;Lcom/kwad/sdk/core/videocache/b/b;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/c;->aZK:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/c;->aZL:Lcom/kwad/sdk/core/videocache/a/c;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/kwad/sdk/core/videocache/c;->aZM:Lcom/kwad/sdk/core/videocache/a/a;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/kwad/sdk/core/videocache/c;->aZN:Lcom/kwad/sdk/core/videocache/d/c;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/kwad/sdk/core/videocache/c;->aZO:Lcom/kwad/sdk/core/videocache/b/b;

    .line 13
    .line 14
    iput p6, p0, Lcom/kwad/sdk/core/videocache/c;->aZP:I

    .line 15
    .line 16
    iput p7, p0, Lcom/kwad/sdk/core/videocache/c;->aZQ:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final fu(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/c;->aZL:Lcom/kwad/sdk/core/videocache/a/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/videocache/a/c;->generate(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/c;->aZK:Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
