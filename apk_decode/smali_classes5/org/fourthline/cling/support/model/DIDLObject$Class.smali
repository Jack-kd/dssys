.class public Lorg/fourthline/cling/support/model/DIDLObject$Class;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/DIDLObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Class"
.end annotation


# instance fields
.field protected friendlyName:Ljava/lang/String;

.field protected includeDerived:Z

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    .line 10
    iput-boolean p3, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->includeDerived:Z

    return-void
.end method


# virtual methods
.method public equals(Lorg/fourthline/cling/support/model/DIDLObject;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isIncludeDerived()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->includeDerived:Z

    .line 2
    .line 3
    return v0
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIncludeDerived(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->includeDerived:Z

    .line 2
    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
