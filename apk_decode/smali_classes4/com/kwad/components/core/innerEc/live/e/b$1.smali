.class final Lcom/kwad/components/core/innerEc/live/e/b$1;
.super Lcom/kwad/components/core/innerEc/live/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Xs:Lcom/kwad/components/core/innerEc/live/e/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/e/b$1;->Xs:Lcom/kwad/components/core/innerEc/live/e/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/e/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServerException(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/LiveLongConnectionServerException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onServerException errorCode: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorCode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " ,subCode:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->subCode:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " ,errorMessage:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorMessage:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "LiveLongConnectHelper"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/e/b$1;->Xs:Lcom/kwad/components/core/innerEc/live/e/b;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/e/b;->a(Lcom/kwad/components/core/innerEc/live/e/b;)Lcom/kwad/components/core/innerEc/live/e/c;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Lcom/kwad/components/core/innerEc/live/e/c;->rP()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget v0, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorCode:I

    .line 56
    .line 57
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/e/a;->ba(I)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    iget v0, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorCode:I

    .line 64
    .line 65
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/e/a;->bb(I)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "onServerException"

    .line 73
    .line 74
    invoke-static {v1, v0, p1}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/e/b$1;->Xs:Lcom/kwad/components/core/innerEc/live/e/b;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/e/b;->a(Lcom/kwad/components/core/innerEc/live/e/b;Z)Z

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/e/b$1;->Xs:Lcom/kwad/components/core/innerEc/live/e/b;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/e/b;->a(Lcom/kwad/components/core/innerEc/live/e/b;)Lcom/kwad/components/core/innerEc/live/e/c;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0, p1}, Lcom/kwad/components/core/innerEc/live/e/c;->a(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
