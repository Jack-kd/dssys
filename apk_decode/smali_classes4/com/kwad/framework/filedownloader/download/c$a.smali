.class public final Lcom/kwad/framework/filedownloader/download/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/download/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private aBI:Ljava/lang/Boolean;

.field private aBL:Lcom/kwad/framework/filedownloader/download/f;

.field private final aBO:Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

.field private aBP:Ljava/lang/Integer;

.field private apn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBO:Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final Cr()Lcom/kwad/framework/filedownloader/download/c;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->apn:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBI:Ljava/lang/Boolean;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBP:Ljava/lang/Integer;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBO:Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->BZ()Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    new-instance v1, Lcom/kwad/framework/filedownloader/download/c;

    .line 24
    .line 25
    iget v2, v4, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAO:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBP:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v5, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBI:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    iget-object v7, p0, Lcom/kwad/framework/filedownloader/download/c$a;->apn:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    invoke-direct/range {v1 .. v8}, Lcom/kwad/framework/filedownloader/download/c;-><init>(IILcom/kwad/framework/filedownloader/download/ConnectTask;Lcom/kwad/framework/filedownloader/download/f;ZLjava/lang/String;B)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/c$a;->apn:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBI:Ljava/lang/Boolean;

    .line 55
    .line 56
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "%s %s %B"

    .line 61
    .line 62
    invoke-static {v2, v1}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public final a(Lcom/kwad/framework/filedownloader/download/f;)Lcom/kwad/framework/filedownloader/download/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Lcom/kwad/framework/filedownloader/download/a;)Lcom/kwad/framework/filedownloader/download/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBO:Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->a(Lcom/kwad/framework/filedownloader/download/a;)Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final bv(Z)Lcom/kwad/framework/filedownloader/download/c$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBI:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public final c(Lcom/kwad/framework/filedownloader/d/b;)Lcom/kwad/framework/filedownloader/download/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBO:Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->a(Lcom/kwad/framework/filedownloader/d/b;)Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final cL(I)Lcom/kwad/framework/filedownloader/download/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBO:Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->cK(I)Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final cb(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBO:Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->bY(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final cc(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBO:Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->bZ(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final cd(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/c$a;->apn:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(Ljava/lang/Integer;)Lcom/kwad/framework/filedownloader/download/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/c$a;->aBP:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method
