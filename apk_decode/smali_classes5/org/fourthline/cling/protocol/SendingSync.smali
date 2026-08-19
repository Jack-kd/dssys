.class public abstract Lorg/fourthline/cling/protocol/SendingSync;
.super Lorg/fourthline/cling/protocol/SendingAsync;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
        "OUT:",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">",
        "Lorg/fourthline/cling/protocol/SendingAsync;"
    }
.end annotation


# instance fields
.field private final inputMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIN;"
        }
    .end annotation
.end field

.field protected outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOUT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/UpnpService;",
            "TIN;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/fourthline/cling/protocol/SendingAsync;-><init>(Lorg/fourthline/cling/UpnpService;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/fourthline/cling/protocol/SendingSync;->inputMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingSync;->executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/fourthline/cling/protocol/SendingSync;->outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    .line 6
    .line 7
    return-void
.end method

.method public abstract executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation
.end method

.method public getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIN;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/protocol/SendingSync;->inputMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutputMessage()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/protocol/SendingSync;->outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ")"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
