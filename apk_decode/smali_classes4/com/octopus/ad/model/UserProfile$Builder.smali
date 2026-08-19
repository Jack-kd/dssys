.class public Lcom/octopus/ad/model/UserProfile$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/model/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public age:Ljava/lang/String;

.field public consumptionAbility:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public interestTag:Ljava/lang/String;

.field public maritalStatus:Ljava/lang/String;

.field public occupation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile$Builder;->age:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile$Builder;->gender:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile$Builder;->occupation:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile$Builder;->consumptionAbility:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile$Builder;->maritalStatus:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile$Builder;->interestTag:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public age(Ljava/lang/String;)Lcom/octopus/ad/model/UserProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/model/UserProfile$Builder;->age:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/octopus/ad/model/UserProfile;
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/model/UserProfile;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/octopus/ad/model/UserProfile;-><init>(Lcom/octopus/ad/model/UserProfile$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public consumptionAbility(Ljava/lang/String;)Lcom/octopus/ad/model/UserProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/model/UserProfile$Builder;->consumptionAbility:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public gender(Ljava/lang/String;)Lcom/octopus/ad/model/UserProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/model/UserProfile$Builder;->gender:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public interestTag(Ljava/lang/String;)Lcom/octopus/ad/model/UserProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/model/UserProfile$Builder;->interestTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public maritalStatus(Ljava/lang/String;)Lcom/octopus/ad/model/UserProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/model/UserProfile$Builder;->maritalStatus:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public occupation(Ljava/lang/String;)Lcom/octopus/ad/model/UserProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/model/UserProfile$Builder;->occupation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
