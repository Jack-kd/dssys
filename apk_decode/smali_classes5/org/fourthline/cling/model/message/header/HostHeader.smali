.class public Lorg/fourthline/cling/model/message/header/HostHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader<",
        "Lorg/fourthline/cling/model/types/HostPort;",
        ">;"
    }
.end annotation


# instance fields
.field group:Ljava/lang/String;

.field port:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    const/16 v0, 0x76c

    .line 2
    iput v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    .line 3
    const-string v1, "239.255.255.250"

    iput-object v1, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 4
    new-instance v2, Lorg/fourthline/cling/model/types/HostPort;

    invoke-direct {v2, v1, v0}, Lorg/fourthline/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    const/16 v0, 0x76c

    .line 6
    iput v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    .line 7
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 8
    new-instance v1, Lorg/fourthline/cling/model/types/HostPort;

    invoke-direct {v1, v0, p1}, Lorg/fourthline/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    const/16 v0, 0x76c

    .line 10
    iput v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    .line 11
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 12
    new-instance v0, Lorg/fourthline/cling/model/types/HostPort;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/fourthline/cling/model/types/HostPort;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/HostPort;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v1, Lorg/fourthline/cling/model/types/HostPort;

    .line 41
    .line 42
    iget v2, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    .line 43
    .line 44
    invoke-direct {v1, v0, v2}, Lorg/fourthline/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "Invalid HOST header value, can\'t parse port: "

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " - "

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {v1, p1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 88
    .line 89
    new-instance v0, Lorg/fourthline/cling/model/types/HostPort;

    .line 90
    .line 91
    iget v1, p0, Lorg/fourthline/cling/model/message/header/HostHeader;->port:I

    .line 92
    .line 93
    invoke-direct {v0, p1, v1}, Lorg/fourthline/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->setValue(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
