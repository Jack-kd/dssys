.class public Lorg/fourthline/cling/protocol/async/SendingSearch;
.super Lorg/fourthline/cling/protocol/SendingAsync;
.source "SourceFile"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final mxSeconds:I

.field private final searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/protocol/async/SendingSearch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/fourthline/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/message/header/STAllHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/STAllHeader;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/async/SendingSearch;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/protocol/async/SendingSearch;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/fourthline/cling/protocol/SendingAsync;-><init>(Lorg/fourthline/cling/UpnpService;)V

    .line 4
    sget-object p1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->isValidHeaderType(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iput-object p2, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 6
    iput p3, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->mxSeconds:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Given search target instance is not a valid header class for type ST: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/fourthline/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Executing search for target: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 14
    .line 15
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " with MX seconds: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getMxSeconds()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    new-instance v0, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;

    .line 42
    .line 43
    iget-object v1, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getMxSeconds()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;-><init>(Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->prepareOutgoingSearchRequest(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;)V

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getBulkRepeat()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-ge v1, v2, :cond_0

    .line 61
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2, v0}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    .line 71
    .line 72
    .line 73
    sget-object v2, Lorg/fourthline/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v4, "Sleeping "

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getBulkIntervalMilliseconds()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, " milliseconds"

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getBulkIntervalMilliseconds()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    int-to-long v2, v2

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    :cond_0
    return-void
.end method

.method public getBulkIntervalMilliseconds()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public getBulkRepeat()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getMxSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->mxSeconds:I

    .line 2
    .line 3
    return v0
.end method

.method public getSearchTarget()Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 2
    .line 3
    return-object v0
.end method

.method public prepareOutgoingSearchRequest(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;)V
    .locals 0

    return-void
.end method
