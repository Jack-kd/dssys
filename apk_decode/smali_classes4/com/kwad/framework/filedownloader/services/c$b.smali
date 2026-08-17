.class public final Lcom/kwad/framework/filedownloader/services/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/services/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field aCW:Lcom/kwad/framework/filedownloader/f/c$c;

.field aCX:Ljava/lang/Integer;

.field aCY:Lcom/kwad/framework/filedownloader/f/c$e;

.field aCZ:Lcom/kwad/framework/filedownloader/f/c$b;

.field aDa:Lcom/kwad/framework/filedownloader/services/c$a;

.field aDb:Lcom/kwad/framework/filedownloader/f/c$a;

.field aDc:Lcom/kwad/framework/filedownloader/f/c$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/framework/filedownloader/f/c$b;)Lcom/kwad/framework/filedownloader/services/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCZ:Lcom/kwad/framework/filedownloader/f/c$b;

    return-object p0
.end method

.method public final a(Lcom/kwad/framework/filedownloader/services/c$a;)Lcom/kwad/framework/filedownloader/services/c$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aDa:Lcom/kwad/framework/filedownloader/services/c$a;

    return-object p0
.end method

.method public final cZ(I)Lcom/kwad/framework/filedownloader/services/c$b;
    .locals 0

    .line 1
    const p1, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCX:Ljava/lang/Integer;

    .line 9
    .line 10
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCW:Lcom/kwad/framework/filedownloader/f/c$c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCX:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCY:Lcom/kwad/framework/filedownloader/f/c$e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCZ:Lcom/kwad/framework/filedownloader/f/c$b;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aDb:Lcom/kwad/framework/filedownloader/f/c$a;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "component: database[%s], maxNetworkCount[%s], outputStream[%s], connection[%s], connectionCountAdapter[%s]"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
