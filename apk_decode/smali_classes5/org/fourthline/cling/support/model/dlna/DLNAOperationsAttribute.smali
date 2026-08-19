.class public Lorg/fourthline/cling/support/model/dlna/DLNAOperationsAttribute;
.super Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute<",
        "Ljava/util/EnumSet<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAOperations;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 2
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/fourthline/cling/support/model/dlna/DLNAOperations;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    if-eqz p1, :cond_1

    .line 4
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object v1, p1, v0

    .line 6
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 7
    array-length v2, p1

    sub-int/2addr v2, v3

    invoke-static {p1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-static {v1, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->setValue(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_0
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/EnumSet;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    .line 28
    .line 29
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->getCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    or-int/2addr v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "%02x"

    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;
        }
    .end annotation

    .line 1
    const-class p2, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/16 v0, 0x10

    .line 8
    .line 9
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    aget-object v4, v1, v3

    .line 22
    .line 23
    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->getCode()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    and-int/2addr v5, v0

    .line 28
    sget-object v6, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    .line 29
    .line 30
    if-eq v4, v6, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->getCode()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-ne v6, v5, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    :cond_1
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->setValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    new-instance p2, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "Can\'t parse DLNA operations integer from: "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p2
.end method
