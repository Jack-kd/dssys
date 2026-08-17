.class public abstract Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceId;
        value = "ContentDirectory"
    .end subannotation
    serviceType = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceType;
        value = "ContentDirectory"
        version = 0x1
    .end subannotation
.end annotation

.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_ObjectID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_Result"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/BrowseFlag;
            datatype = "string"
            name = "A_ARG_TYPE_BrowseFlag"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_Filter"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_SortCriteria"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            name = "A_ARG_TYPE_Index"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            name = "A_ARG_TYPE_Count"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            name = "A_ARG_TYPE_UpdateID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "uri"
            name = "A_ARG_TYPE_URI"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_SearchCriteria"
            sendEvents = false
        .end subannotation
    }
.end annotation


# static fields
.field public static final CAPS_WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field protected final propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private final searchCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fourthline/cling/model/types/csv/CSV<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
        sendEvents = false
    .end annotation
.end field

.field private final sortCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fourthline/cling/model/types/csv/CSV<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
        sendEvents = false
    .end annotation
.end field

.field private systemUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
        defaultValue = "0"
        eventMaximumRateMilliseconds = 0xc8
        sendEvents = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;-><init>(Ljava/util/List;Ljava/util/List;Ljava/beans/PropertyChangeSupport;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;-><init>(Ljava/util/List;Ljava/util/List;Ljava/beans/PropertyChangeSupport;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/beans/PropertyChangeSupport;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/beans/PropertyChangeSupport;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->systemUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Ljava/beans/PropertyChangeSupport;

    invoke-direct {p3, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object p3, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 6
    new-instance p3, Lorg/fourthline/cling/model/types/csv/CSVString;

    invoke-direct {p3}, Lorg/fourthline/cling/model/types/csv/CSVString;-><init>()V

    iput-object p3, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->searchCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;

    .line 7
    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 8
    new-instance p1, Lorg/fourthline/cling/model/types/csv/CSVString;

    invoke-direct {p1}, Lorg/fourthline/cling/model/types/csv/CSVString;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->sortCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public browse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Lorg/fourthline/cling/support/model/BrowseResult;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            aliases = {
                "ContainerID"
            }
            name = "ObjectID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "BrowseFlag"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Filter"
        .end annotation
    .end param
    .param p4    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "StartingIndex"
            stateVariable = "A_ARG_TYPE_Index"
        .end annotation
    .end param
    .param p5    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "RequestedCount"
            stateVariable = "A_ARG_TYPE_Count"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "SortCriteria"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getResult"
                name = "Result"
                stateVariable = "A_ARG_TYPE_Result"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCount"
                name = "NumberReturned"
                stateVariable = "A_ARG_TYPE_Count"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTotalMatches"
                name = "TotalMatches"
                stateVariable = "A_ARG_TYPE_Count"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getContainerUpdateID"
                name = "UpdateID"
                stateVariable = "A_ARG_TYPE_UpdateID"
            .end subannotation
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static/range {p6 .. p6}, Lorg/fourthline/cling/support/model/SortCriterion;->valueOf(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/SortCriterion;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    invoke-static {p2}, Lorg/fourthline/cling/support/model/BrowseFlag;->valueOrNullOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/BrowseFlag;

    move-result-object v3

    .line 3
    invoke-virtual {p4}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p5}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 4
    invoke-virtual/range {v1 .. v9}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->browse(Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JJ[Lorg/fourthline/cling/support/model/SortCriterion;)Lorg/fourthline/cling/support/model/BrowseResult;

    move-result-object p1
    :try_end_1
    .catch Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 5
    :goto_0
    new-instance p2, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object p3, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p2

    .line 6
    :goto_1
    throw p1

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 7
    new-instance p2, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object p3, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->UNSUPPORTED_SORT_CRITERIA:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;Ljava/lang/String;)V

    throw p2
.end method

.method public abstract browse(Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JJ[Lorg/fourthline/cling/support/model/SortCriterion;)Lorg/fourthline/cling/support/model/BrowseResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;
        }
    .end annotation
.end method

.method public declared-synchronized changeSystemUpdateID()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->getSystemUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->systemUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->increment(Z)Lorg/fourthline/cling/model/types/UnsignedVariableInteger;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "SystemUpdateID"

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->getSystemUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v2, v0, v3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v0
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSearchCapabilities()Lorg/fourthline/cling/model/types/csv/CSV;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/types/csv/CSV<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "SearchCaps"
            .end subannotation
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->searchCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSortCapabilities()Lorg/fourthline/cling/model/types/csv/CSV;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/types/csv/CSV<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "SortCaps"
            .end subannotation
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->sortCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized getSystemUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "Id"
            .end subannotation
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->systemUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ[Lorg/fourthline/cling/support/model/SortCriterion;)Lorg/fourthline/cling/support/model/BrowseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;
        }
    .end annotation

    .line 7
    :try_start_0
    new-instance p1, Lorg/fourthline/cling/support/model/BrowseResult;

    new-instance p2, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-direct {p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;-><init>()V

    new-instance p3, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-direct {p3}, Lorg/fourthline/cling/support/model/DIDLContent;-><init>()V

    invoke-virtual {p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generate(Lorg/fourthline/cling/support/model/DIDLContent;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 p3, 0x0

    const-wide/16 p5, 0x0

    invoke-direct/range {p1 .. p6}, Lorg/fourthline/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 8
    new-instance p2, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object p3, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p2
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Lorg/fourthline/cling/support/model/BrowseResult;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "ContainerID"
            stateVariable = "A_ARG_TYPE_ObjectID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "SearchCriteria"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Filter"
        .end annotation
    .end param
    .param p4    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "StartingIndex"
            stateVariable = "A_ARG_TYPE_Index"
        .end annotation
    .end param
    .param p5    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "RequestedCount"
            stateVariable = "A_ARG_TYPE_Count"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "SortCriteria"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getResult"
                name = "Result"
                stateVariable = "A_ARG_TYPE_Result"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCount"
                name = "NumberReturned"
                stateVariable = "A_ARG_TYPE_Count"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTotalMatches"
                name = "TotalMatches"
                stateVariable = "A_ARG_TYPE_Count"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getContainerUpdateID"
                name = "UpdateID"
                stateVariable = "A_ARG_TYPE_UpdateID"
            .end subannotation
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static/range {p6 .. p6}, Lorg/fourthline/cling/support/model/SortCriterion;->valueOf(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/SortCriterion;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    invoke-virtual {p4}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p5}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 3
    invoke-virtual/range {v1 .. v9}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ[Lorg/fourthline/cling/support/model/SortCriterion;)Lorg/fourthline/cling/support/model/BrowseResult;

    move-result-object p1
    :try_end_1
    .catch Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 4
    :goto_0
    new-instance p2, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object p3, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p2

    .line 5
    :goto_1
    throw p1

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 6
    new-instance p2, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object p3, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->UNSUPPORTED_SORT_CRITERIA:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;Ljava/lang/String;)V

    throw p2
.end method
