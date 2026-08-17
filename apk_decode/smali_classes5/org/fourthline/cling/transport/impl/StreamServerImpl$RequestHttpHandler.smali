.class public Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/net/httpserver/HttpHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/transport/impl/StreamServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestHttpHandler"
.end annotation


# instance fields
.field private final router:Lorg/fourthline/cling/transport/Router;

.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl;Lorg/fourthline/cling/transport/Router;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/fourthline/cling/transport/Router;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handle(Lcom/sun/net/httpserver/HttpExchange;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->access$000()Ljava/util/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Received HTTP exchange: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/sun/net/httpserver/HttpExchange;->getRequestURI()Ljava/net/URI;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/fourthline/cling/transport/Router;

    .line 42
    .line 43
    new-instance v1, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler$1;

    .line 44
    .line 45
    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/fourthline/cling/transport/Router;

    .line 46
    .line 47
    invoke-interface {v2}, Lorg/fourthline/cling/transport/Router;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v1, p0, v2, p1, p1}, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler$1;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;Lorg/fourthline/cling/protocol/ProtocolFactory;Lcom/sun/net/httpserver/HttpExchange;Lcom/sun/net/httpserver/HttpExchange;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/Router;->received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
