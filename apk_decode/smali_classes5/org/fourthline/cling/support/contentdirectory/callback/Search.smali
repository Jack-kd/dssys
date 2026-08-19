.class public abstract Lorg/fourthline/cling/support/contentdirectory/callback/Search;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;
    }
.end annotation


# static fields
.field public static final CAPS_WILDCARD:Ljava/lang/String; = "*"

.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search;

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
    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    new-array v9, v0, [Lorg/fourthline/cling/support/model/SortCriterion;

    const-string v5, "*"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;-><init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;[Lorg/fourthline/cling/support/model/SortCriterion;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;[Lorg/fourthline/cling/support/model/SortCriterion;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "Search"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 3
    sget-object p1, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating browse action for container ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string v0, "ContainerID"

    invoke-virtual {p1, v0, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "SearchCriteria"

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "Filter"

    invoke-virtual {p1, p2, p4}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    new-instance p2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {p2, p5, p6}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    const-string p3, "StartingIndex"

    invoke-virtual {p1, p3, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    new-instance p2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    if-nez p7, :cond_0

    .line 9
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->getDefaultMaxResults()Ljava/lang/Long;

    move-result-object p7

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 10
    const-string p3, "RequestedCount"

    invoke-virtual {p1, p3, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "SortCriteria"

    invoke-static {p8}, Lorg/fourthline/cling/support/model/SortCriterion;->toString([Lorg/fourthline/cling/support/model/SortCriterion;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDefaultMaxResults()Ljava/lang/Long;
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e7

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public abstract received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V
.end method

.method public receivedRaw(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/SearchResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public run()V
    .locals 1

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->LOADING:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->run()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    const-string v1, "Successful search action, reading output argument values"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/fourthline/cling/support/model/SearchResult;

    .line 9
    .line 10
    const-string v1, "Result"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "NumberReturned"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 35
    .line 36
    const-string v3, "TotalMatches"

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 47
    .line 48
    const-string v4, "UpdateID"

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Lorg/fourthline/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 59
    .line 60
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/SearchResult;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->receivedRaw(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/SearchResult;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/SearchResult;->getCountLong()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    const-wide/16 v3, 0x0

    .line 74
    .line 75
    cmp-long v1, v1, v3

    .line 76
    .line 77
    if-lez v1, :cond_0

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/SearchResult;->getResult()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-lez v1, :cond_0

    .line 88
    .line 89
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 90
    .line 91
    invoke-direct {v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/SearchResult;->getResult()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLContent;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->OK:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    .line 113
    .line 114
    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 115
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v4, "Can\'t parse DIDL XML response: "

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-direct {v1, v2, v3, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    .line 137
    .line 138
    .line 139
    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_0
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLContent;

    .line 145
    .line 146
    invoke-direct {v0}, Lorg/fourthline/cling/support/model/DIDLContent;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V

    .line 150
    .line 151
    .line 152
    sget-object p1, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->NO_CONTENT:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/contentdirectory/callback/Search;->updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public abstract updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;)V
.end method
