.class public Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/DatagramProcessor;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/transport/spi/DatagramProcessor;

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
    sput-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public read(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v1, "===================================== DATAGRAM BEGIN ============================================"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "UTF-8"

    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 35
    .line 36
    const-string v1, "-===================================== DATAGRAM END ============================================="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    move-object p1, v0

    .line 44
    move-object v3, p2

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    :goto_0
    :try_start_2
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 54
    .line 55
    .line 56
    invoke-static {v4}, Lorg/seamless/http/Headers;->readLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, " "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v1, 0x0

    .line 67
    aget-object v2, v0, v1

    .line 68
    .line 69
    const-string v3, "HTTP/1."

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 75
    const/4 v3, 0x2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    :try_start_3
    aget-object v2, v0, v2

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    aget-object v6, v0, v3

    .line 90
    .line 91
    aget-object v7, v0, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 92
    .line 93
    move-object v1, p0

    .line 94
    move-object v2, p1

    .line 95
    move-object v3, p2

    .line 96
    :try_start_4
    invoke-virtual/range {v1 .. v7}, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->readResponseMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;ILjava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 97
    .line 98
    .line 99
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 100
    return-object p1

    .line 101
    :catch_1
    move-exception v0

    .line 102
    move-object p1, v3

    .line 103
    move-object p2, v0

    .line 104
    :goto_1
    move-object p1, p2

    .line 105
    goto :goto_3

    .line 106
    :catch_2
    move-exception v0

    .line 107
    move-object p1, p2

    .line 108
    move-object p2, v0

    .line 109
    move-object v3, p1

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move-object v2, p1

    .line 112
    move-object p1, p2

    .line 113
    :try_start_5
    aget-object v5, v0, v1

    .line 114
    .line 115
    aget-object v6, v0, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 116
    .line 117
    move-object v1, p0

    .line 118
    move-object v3, p1

    .line 119
    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->readRequestMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 120
    .line 121
    .line 122
    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 123
    return-object p1

    .line 124
    :catch_3
    move-exception v0

    .line 125
    :goto_2
    move-object p1, v0

    .line 126
    goto :goto_3

    .line 127
    :catch_4
    move-exception v0

    .line 128
    move-object v3, p1

    .line 129
    goto :goto_2

    .line 130
    :catch_5
    move-exception v0

    .line 131
    move-object v3, p2

    .line 132
    goto :goto_2

    .line 133
    :goto_3
    new-instance p2, Lorg/fourthline/cling/model/UnsupportedDataException;

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v1, "Could not parse headers: "

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-direct {p2, v0, p1, v1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    throw p2
.end method

.method public readRequestMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 4
    .line 5
    .line 6
    new-instance p3, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 7
    .line 8
    invoke-static {p4}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    invoke-direct {p3, p4}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;)V

    .line 13
    .line 14
    .line 15
    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 16
    .line 17
    invoke-virtual {p5, p4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    const-string p5, "HTTP/1.1"

    .line 22
    .line 23
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    invoke-virtual {p3, p4}, Lorg/fourthline/cling/model/message/UpnpOperation;->setHttpMinorVersion(I)V

    .line 28
    .line 29
    .line 30
    new-instance p4, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 33
    .line 34
    .line 35
    move-result-object p5

    .line 36
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-direct {p4, p3, p5, p2, p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, v0}, Lorg/fourthline/cling/model/message/UpnpMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    .line 44
    .line 45
    .line 46
    return-object p4
.end method

.method public readResponseMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;ILjava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 4
    .line 5
    .line 6
    new-instance p3, Lorg/fourthline/cling/model/message/UpnpResponse;

    .line 7
    .line 8
    invoke-direct {p3, p4, p5}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {p6, p4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    const-string p5, "HTTP/1.1"

    .line 18
    .line 19
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    invoke-virtual {p3, p4}, Lorg/fourthline/cling/model/message/UpnpOperation;->setHttpMinorVersion(I)V

    .line 24
    .line 25
    .line 26
    new-instance p4, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 29
    .line 30
    .line 31
    move-result-object p5

    .line 32
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-direct {p4, p3, p5, p2, p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4, v0}, Lorg/fourthline/cling/model/message/UpnpMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    .line 40
    .line 41
    .line 42
    return-object p4
.end method

.method public write(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)Ljava/net/DatagramPacket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v2, v1, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 11
    .line 12
    const-string v3, "HTTP/1."

    .line 13
    .line 14
    const-string v4, "\r\n"

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    check-cast v2, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 20
    .line 21
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " * "

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpOperation;->getHttpMinorVersion()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    instance-of v2, v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    move-object v2, v1

    .line 52
    check-cast v2, Lorg/fourthline/cling/model/message/UpnpResponse;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpOperation;->getHttpMinorVersion()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lorg/seamless/http/Headers;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 112
    .line 113
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v3, "Writing message data for: "

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 144
    .line 145
    const-string v2, "---------------------------------------------------------------------------------"

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    add-int/lit8 v4, v4, -0x2

    .line 161
    .line 162
    const/4 v5, 0x0

    .line 163
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v2, "US-ASCII"

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    sget-object v2, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    .line 186
    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v4, "Writing new datagram packet with "

    .line 193
    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    array-length v4, v0

    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v4, " bytes for: "

    .line 202
    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v2, Ljava/net/DatagramPacket;

    .line 217
    .line 218
    array-length v3, v0

    .line 219
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->getDestinationAddress()Ljava/net/InetAddress;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->getDestinationPort()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    invoke-direct {v2, v0, v3, v4, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .line 229
    .line 230
    return-object v2

    .line 231
    :catch_0
    move-exception p1

    .line 232
    new-instance v0, Lorg/fourthline/cling/model/UnsupportedDataException;

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v3, "Can\'t convert message content to US-ASCII: "

    .line 240
    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-direct {v0, v2, p1, v1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :cond_2
    new-instance v0, Lorg/fourthline/cling/model/UnsupportedDataException;

    .line 260
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v2, "Message operation is not request or response, don\'t know how to process: "

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v0
.end method
