.class public Lcom/octopus/ad/model/UserProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/model/UserProfile$Builder;
    }
.end annotation


# instance fields
.field public final age:Ljava/lang/String;

.field public final consumptionAbility:Ljava/lang/String;

.field public final gender:Ljava/lang/String;

.field public final interestTag:Ljava/lang/String;

.field public final maritalStatus:Ljava/lang/String;

.field public final occupation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/model/UserProfile$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/octopus/ad/model/UserProfile$Builder;->age:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile;->age:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/octopus/ad/model/UserProfile$Builder;->gender:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile;->gender:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/octopus/ad/model/UserProfile$Builder;->occupation:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile;->occupation:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/octopus/ad/model/UserProfile$Builder;->consumptionAbility:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile;->consumptionAbility:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/octopus/ad/model/UserProfile$Builder;->maritalStatus:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/octopus/ad/model/UserProfile;->maritalStatus:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/octopus/ad/model/UserProfile$Builder;->interestTag:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/octopus/ad/model/UserProfile;->interestTag:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "age"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/octopus/ad/model/UserProfile;->age:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "gender"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/octopus/ad/model/UserProfile;->gender:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "occupation"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/octopus/ad/model/UserProfile;->occupation:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "consumptionAbility"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/octopus/ad/model/UserProfile;->consumptionAbility:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "maritalStatus"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/octopus/ad/model/UserProfile;->maritalStatus:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "interestTag"

    .line 42
    .line 43
    iget-object v2, p0, Lcom/octopus/ad/model/UserProfile;->interestTag:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "OctopusAd"

    .line 51
    .line 52
    const-string v2, "An Exception Caught"

    .line 53
    .line 54
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    return-object v0
.end method
